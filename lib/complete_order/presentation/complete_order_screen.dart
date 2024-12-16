import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:torri_cantine_app/account/account/account_bloc.dart';
import 'package:torri_cantine_app/account/model/response/add_address_response.dart';
import 'package:torri_cantine_app/app/cache_manager/cache_manager.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/bottom_bar.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/floating_action_button.dart';
import 'package:torri_cantine_app/app/common/primary_button.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/app/utilitys/fixedFloatingPositions.dart';
import 'package:torri_cantine_app/app/utilitys/html_tools.dart';
import 'package:torri_cantine_app/cart/cart/cart_bloc.dart';
import 'package:torri_cantine_app/cart/cubit/cart_badge_cubit_cubit.dart';
import 'package:torri_cantine_app/cart/model/request/payment_gateway.dart';
import 'package:torri_cantine_app/cart/model/request/shipping.dart';
import 'package:torri_cantine_app/cart/model/response/cart_response.dart';
import 'package:torri_cantine_app/complete_order/stripe_manager/stripe_payment_manager.dart';
import 'package:torri_cantine_app/coupon/coupon/coupon_bloc.dart';
import 'package:torri_cantine_app/my_orders/model/request/my_orders_request.dart';
import 'package:torri_cantine_app/my_orders/model/response/my_orders_response.dart';
import 'package:torri_cantine_app/my_orders/my_orders/my_orders_bloc.dart';
import 'package:torri_cantine_app/points_balance_screen/bloc/points_bloc.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io' show Platform;

class CompleteOrderScreen extends StatefulWidget {
  final int totPoint;
  final String cartSubTotal;

  CompleteOrderScreen({super.key, required this.totPoint, required this.cartSubTotal});

  @override
  State<CompleteOrderScreen> createState() => _CompleteOrderScreenState();
}

class _CompleteOrderScreenState extends State<CompleteOrderScreen> {
  Divider customDiv = const Divider(color: Color.fromARGB(255, 191, 190, 190), height: 15, thickness: 1);
  LocalStorage storage = LocalStorage();
  TextEditingController numCardController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController cvcController = TextEditingController();
  TextEditingController codFiscController = TextEditingController();
  TextEditingController pecController = TextEditingController();
  TextEditingController note = TextEditingController();
  TextEditingController couponController = TextEditingController();
  bool giftIsChecked = false;
  bool fatturaIsChecked = false;
  bool promoIsChecked = false;
  int? gruppoval = 0;
  int? gruppoval2 = 0;
  String paymentMethodSelected = "";
  List<ShippingMethod> shippingMethods = [];
  late Future<List<ShippingMethod?>> shippingMethodsFuture;
  late Future<List<PaymentGateway?>> paymentGatewayFuture;
  String shippingPrice = 'GRATIS';
  double shippingPriceValue = 0.0;
  double cartSummedPrice = 0.0;
  String shippingPostocde = '';
  bool firstLoad = true;
  bool payDefaultDefined = false;
  bool defaultDefined = false;
  bool isCouponLoading = false;
  String? appliedCouponCode;
  int couponTotalInt = 0;
  double couponTotalValue = 0.0;
  String couponTotal = '0.0';
  int? selectedBillingIndex;
  int? selectedShippingIndex;
  UserAddress? selectedBillingAddress;
  UserAddress? selectedShippingAddress;
  int customerId = 0;
  String? taxedTotalItems;
  double taxedTotalItemsValue = 0;
  double? cartTotalValue;
  List<dynamic> filteredItems = [];
  double moneyDiscount = 0;
  bool isCartNullOrRefreshed = true;
  bool isFirsCouponLoad = true;
  final GlobalKey<ScaffoldState> newKey = GlobalKey();
  int selectedIndex = 0;
  double appliedCoupon = 0.0;
  bool isEnabled = false;
  int? amountCart;
  bool startedOrder = false;
  List<Coupon?>? coupons;
  String subPrice = "";
  bool couponDeleted = false;

  @override
  void initState() {
    context.read<CartBloc>().add(const CartEvent.fetch());
    context.read<CouponBloc>().add(const CouponEvent.reset());
    context.read<AccountBloc>().add(const AccountEvent.fetchAddress());
    subPrice = widget.cartSubTotal;
    getPayGateway();
    super.initState();
  }

  Future<void> initCart(CartResponse cart) async {
    moneyDiscount = await context.read<PointsBloc>().getMoneyDiscountAvaible() ?? 0;
    customerId = await storage.getCustomerId();

    setState(() {
      filteredItems.clear();
      final totalItems = int.tryParse(cart.totals.totalItems ?? "0") ?? 0;
      final totalTax = int.tryParse(cart.totals.totalItemsTax ?? "0") ?? 0;
      var taxedTotal = totalItems + totalTax;

      if (moneyDiscount >= 5.0 && taxedTotal >= 5000) {
        taxedTotal -= 500;
      }

      if (couponDeleted) {
        subPrice = (taxedTotal / 100)
            .toStringAsFixed(2)
            .replaceAll('.', ',');
        couponDeleted = false;
      }

      final totalDiscount = int.tryParse(cart.totals.totalDiscount ?? "0") ?? 0;
      final totalDiscountTax =
          int.tryParse(cart.totals.totalDiscountTax ?? "0") ?? 0;
      taxedTotal -= (totalDiscount + totalDiscountTax);

      if (taxedTotal > 0) {
        taxedTotalItems =
        "${(taxedTotal ~/ 100)},${(taxedTotal % 100).toString().padLeft(2, '0')}";
        taxedTotalItemsValue = taxedTotal / 100.0;
      } else {
        taxedTotalItems = "0,00";
        taxedTotalItemsValue = 0.0;
      }

      cartTotalValue = taxedTotalItemsValue;

      if (cart.coupons != null && cart.coupons!.isNotEmpty) {
        sumCouponDiscount(cart.coupons);
        coupons = cart.coupons;
      }

      cartSummedPrice = cartTotalValue ?? 0;

      for (var element in cart.items) {
        if (element.extensions?.bundles['bundled_item_data']
        ?['is_hidden_in_cart'] !=
            true &&
            element.extensions?.bundles['bundled_item_data']
            ?['is_hidden_in_summary'] !=
                true) {
          filteredItems.add(element);
        }
      }
    });
  }

  getShippingMethods(postcode) async {
    shippingMethodsFuture =  processShippingMethods(postcode);
  }

  getPayGateway() async {
    paymentGatewayFuture = processPaymentGateway();
  }

  static _dockedFabLocation(context) {
    if (MediaQuery.of(context).viewInsets.bottom != 0) {
      return FixedCenterDockedFabLocation(
          bottomDistance: MediaQuery.of(context).viewInsets.bottom,
          context: context);
    } else {
      return FloatingActionButtonLocation.miniCenterDocked;
    }
  }

  Future<void> sumCouponDiscount(List<Coupon?>? couponResponse) async {
    int couponTotalInt_ = 0;
    double couponTotalValue_ = 0.0;
    String couponTotal_ = '0,00';

    for (var cp in couponResponse ?? []) {
      final discount =
          int.tryParse(cp?.totals.totalDiscount ?? '0') ?? 0;
      final discountTax =
          int.tryParse(cp?.totals.totalDiscountTax ?? '0') ?? 0;
      couponTotalInt_ += (discount + discountTax);
    }

    couponTotalValue_ = couponTotalInt_ / 100.0;
    couponTotal_ = couponTotalValue_
        .toStringAsFixed(2)
        .replaceAll('.', ',');

    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        couponTotalInt = couponTotalInt_;
        couponTotalValue = couponTotalValue_;
        couponTotal = couponTotal_;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MyOrdersBloc, MyOrdersState>(
      listener: (context, state) => state.maybeWhen(
        loaded: (response) => {
          context.read<CartBadgeCubitCubit>().removeCartItem(),
          context.read<CartBloc>().deleteCart(),
          MainNavigation.replace(context,[ const MainNavigation.home(),const MainNavigation.thankYou()]),
        },
        loading: () => const Center(
          child: CircularProgressIndicator(
            color: Color.fromARGB(255, 161, 29, 51),
          ),
        ),
        orElse: () => const SizedBox(),
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        key: newKey,
        floatingActionButtonLocation: _dockedFabLocation(context),
        floatingActionButton: const FloatingButton(),
        bottomNavigationBar: BottomBanvigationMenu(
          scaffoldKey: newKey,
          initialSelectedIndex: 0,
          context: context,
        ),
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * 0.07,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Color.fromARGB(255, 110, 116, 119),
              size: 30,
            ),
            onPressed: () {
              MainNavigation.push(
                context,
                const MainNavigation.cart(false, false, true, false),
              );
            },
          ),
          title: const Text("DETTAGLI ORDINE",
            style: TextStyle(
                color: Color.fromARGB(255, 110, 116, 119),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) => state.maybeWhen(
            loading: () => const Center(
              child: CircularProgressIndicator(
                color: Color.fromARGB(255, 161, 29, 51),
              ),
            ),
            loaded: (cart) {
              if(isCartNullOrRefreshed){
                initCart(cart);
                isCartNullOrRefreshed = false;
              }
              return BlocBuilder<AccountBloc, AccountState>(
                builder: (context, state) => state.maybeWhen(
                  orElse: () => const SizedBox(),
                  loading: () => const Center(
                    child: CircularProgressIndicator(
                      color: Color.fromARGB(255, 161, 29, 51),
                    ),
                  ),
                  notLogged: () { return const Text('nlacc');},
                  error: () { return const Text('err'); },
                  loadedAddress: (model) {
                    if(firstLoad) {
                      getPayGateway();
                      if(model.shipping.isNotEmpty){
                        var defaultShipping = model.shipping.where((e) => e.is_default).toList();
                        if (defaultShipping.isNotEmpty) {
                          var result = defaultShipping.first;
                          selectedShippingIndex = model.shipping.indexOf(result);
                          selectedShippingAddress = result;
                        }
                      }
                      if (model.billing.isNotEmpty) {
                        var defaultBilling = model.billing.where((e) => e.is_default).toList();
                        if (defaultBilling.isNotEmpty) {
                          var response = defaultBilling.first;
                          selectedBillingIndex = model.billing.indexOf(response);
                          selectedBillingAddress = response;
                        }
                      }
                      shippingPostocde = ((selectedBillingAddress?.postcode != null && selectedShippingAddress?.postcode != '') ? selectedShippingAddress?.postcode : selectedBillingAddress?.postcode) ?? "";
                      getShippingMethods(shippingPostocde);
                      firstLoad = false;
                    }
                    shippingPostocde = ((selectedBillingAddress?.postcode != null && selectedShippingAddress?.postcode != '') ? selectedShippingAddress?.postcode : selectedBillingAddress?.postcode) ?? "";
                    return SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child:  Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SingleChildScrollView(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "IL MIO CARRELLO",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold, fontSize: 16),
                                      ),
                                      GestureDetector(
                                        child: const Text(
                                          "Visualizza",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        onTap: () {
                                          MainNavigation.push(
                                            context,
                                            const MainNavigation.cart(
                                                false, false, false, false),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 130,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: filteredItems.length,
                                      itemBuilder: (context, index) {
                                        final imageUrl = filteredItems[index].images.first.src;
                                        return Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: CachedNetworkImage(
                                            imageUrl: imageUrl,
                                            cacheKey: DynamicCacheManager().generateKey(imageUrl),
                                            placeholder: (context, url) => const Center(
                                              child: CircularProgressIndicator(),
                                            ),
                                            errorWidget: (context, url, error) =>
                                            const Icon(Icons.error),
                                            cacheManager: DynamicCacheManager(),
                                            fit: BoxFit.cover,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  customDiv,
                              BlocBuilder<CouponBloc, CouponState>(
                                builder: (context, state) => state.maybeWhen(
                                  loading: () {
                                    isFirsCouponLoad = true;
                                    return const Center(
                                      child: CircularProgressIndicator(
                                        color: Color.fromARGB(255, 161, 29, 51),
                                      ),
                                    );
                                  },
                                  orElse: () {
                                    if (isFirsCouponLoad) {
                                      context.read<CartBloc>().add(const CartEvent.fetch());
                                      isCartNullOrRefreshed = true;
                                      isFirsCouponLoad = false;

                                    }
                                    return Column(
                                      children: [
                                        buildCupon(""),
                                        if (cart.coupons != null && cart.coupons!.isNotEmpty) ...[
                                          SizedBox(
                                            height: (cart.coupons?.length ?? 0) * 30,
                                            child: Row(
                                              children: [
                                                ListView.builder(
                                                  physics: const NeverScrollableScrollPhysics(),
                                                  scrollDirection: Axis.horizontal,
                                                  shrinkWrap: true,
                                                  itemCount: cart.coupons?.length ?? 0,
                                                  itemBuilder: (context, index) {
                                                    final couponItem = cart.coupons?[index];
                                                    if (couponItem == null) return const SizedBox();
                                                    return Container(
                                                      alignment: Alignment.topLeft,
                                                      height: 30,
                                                      child: InputChip(
                                                        label: Text(
                                                          couponItem.code,
                                                          style: const TextStyle(color: Colors.white, fontSize: 12),
                                                        ),
                                                        deleteIconColor: Colors.white,
                                                        backgroundColor: const Color.fromARGB(255, 161, 29, 51),
                                                        shape: const RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                                        ),
                                                        onDeleted: () async{
                                                          context.read<CouponBloc>().add(CouponEvent.delete(couponItem.code));
                                                          setState(() {
                                                            isFirsCouponLoad = true;
                                                            isCartNullOrRefreshed = true;
                                                            couponDeleted = true;
                                                          });
                                                        },
                                                        padding: const EdgeInsets.only(left: 5, bottom: 3),
                                                        onPressed: null,
                                                        onSelected: null,
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ],
                                            ),
                                          )
                                        ]
                                      ],
                                    );
                                  },
                                  couponNotFound: (error) {
                                    return Column(
                                      children: [
                                        buildCupon(error),
                                        if (cart.coupons != null && cart.coupons!.isNotEmpty) ...[
                                          SizedBox(
                                            height: (cart.coupons?.length ?? 0) * 30,
                                            child: Row(
                                              children: [
                                                ListView.builder(
                                                  physics: const NeverScrollableScrollPhysics(),
                                                  scrollDirection: Axis.horizontal,
                                                  shrinkWrap: true,
                                                  itemCount: cart.coupons?.length ?? 0,
                                                  itemBuilder: (context, index) {
                                                    final couponItem = cart.coupons?[index];
                                                    if (couponItem == null) return const SizedBox();
                                                    return Container(
                                                      alignment: Alignment.topLeft,
                                                      height: 30,
                                                      child: InputChip(
                                                        label: Text(
                                                          couponItem.code,
                                                          style: const TextStyle(color: Colors.white, fontSize: 12),
                                                        ),
                                                        deleteIconColor: Colors.white,
                                                        backgroundColor: const Color.fromARGB(255, 161, 29, 51),
                                                        shape: const RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                                        ),
                                                        onDeleted: () async{
                                                          context.read<CouponBloc>().add(CouponEvent.delete(couponItem.code));
                                                          setState(() {
                                                            isFirsCouponLoad = true;
                                                            isCartNullOrRefreshed = true;
                                                            couponDeleted = true;
                                                          });
                                                        },
                                                        padding: const EdgeInsets.only(left: 5, bottom: 3),
                                                        onPressed: null,
                                                        onSelected: null,
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ],
                                            ),
                                          )
                                        ]
                                      ],
                                    );
                                  },
                                  error: (error) {
                                    return Column(
                                      children: [
                                        buildCupon(error),
                                        if (cart.coupons != null && cart.coupons!.isNotEmpty) ...[
                                          SizedBox(
                                            height: (cart.coupons?.length ?? 0) * 30,
                                            child: Row(
                                              children: [
                                                ListView.builder(
                                                  physics: const NeverScrollableScrollPhysics(),
                                                  scrollDirection: Axis.horizontal,
                                                  shrinkWrap: true,
                                                  itemCount: cart.coupons?.length ?? 0,
                                                  itemBuilder: (context, index) {
                                                    final couponItem = cart.coupons?[index];
                                                    if (couponItem == null) return const SizedBox();
                                                    return Container(
                                                      alignment: Alignment.topLeft,
                                                      height: 30,
                                                      child: InputChip(
                                                        label: Text(
                                                          couponItem.code,
                                                          style: const TextStyle(color: Colors.white, fontSize: 12),
                                                        ),
                                                        deleteIconColor: Colors.white,
                                                        backgroundColor: const Color.fromARGB(255, 161, 29, 51),
                                                        shape: const RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                                        ),
                                                        onDeleted: () async{
                                                          context.read<CouponBloc>().add(CouponEvent.delete(couponItem.code));
                                                          setState(() {
                                                            isFirsCouponLoad = true;
                                                            isCartNullOrRefreshed = true;
                                                            couponDeleted = true;
                                                          });
                                                        },
                                                        padding: const EdgeInsets.only(left: 5, bottom: 3),
                                                        onPressed: null,
                                                        onSelected: null,
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ],
                                            ),
                                          )
                                        ]
                                      ],
                                    );
                                  },
                                  gotCoupon: (coupon) {
                                    if (isFirsCouponLoad) {
                                      context.read<CartBloc>().add(const CartEvent.fetch());
                                      isCartNullOrRefreshed = true;
                                      sumCouponDiscount(cart.coupons);
                                      WidgetsBinding.instance.addPostFrameCallback((_) {
                                        setState(() {
                                          appliedCoupon = double.tryParse(coupon.amount) ?? 0.0;
                                          isFirsCouponLoad = false;
                                          couponController.text = "";
                                        });
                                      });
                                    }
                                    return Column(
                                      children: [
                                        buildCupon(""),
                                        if (cart.coupons != null && cart.coupons!.isNotEmpty) ...[
                                          SizedBox(
                                            height: (cart.coupons?.length ?? 0) * 30,
                                            child: Row(
                                              children: [
                                                ListView.builder(
                                                  physics: const NeverScrollableScrollPhysics(),
                                                  scrollDirection: Axis.horizontal,
                                                  shrinkWrap: true,
                                                  itemCount: cart.coupons?.length ?? 0,
                                                  itemBuilder: (context, index) {
                                                    final couponItem = cart.coupons?[index];
                                                    if (couponItem == null) return const SizedBox();
                                                    return Container(
                                                      alignment: Alignment.topLeft,
                                                      height: 30,
                                                      child: InputChip(
                                                        label: Text(
                                                          couponItem.code,
                                                          style: const TextStyle(color: Colors.white, fontSize: 12),
                                                        ),
                                                        deleteIconColor: Colors.white,
                                                        backgroundColor: const Color.fromARGB(255, 161, 29, 51),
                                                        shape: const RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                                        ),
                                                        onDeleted: () async{
                                                          context.read<CouponBloc>().add(CouponEvent.delete(couponItem.code));
                                                          setState(() {
                                                            isFirsCouponLoad = true;
                                                            isCartNullOrRefreshed = true;
                                                            couponDeleted = true;
                                                          });
                                                        },
                                                        padding: const EdgeInsets.only(left: 5, bottom: 3),
                                                        onPressed: null,
                                                        onSelected: null,
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ],
                                            ),
                                          )
                                        ]
                                      ],
                                    );
                                  },
                                ),
                              ),
                                  customDiv,
                                  const Padding(
                                    padding: EdgeInsets.symmetric(vertical: 18.0),
                                    child: Text(
                                      "INDIRIZZO DI FATTURAZIONE",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 16),
                                    ),
                                  ),
                                  model.billing.isEmpty
                                      ? Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0),
                                    child: PrimaryButton(
                                      text:
                                      'Aggiungi un indirizzo per la Fatturazione',
                                      ontap: () {
                                        MainNavigation.push(context, MainNavigation.newAddressFromAccount(customerId, true , false, null, "completeorder", true, widget.totPoint, widget.cartSubTotal));
                                      },
                                    ),
                                  )
                                      :
                                  ListView.builder(
                                    shrinkWrap: true,
                                    physics: const NeverScrollableScrollPhysics(),
                                    itemCount: model.billing.length,
                                    itemBuilder: (context, index) {
                                      return Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Radio(
                                            value: index,
                                            groupValue: selectedBillingIndex,
                                            activeColor: const Color.fromARGB(255, 161, 29, 51),
                                            onChanged: (int? value) {
                                              setState(() {
                                                selectedBillingIndex = value;
                                                selectedBillingAddress = model.billing[value!];
                                                shippingPostocde = ((selectedBillingAddress?.postcode != null && selectedShippingAddress?.postcode != '') ? selectedShippingAddress?.postcode : selectedBillingAddress?.postcode)!;
                                                getShippingMethods(shippingPostocde);
                                              });
                                            },
                                          ),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        "${model.billing[index].address_1}, ${model.billing[index].city}, ${model.billing[index].postcode}, ${model.billing[index].country}",
                                                        maxLines: 1,
                                                        overflow: TextOverflow.ellipsis,
                                                        style: const TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 14,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left: 20.0),
                                                      child: GestureDetector(
                                                        child: SvgPicture.asset(
                                                          "assets/Ordine-edit.svg",
                                                          width: 22,
                                                          height: 22,
                                                        ),
                                                        onTap: () {
                                                          MainNavigation.push(context, MainNavigation.newAddressFromAccount(customerId, true, false, model.billing[index], 'completeorder', false, widget.totPoint, widget.cartSubTotal));
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Text("${model.billing[index].first_name} ${model.billing[index].last_name}",overflow: TextOverflow.ellipsis,),
                                              ],
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                  model.billing.isEmpty ? const SizedBox.shrink():
                                  Padding(
                                    padding: const EdgeInsets.only(top : 15.0),
                                    child: GestureDetector(
                                      onTap: (){
                                        MainNavigation.push(context, MainNavigation.newAddressFromAccount(customerId, true, false, null,'completeorder',true, widget.totPoint,  widget.cartSubTotal));
                                        // context.read<AccountBloc>().addAddress();
                                      },
                                      child: const Row(
                                        children: [
                                          Text(
                                            "Aggiungi un nuovo indirizzo di fatturazione",
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 161, 29, 51),
                                            ),
                                          ),
                                          Icon(Icons.add, color: Color.fromARGB(255, 161, 29, 51))
                                        ],
                                      ),
                                    ),
                                  ),

                                  customDiv,

                                  const Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10.0),
                                    child: Text(
                                      "TIPO DI SPEDIZIONE",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 16),
                                    ),
                                  ),

                                  //QUI METODI DI SPEDIZIONE

                                  FutureBuilder(
                                    future: shippingMethodsFuture,
                                    builder: (context,snapshot) {

                                      if(snapshot.connectionState != ConnectionState.done) {
                                        return const Center(
                                            child: CircularProgressIndicator(
                                              color: Color.fromARGB(255, 161, 29, 51),
                                            )
                                        );
                                      }
                                      if(snapshot.hasData) {
                                        var sm = snapshot.data;
                                        double containerHeight = 66;

                                        var _shippingCost;
                                        var _shippingCostValue;
                                        var _minAmount;
                                        double? _minAmountValue;
                                        double? _valueDifference;
                                        var ap;
                                        var min;

                                        for(var item in sm ?? []){
                                          if(item!.settings?.minAmount?.value != null) {
                                            if(item!.settings?.minAmount?.value != ''){
                                              _minAmount = (item!.settings?.minAmount?.value!)?.replaceAll(',','.');
                                              _minAmount = (double.tryParse(_minAmount)!).toStringAsFixed(2);
                                              _valueDifference = double.tryParse(_minAmount)! - cartTotalValue!;
                                              _minAmountValue = double.tryParse(double.tryParse(_minAmount)!.toStringAsFixed(2));
                                            }
                                            if(item.settings?.cost?.value != null) {
                                              if(item.settings?.cost?.value != ''){
                                                _shippingCost = (item..settings?.cost?.value!)?.replaceAll(',','.');
                                                _shippingCost = (double.tryParse(_shippingCost)! + (double.tryParse(_shippingCost)!*.22) ).toStringAsFixed(2);
                                                _shippingCostValue = double.tryParse(_shippingCost);
                                              }
                                            }

                                            if(!defaultDefined  && (_minAmount ==null || (_minAmount!=null && _valueDifference!<= 0)) ) {
                                              gruppoval = item.id!;


                                              Future.wait([]).then((value) => {
                                                setState(() {
                                                  if(_shippingCostValue != null && _shippingCostValue != '') {
                                                    shippingPrice = _shippingCost;
                                                    shippingPriceValue = _shippingCostValue;
                                                    cartSummedPrice = cartTotalValue!;

                                                  } else {
                                                    shippingPrice = 'GRATIS';
                                                    shippingPriceValue =0;
                                                    cartSummedPrice = cartTotalValue!;
                                                  }
                                                })
                                              });

                                              defaultDefined =true;
                                            }

                                            if(_minAmount!=null && _valueDifference!<= 0){
                                              isEnabled = true;
                                            }
                                          }
                                        }

                                        if(isEnabled){
                                          sm!.removeWhere((e) => e!.methodId == "flat_rate");
                                        }



                                        return Container(
                                            alignment: Alignment.topLeft,
                                            padding: const EdgeInsets.symmetric(vertical: 8),
                                            height: containerHeight*sm!.length,
                                            child: ListView.builder(
                                              physics: const NeverScrollableScrollPhysics() ,
                                              shrinkWrap: true,
                                              itemCount: sm.length,
                                              itemBuilder: (context,index){


                                                var shippingCost;
                                                var shippingCostValue;
                                                var minAmount;
                                                double? minAmountValue;
                                                double? valueDifference;


                                                if(sm[index]!.settings?.cost?.value != null) {
                                                  if(sm[index]!.settings?.cost?.value != ''){
                                                    shippingCost = (sm[index]!.settings?.cost?.value!)?.replaceAll(',','.');
                                                    shippingCost = (double.tryParse(shippingCost)! + (double.tryParse(shippingCost)!*.22) ).toStringAsFixed(2);
                                                    shippingCostValue = double.tryParse(shippingCost);
                                                  }
                                                }

                                                if(sm[index]!.settings?.minAmount?.value != null) {
                                                  if(sm[index]!.settings?.minAmount?.value != ''){
                                                    minAmount = (sm[index]!.settings?.minAmount?.value!)?.replaceAll(',','.');
                                                    minAmount = (double.tryParse(minAmount)!).toStringAsFixed(2);
                                                    valueDifference = double.tryParse(minAmount)! - cartTotalValue!;
                                                    minAmountValue = double.tryParse(double.tryParse(minAmount)!.toStringAsFixed(2));
                                                  }
                                                }

                                                if(!defaultDefined  && (minAmount ==null || (minAmount!=null && valueDifference!<= 0)) ) {
                                                  gruppoval = sm[index]!.id!;


                                                  Future.wait([]).then((value) => {
                                                    setState(() {
                                                      if(shippingCostValue != null && shippingCostValue != '') {
                                                        shippingPrice = shippingCost;
                                                        shippingPriceValue = shippingCostValue;
                                                        cartSummedPrice = cartTotalValue!;

                                                      } else {
                                                        shippingPrice = 'GRATIS';
                                                        shippingPriceValue =0;
                                                        cartSummedPrice = cartTotalValue!;
                                                      }
                                                    })
                                                  });

                                                  defaultDefined =true;
                                                }



                                                return SizedBox(
                                                  height: containerHeight,
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      if((minAmount == null || (minAmount!=null && valueDifference!<= 0)) ) {
                                                          gruppoval = sm[index]!.id!;
                                                          if(shippingCostValue != null && shippingCostValue != '') {
                                                            setState(() {

                                                            shippingPrice = shippingCost;
                                                            shippingPriceValue = shippingCostValue;
                                                                cartSummedPrice = cartTotalValue!;
                                                            });


                                                          } else {
                                                            setState(() {
                                                              shippingPrice = 'GRATIS';
                                                              shippingPriceValue =0;
                                                              cartSummedPrice = cartTotalValue!;
                                                            });

                                                          }
                                                      }
                                                    },
                                                    child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              SvgPicture.asset(
                                                                "assets/Articolo-spedizione.svg",
                                                                width: 22,
                                                                height: 22,
                                                              ),
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                        alignment: Alignment.topLeft,
                                                                        padding: const EdgeInsets.only(top: 0.0, left: 15),
                                                                        child:
                                                                            Column(
                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                          children: [
                                                                            RichText(
                                                                              text: TextSpan(
                                                                                text: '',
                                                                                style: const TextStyle(color: Colors.black),
                                                                                children: <TextSpan>[
                                                                                  TextSpan(
                                                                                    text: shippingCost != null ? '€ $shippingCost ' : '',
                                                                                    style: const TextStyle(fontWeight: FontWeight.bold),
                                                                                  ),
                                                                                  TextSpan(text: '${sm[index]!.title}'),
                                                                                  TextSpan(
                                                                                    text: minAmount != null ? ' a partire da € $minAmount ' : '',
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            (minAmountValue != null && valueDifference! > 0)
                                                                                ? RichText(
                                                                                    text: TextSpan(
                                                                                      text: 'Mancano ',
                                                                                      style: const TextStyle(color: Colors.grey),
                                                                                      children: <TextSpan>[
                                                                                        TextSpan(
                                                                                          text: valueDifference > 0 ? '€ ${valueDifference.toStringAsFixed(2).replaceAll('.', ',')}' : '',
                                                                                          style: const TextStyle(fontWeight: FontWeight.bold),
                                                                                        ),
                                                                                        const TextSpan(text: ' per usufruire della spedizione gratuita.'),
                                                                                      ],
                                                                                    ),
                                                                                  )
                                                                                : const SizedBox()
                                                                          ],
                                                                        )),
                                                              ),
                                                              SizedBox(
                                                                width: 40,
                                                                height: 40,
                                                                child: Radio(
                                                                    activeColor: const Color.fromARGB(255, 158, 29, 48),
                                                                    value: sm[index]!.id!,
                                                                    groupValue: gruppoval,
                                                                    onChanged: (minAmount != null && valueDifference! > 0) ? null:
                                                                        (val) {
                                                                      gruppoval = sm[index]!.id!;
                                                                      if (shippingCostValue != null && shippingCostValue != '') {
                                                                        setState(() {
                                                                          shippingPrice = shippingCost;
                                                                          cartSummedPrice = cartTotalValue!;
                                                                        });
                                                                      } else {
                                                                        setState(() {
                                                                          shippingPrice = 'GRATIS';
                                                                          cartSummedPrice = cartTotalValue!;
                                                                        });

                                                                      }
                                                                    }),
                                                              )
                                                            ]),
                                                  ),
                                                );
                                              },
                                            )
                                        );

                                      }

                                      return const SizedBox();
                                    },
                                  ),


                                  ListTileTheme(
                                    contentPadding: const EdgeInsets.all(0),
                                    child: ExpansionTile(
                                        title: const Text("NOTE SULL'ORDINE",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold, fontSize: 16),
                                        ),
                                        tilePadding: const EdgeInsets.symmetric(horizontal: 10.0),
                                        childrenPadding: const EdgeInsets.symmetric(horizontal: 10.0),

                                        children: [
                                          TextFormField(
                                            controller: note,
                                            autovalidateMode: AutovalidateMode.disabled,
                                            decoration: const InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide( color: Colors.grey ,width: 1,style: BorderStyle.solid),
                                                )
                                            ),

                                            validator: (value) {
                                              if (value!.length < 3) {
                                                return 'Devi inserire almeno 3 carateri';
                                              }
                                              return null;
                                            },
                                          ),
                                          const Padding(padding: EdgeInsets.only(top:18))
                                        ]),
                                  ),
                                  //customDiv,
                                  const Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10.0),
                                    child: Text("INDIRIZZO DI SPEDIZIONE",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 16),
                                    ),
                                  ),
                                  model.shipping.isEmpty
                                      ? Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                                      child: PrimaryButton(
                                        text:'Inserisci un indirizzo di spedizione',
                                        ontap: () {
                                          MainNavigation.push(context, MainNavigation.newAddressFromAccount(customerId, false,true, null,'completeorder', true, widget.totPoint,  widget.cartSubTotal));
                                          //MainNavigation.newShipping(model.user.first.id));
                                        },
                                      ))
                                      :
                                  ListView.builder(
                                    shrinkWrap: true,
                                    physics: const NeverScrollableScrollPhysics(),
                                    itemCount: model.shipping.length,
                                    itemBuilder: (context, index) {
                                      return Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Radio(
                                            value: index,
                                            groupValue: selectedShippingIndex,
                                            activeColor: const Color.fromARGB(255, 161, 29, 51),
                                            onChanged: (int? value) {
                                              setState(() {
                                                selectedShippingIndex = value;
                                                selectedShippingAddress = model.shipping[value!];
                                                shippingPostocde = ((selectedBillingAddress?.postcode != null && selectedShippingAddress?.postcode != '') ? selectedShippingAddress?.postcode : selectedBillingAddress?.postcode)!;
                                                getShippingMethods(shippingPostocde);
                                              });
                                            },
                                          ),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        "${model.shipping[index].address_1}, ${model.shipping[index].city}, ${model.shipping[index].postcode}, ${model.shipping[index].country}",
                                                        maxLines: 1,
                                                        overflow: TextOverflow.ellipsis,
                                                        style: const TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 14,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left: 20.0),
                                                      child: GestureDetector(
                                                        child: SvgPicture.asset(
                                                          "assets/Ordine-edit.svg",
                                                          width: 22,
                                                          height: 22,
                                                        ),
                                                        onTap: () {
                                                          MainNavigation.push(context, MainNavigation.newAddressFromAccount(customerId, false, true, model.shipping[index], 'completeorder', false, widget.totPoint,  widget.cartSubTotal));
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Text("${model.shipping[index].first_name} ${model.shipping[index].last_name}", overflow: TextOverflow.ellipsis,),
                                              ],
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                  model.shipping.isEmpty ? const SizedBox.shrink():

                                  Padding(
                                    padding: const EdgeInsets.only(top : 15.0),
                                    child: GestureDetector(
                                      onTap: (){
                                        MainNavigation.push(context, MainNavigation.newAddressFromAccount(customerId, false, true, null, "completeorder", true, widget.totPoint,  widget.cartSubTotal));
                                        // context.read<AccountBloc>().addAddress();
                                      },
                                      child: const Row(
                                        children: [
                                          Text(
                                            "Aggiungi un nuovo indirizzo di spedizione",
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 161, 29, 51),
                                            ),
                                          ),
                                          Icon(Icons.add, color: Color.fromARGB(255, 161, 29, 51))
                                        ],
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: customDiv,
                                  ),
                                  const Text(
                                    "METODO DI PAGAMENTO",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 16),
                                  ),


                                  FutureBuilder(
                                    future: paymentGatewayFuture,
                                    builder: (context,snapshot) {



                                      if(snapshot.connectionState != ConnectionState.done) {
                                        return const Center(
                                            child: CircularProgressIndicator(
                                              color: Color.fromARGB(255, 161, 29, 51),
                                            )
                                        );
                                      }
                                      if(snapshot.hasData) {
                                        var pg = snapshot.data;
                                        double containerHeight = 80;

                                        var unescape = HtmlUnescape();
                                        //print(sm!.length);
                                        if(!payDefaultDefined) {
                                          paymentMethodSelected = pg![0]!.id!;
                                          payDefaultDefined = true;

                                        }


                                        return Container(
                                            alignment: Alignment.topLeft,
                                            padding: const EdgeInsets.symmetric(vertical: 8),
                                            height: containerHeight*pg!.length*0.7530,
                                            child: ListView.builder(
                                              physics: const NeverScrollableScrollPhysics() ,
                                              shrinkWrap: true,
                                              itemCount: pg.length,
                                              itemBuilder: (context,index){

                                                String? pgIcon = '';
                                                String pgDescr = unescape.convert('${pg[index]?.description}');
                                                pgDescr = removeAllHtmlTags(
                                                    pgDescr);
                                                amountCart = int.parse(cart?.totals.totalPrice??'0');

                                                switch(pg[index]?.id)  {
                                                  case 'stripe_cc' : {
                                                    pgIcon = 'assets/Ordine-carta.png';

                                                    break;
                                                  }
                                                  case 'ppcp-gateway' : {
                                                    pgIcon = 'assets/paypal.png';
                                                    break;
                                                  }
                                                  case 'bacs' : {
                                                    pgIcon = 'assets/Ordine-bonifico.png';
                                                    break;
                                                  }
                                                  case 'cod' : {
                                                    pgIcon = 'assets/Ordine-contrassegno.png';
                                                    break;
                                                  }

                                                  default: {
                                                    pgIcon = 'assets/Ordine-carta.png';
                                                  }
                                                }

                                                // print('pgIcon');
                                                // print(pgIcon);

                                                return pg[index]?.title == null
                                                    ? const SizedBox.shrink()
                                                    : SizedBox(

                                                  height: containerHeight,
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        paymentMethodSelected = pg[index]!.id!;
                                                        gruppoval2 = index;
                                                      });
                                                    },
                                                    child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Image.asset(
                                                            pgIcon,
                                                            width: 22,
                                                            height: 22,
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                                alignment: Alignment.topLeft,
                                                                padding: const EdgeInsets.only(top: 0.0, left: 15),
                                                                child:  Column(
                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                  children: [
                                                                    RichText(

                                                                      text: TextSpan(
                                                                        text: '',
                                                                        style: const TextStyle(color: Colors.black),
                                                                        children: <TextSpan>[

                                                                          TextSpan(
                                                                            text: '${pg[index]?.title}',
                                                                            style: const TextStyle(
                                                                                fontWeight: FontWeight.bold
                                                                            ),
                                                                          ),

                                                                        ],
                                                                      ),
                                                                    ),

                                                                    RichText(
                                                                      maxLines:3,
                                                                      overflow: TextOverflow.ellipsis,
                                                                      text: TextSpan(
                                                                        text: '$pgDescr ',
                                                                        style: const TextStyle(color: Colors.grey),
                                                                        children: const <TextSpan>[
                                                                        ],
                                                                      ),
                                                                    )

                                                                  ],
                                                                )
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 40,
                                                            height:40,
                                                            child: Radio(
                                                                activeColor: const Color.fromARGB(255, 158, 29, 48),
                                                                value: index,
                                                                groupValue: gruppoval2,
                                                                onChanged: (val) {
                                                                  setState(() {
                                                                    paymentMethodSelected = pg[index]!.id!;
                                                                    gruppoval2 = index;
                                                                  });
                                                                }
                                                            ) ,
                                                          )
                                                        ]
                                                    ),
                                                  ),
                                                );
                                              },
                                            )
                                        );

                                      }

                                      return const SizedBox();
                                    },
                                  ),
                                  customDiv,
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text("Voglio la fattura",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        Checkbox(
                                            activeColor: Colors.transparent,
                                            checkColor: const Color.fromARGB(255, 158, 29, 48),
                                            value: fatturaIsChecked,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                fatturaIsChecked = value!;
                                              });
                                            }),
                                      ]),
                                  const Padding(
                                      padding: EdgeInsets.only(top: 10, bottom: 5),
                                      child: Text("Codice Fiscale o P.IVA",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold, fontSize: 14),
                                      )),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 1,
                                          color: const Color.fromARGB(96, 77, 76, 76),
                                        ),
                                        borderRadius: BorderRadius.circular(8)),
                                    child: TextField(
                                        cursorColor: Colors.black,
                                        controller: codFiscController,
                                        decoration: const InputDecoration(
                                          labelStyle: TextStyle(
                                              decoration: TextDecoration.none),
                                          hintText: "Digita Codice Fiscale o P.IVA",
                                          hintStyle: TextStyle(
                                              color: Colors.grey, fontSize: 13),
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.only(left: 10, bottom: 10),
                                        )),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 10.0, bottom: 5),
                                    child: Text("PEC o Codice Destinatario",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 14),
                                    ),
                                  ),
                                  Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 35,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1,
                                            color: const Color.fromARGB(96, 77, 76, 76),
                                          ),
                                          borderRadius: BorderRadius.circular(8)),
                                      child: TextField(
                                        cursorColor: Colors.black,
                                        controller: pecController,
                                        decoration: const InputDecoration(
                                          labelStyle: TextStyle(
                                              decoration: TextDecoration.none),
                                          hintText: "Indica Indirizzo PEC o Codice Destinatario",
                                          hintStyle: TextStyle(
                                              color: Colors.grey, fontSize: 13),
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.only(left: 10, bottom: 10),
                                        ),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0, bottom: 50),
                                    child: customDiv,
                                  ),
                                  // Subtotal Row
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      // Subtotal Section
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "Subtotale:",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                          Text(
                                            // "€ ${cartTotalValue?.toStringAsFixed(2).replaceAll('.', ',')}",
                                              "€ $subPrice",
                                            style: const TextStyle(fontSize: 13),
                                          ),
                                        ],
                                      ),

                                      BlocBuilder<CouponBloc, CouponState>(
                                        builder: (context, state) {
                                          return state.maybeWhen(
                                            orElse: () {
                                              Future.delayed(Duration.zero, () {
                                                setState(() {
                                                  appliedCoupon = 0.0;
                                                  appliedCouponCode = null;
                                                });
                                              });
                                              return const SizedBox();
                                            },
                                            gotCoupon: (coupons) {

                                              double discount = double.tryParse(coupons.amount) ?? 0.0;
                                              bool isPercentageDiscount = coupons.code == "percent20";

                                              // Calculate discount based on the coupon type
                                              if (isPercentageDiscount) {
                                                discount = (double.tryParse(coupons.amount) ?? 0.0) / 100 * (cartTotalValue ?? 0);
                                              } else {
                                                discount = (double.tryParse(coupons.amount) ?? 0.0)/ 100;
                                              }
                                              // Check conditions for applying coupon

                                              DateTime? expiryDate = coupons.dateExpires != null ? DateTime.parse(coupons.dateExpires!) : null;


                                              // Check if the coupon is valid based on conditions
                                              bool isValid = true;

                                              // Check expiration date
                                              if (expiryDate != null && DateTime.now().isAfter(expiryDate)) {
                                                isValid = false; // Coupon has expired
                                              }

                                              // Check minimum and maximum amounts
                                              // if (cartTotalValue < minAmount) {
                                              //   isValid = false; // Not enough total to apply the coupon
                                              // }
                                              // if (cartTotalValue > maxAmount) {
                                              //   discount = maxAmount; // Limit discount to maximum amount
                                              // }

                                              if (isValid) {
                                                // Set the coupon discount when a coupon is applied
                                                Future.delayed(Duration.zero, () {
                                                  setState(() {
                                                    appliedCoupon = discount; // Use the discount amount
                                                    appliedCouponCode = coupons.code; // Store the applied coupon code
                                                  });
                                                });
                                              }



                                              // Display the applied coupon discount
                                              return Padding(
                                                padding: const EdgeInsets.symmetric(vertical: 5.0),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    const Text(
                                                      "Coupon applicato:",
                                                      style: TextStyle(
                                                        fontSize: 13,
                                                        color: Color.fromARGB(255, 13, 117, 161),
                                                      ),
                                                    ),
                                                    Text(
                                                      isValid ? "€ ${appliedCoupon.toStringAsFixed(2).replaceAll('.', ',')}" : "Coupon non valido",
                                                      style: const TextStyle(
                                                        fontSize: 13,
                                                        color: Color.fromARGB(255, 13, 117, 161),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "Consegna:",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                          Text(
                                            shippingPrice == 'GRATIS' ? shippingPrice : "€ $shippingPrice",
                                            style: const TextStyle(fontSize: 13),
                                          ),
                                        ],
                                      ),

                                      // Total Price Section
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              "Totale:",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            BlocBuilder<CouponBloc, CouponState>(
                                              builder: (context, state) {
                                                return state.maybeWhen(
                                                  orElse: () {
                                                    // Display total price when no coupon is applied
                                                    double total = cartSummedPrice + shippingPriceValue;
                                                    return Text(
                                                      "€ ${total.toStringAsFixed(2).replaceAll('.', ',')}",
                                                      style: const TextStyle(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    );
                                                  },
                                                  gotCoupon: (coupons) {
                                                    // Calculate the total after applying the coupon
                                                    double total = cartSummedPrice + shippingPriceValue;

                                                    // Ensure total does not go below zero
                                                    total = total < 0 ? 0 : total;

                                                    return Text(
                                                      "€ ${total.toStringAsFixed(2).replaceAll('.', ',')}",
                                                      style: const TextStyle(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),


                                    ],
                                  ),

                                  // const Text(
                                  //   "Creando questo account confermi di aver letto, compreso e accettato i nostri Termini di servizio e la Politica della Privacy",
                                  //   style: TextStyle(
                                  //       color: Color.fromARGB(255, 127, 127, 127),
                                  //       fontSize: 12,
                                  //       fontWeight: FontWeight.bold),
                                  // ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0, bottom: 40),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Expanded(
                                            child: Text("Desidero ricevere offerte e promozioni sui prodotti Torri Cantine e Rosarubra",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Checkbox(
                                            activeColor: Colors.transparent,
                                            checkColor: const Color.fromARGB(255, 158, 29, 48),
                                            value: promoIsChecked,
                                            onChanged: (bool? value) {
                                              setState(
                                                    () {
                                                  promoIsChecked = value!;
                                                },
                                              );
                                            },
                                          ),
                                        ]),
                                  ),
                                  Visibility(
                                    visible: !(model.shipping.isNotEmpty && gruppoval!=null),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,

                                      margin: const EdgeInsets.only(bottom: 20),
                                      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(80, 161, 29, 51),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        children: [
                                          model.shipping.isNotEmpty?const SizedBox():const Text('Devi inserire un indirizzo di spedizione.'),
                                          gruppoval==null?const SizedBox():const Text('Devi selezionare un metodo di spedizione.'),
                                        ],
                                      ),
                                    ),
                                  ),

                                  !startedOrder ?
                                  PrimaryButton(
                                    text: "EFFETTUA ORDINE",
                                    colorText: Colors.white,
                                    disabled: !(model.shipping.isNotEmpty ||  gruppoval==null),
                                    ontap: () async{
                                      //print(paymentMethodSelected);
                                      setState(() {
                                        startedOrder = true;
                                      });
                                      await payWithMethodSelected(
                                          paymentMethodSelected,
                                          selectedShippingAddress!,
                                          selectedBillingAddress!,
                                          cart,
                                          customerId
                                      );
                                    },
                                  ) : const Center(child: CircularProgressIndicator(
                                    color: Color.fromARGB(255, 158, 29, 48),
                                  ))
                                ]),
                          ),
                        )

                    );
                  },
                ),
              );
            },
            orElse: () => const SizedBox.shrink(),
          ),
        ),
      ),
    );
  }


  void paymentWithPayPal(UserAddress model, UserAddress billing, CartResponse cart) async {
    final myOrdersBloc = context.read<MyOrdersBloc>();
    var a = await myOrdersBloc.createCheckOutForStripe(
      Billing(
        first_name: billing.first_name,
        last_name: billing.last_name,
        company: billing.company,
        address_1: billing.address_1,
        address_2: billing.address_2,
        city: billing.city,
        state: billing.state,
        postcode: billing.postcode,
        country: "IT",
        email: billing.email,
        phone: billing.phone,
      ),
      Shipping(
        first_name: model.first_name,
        last_name: model.last_name,
        company: model.company,
        address_1: model.address_1,
        address_2: model.address_2,
        city: model.city,
        state: model.state,
        postcode: model.postcode,
        country: "IT",
        phone: model.phone,
      ),
      note.text,
      "ppcp-gateway",
      [],
      widget.totPoint,
      false,
    );

    bool isSuccess = false;
    final redirectUrl = a?.payment_result?.redirect_url ?? "";

    if (redirectUrl.isEmpty) {
      if(mounted){
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Errore: redirect_url non disponibile'),
            elevation: 1,
          ),
        );
      }
      return;
    }

    var controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setUserAgent(
          Platform.isIOS
              ? 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0 Mobile/15E148 Safari/604.1'
              : null)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (String url) {
            if (url.contains("/checkout/order-received/")) {
              Navigator.pop(context);
              setState(() {
                isSuccess = true;
              });
            }
          },
          onWebResourceError: (WebResourceError error) {
            if (kDebugMode) {
              print("Errore di caricamento WebView: ${error.description}");
            }
          },
          onHttpError: (HttpResponseError error) {
          },
        ),
      )
      ..loadRequest(Uri.parse(redirectUrl));

    print(controller);

    if (mounted) {
      await Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext ctx) => Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            body: WebViewWidget(
              controller: controller,
            ),
          ),
        ),
      );
    }

    setState(() {
      startedOrder = false;
    });

    if (mounted) {
      if (isSuccess) {
        context.read<CartBadgeCubitCubit>().removeCartItem();
        if(mounted){
          context.read<CartBloc>().deleteCart();
        }
        MainNavigation.replace(context,[ const MainNavigation.home(),const MainNavigation.thankYou()]);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Pagamento fallito, riprovare'),
          elevation: 1,
        ));
      }
    }
  }

  void makeOrder(UserAddress shipping, UserAddress billing, type) {
    context.read<MyOrdersBloc>().add(MyOrdersEvent.createCheckout(
        billing !=null ?
        Billing(
          first_name: billing.first_name,
          last_name: billing.last_name,
          company: billing.company,
          address_1: billing.address_1,
          address_2: billing.address_2,
          city: billing.city,
          state: billing.state,
          postcode: billing.postcode,
          country: "IT",
          email: billing.email,
          phone: billing.phone,
        ):
        Billing(
            first_name: shipping.first_name,
            last_name: shipping.last_name,
            company: shipping.company,
            address_1: shipping.address_1,
            address_2: shipping.address_2,
            city: shipping.city,
            state: shipping.state,
            postcode: shipping.postcode,
            country: "IT",
            phone: shipping.phone
        ),

        Shipping(
            first_name: shipping.first_name,
            last_name: shipping.last_name,
            company: shipping.company,
            address_1: shipping.address_1,
            address_2: shipping.address_2,
            city: shipping.city,
            state: shipping.state,
            postcode: shipping.postcode,
            country: "IT",
            phone: shipping.phone
        ),
        note.text,
        type,
        [],
        widget.totPoint
    ),
    );
    setState(() {
      startedOrder = false;
    });
  }

  Future<void> payWithMethodSelected(String paymentMethod, UserAddress shipping, UserAddress billing, CartResponse cart, int customerId) async{
    context.read<MyOrdersBloc>().add(const MyOrdersEvent.loading());

    switch (paymentMethod) {
      case "ppcp-gateway":
        paymentWithPayPal(shipping, billing,cart);
        break;
      case "stripe_cc":
        context.read<MyOrdersBloc>().add(const MyOrdersEvent.loading());
        MyOrdersResponse? orderId = await context.read<MyOrdersBloc>().createCheckOutForStripe(
            Billing(
                first_name: shipping.first_name,
                last_name: shipping.last_name,
                company: shipping.company,
                address_1: shipping.address_1,
                address_2: shipping.address_2,
                city: shipping.city,
                state: shipping.state,
                postcode: shipping.postcode,
                country: "IT",
                phone: shipping.phone
            ),
            Shipping(
                first_name: shipping.first_name,
                last_name: shipping.last_name,
                company: shipping.company,
                address_1: shipping.address_1,
                address_2: shipping.address_2,
                city: shipping.city,
                state: billing.state,
                postcode: shipping.postcode,
                country: "IT",
                phone: shipping.phone
            ),
            note.text,
            "stripe_cc",
            [],
            widget.totPoint,
           true
        );
        if(mounted){
          var response = await StripePaymentManager.makePayment(context, (orderId?.customer_id ?? 0), orderId!.billing_address!, orderId.payment_result!.redirect_url!.replaceAll("#response=", ""));
          if(response){
            if(mounted){
              context.read<CartBadgeCubitCubit>().removeCartItem();
              context.read<CartBloc>().deleteCart();
              MainNavigation.replace(context,[ const MainNavigation.home(),const MainNavigation.thankYou()]);
            }
          }else{
            setState(() {
              startedOrder = false;
            });
          }
        }
        setState(() {
          startedOrder = false;
        });
        break;
      case "bacs":
        makeOrder(shipping, billing, "bacs");
        break;
      case "cod":
        makeOrder(shipping, billing, "cod");
        break;
      default:
    }
  }

  Widget buildCupon(String error){
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 18),
          width: MediaQuery.of(context).size.width,
          height: 35,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: const Color.fromARGB(96, 77, 76, 76),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextField(
            cursorColor: Colors.black,
            controller: couponController,
            decoration: InputDecoration(
              suffixIcon: Container(
                width: 25,
                height: 35,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 161, 29, 51),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: IconButton(
                  alignment: Alignment.center,
                  onPressed: () {
                    if (couponController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Inserisci un cupon'),
                        elevation: 1,
                      ));
                    } else {
                      context.read<CouponBloc>().add(CouponEvent.fetch(couponController.text));
                      setState(() {
                        isFirsCouponLoad = true;
                      });
                    }
                  },
                  icon: const Icon(
                    size: 20,
                    Icons.done,
                    color: Colors.white,
                  ),
                ),
              ),
              hintText: "Codice coupon o Gift Card",
              hintStyle: const TextStyle(color: Colors.grey, fontSize: 13),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(left: 10),
            ),
          ),
        ),
        if(error != "")...[
          Text(error)
        ]
      ],
    );
  }


}
