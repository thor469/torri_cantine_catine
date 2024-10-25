import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal/flutter_paypal.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:torri_cantine_app/account/account/account_bloc.dart';
import 'package:torri_cantine_app/account/model/response/account_response.dart';
import 'package:torri_cantine_app/account/model/response/add_address_response.dart';
import 'package:torri_cantine_app/app/app_config.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/bottom_bar.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/floating_action_button.dart';
import 'package:torri_cantine_app/app/common/primary_button.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/app/utilitys/fixedFloatingPositions.dart';
import 'package:torri_cantine_app/app/utilitys/html_tools.dart';
import 'package:torri_cantine_app/cart/cart/cart_bloc.dart';
import 'package:torri_cantine_app/cart/model/request/payment_gateway.dart';
import 'package:torri_cantine_app/cart/model/request/shipping.dart';
import 'package:torri_cantine_app/cart/model/response/cart_response.dart';
import 'package:torri_cantine_app/complete_order/stripe_manager/stripe_payment_manager.dart';
import 'package:torri_cantine_app/coupon/coupon/coupon_bloc.dart';
import 'package:torri_cantine_app/my_orders/model/request/my_orders_request.dart';
import 'package:torri_cantine_app/my_orders/my_orders/my_orders_bloc.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';


class CompleteOrderScreen extends StatefulWidget {
  final CartResponse? cart;
  const CompleteOrderScreen({super.key, this.cart});

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


  List<ShippingMethod> shippingMethods =[] ;
  late Future<List<ShippingMethod?>> shippingMethodsFuture ;
  late Future<List<PaymentGateway?>> paymentGatewayFuture ;

  String shippingPrice = 'GRATIS';
  double shippingPriceValue = 0.0;
  double cartSummedPrice = 0.0;
  String shippingPostocde = '';
  bool firstLoad = true;
  bool cartFirstLoad = true;
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


  int? amountCart;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      String email = await storage.getUserEmail() ?? "";
      customerId = await storage.getCustomerId();
      if (mounted) {
        context.read<AccountBloc>().add(AccountEvent.fetch(email));
        context.read<AccountBloc>().add(AccountEvent.fetchAddress());
      }
    });
    context.read<CartBloc>().add(const CartEvent.fetch());

    //getShippingMethods('66034');
    getPayGateway();

    super.initState();
  }

  getShippingMethods(postcode) async  {
    print('getShippingMethods ');
    print(postcode);
    shippingMethodsFuture =  processShippingMethods(postcode) ;
    //shippingMethodsFuture = shippingMethods as Future<List<ShippingMethod?>>;
  }


  getPayGateway() async  {
    print('getPayGateway ');
    paymentGatewayFuture =  processPaymentGateway() ;
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int selectedIndex = 0;
  double appliedCoupon = 0.0;


  static _dockedFabLocation(context) {
    if (MediaQuery.of(context).viewInsets.bottom != 0) {
      return FixedCenterDockedFabLocation(bottomDistance: MediaQuery.of(context).viewInsets.bottom, context: context);
    } else {
      return FloatingActionButtonLocation.miniCenterDocked;
    }
  }



  void sumCouponDiscount(CouponResponse) {
    int _couponTotalInt =0 ;
    double _couponTotalValue= 0.0;
    String _couponTotal = '0.0';
    CouponResponse!.forEach((cp){
      _couponTotalInt += int.tryParse(cp?.totals!.totalDiscount??'0')! ;
      _couponTotalInt += int.tryParse(cp?.totals!.totalDiscountTax??'0')! ;
    });
    _couponTotalValue = double.tryParse((_couponTotalInt/100).toString())!;
    _couponTotal = _couponTotalValue.toStringAsFixed(2).replaceAll('.', ',');
    setState(() {
      couponTotalInt = _couponTotalInt;
      couponTotalValue = _couponTotalValue;
      couponTotal = _couponTotal;
    });

  }


  @override
  Widget build(BuildContext context) {


    return BlocListener<MyOrdersBloc, MyOrdersState>(
      listener: (context, state) => state.maybeWhen(
        loaded: (response) => {
          MainNavigation.push(context, const MainNavigation.thankYou()),
        },
        orElse: () => const SizedBox(),
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        key: _key,
        floatingActionButtonLocation: _dockedFabLocation(context),
        //floatingActionButtonLocation: _dockedFabLocation(context),
        floatingActionButton: const FloatingButton(),
        bottomNavigationBar: BottomBanvigationMenu(
          scaffoldKey: _key,
          initialSelectedIndex: 0,
          context: context,
          //notifyParent: () => refresh(selectedindex),
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
        body: BlocBuilder<AccountBloc, AccountState>(
          builder: (context, state) => state.maybeWhen(
            orElse: () => const SizedBox(),
            initial: () {
              firstLoad = true;
              return const Center(
                child: CircularProgressIndicator(
                  color: Color.fromARGB(255, 161, 29, 51),
                ),
              );
            },
            loading: () => const Center(
              child: CircularProgressIndicator(
                color: Color.fromARGB(255, 161, 29, 51),
              ),
            ),

            notLogged: () { return const Text('nlacc'); },
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
                child: BlocBuilder<CartBloc, CartState>(
                  builder: (context, state) => state.maybeWhen(

                      loaded: (cart) {
                        //return Text('loaded');
                        //print('ITEMS TAXES');
                        //print(cart.coupons);
                        // print(cart.totals.totalItemsTax);

                        //da cambiare in valore con IVA
                        String? taxedTotalItems =(int.tryParse((cart.totals.totalItems))! + int.tryParse(cart.totals.totalItemsTax)! ).toString();
                        double taxedTotalItemsValue = double.tryParse('${taxedTotalItems?.substring(0,taxedTotalItems.length-2)}.${taxedTotalItems?.substring(taxedTotalItems.length-2)}')!;
                        taxedTotalItems = '${taxedTotalItems?.substring(0,taxedTotalItems.length-2)},${taxedTotalItems?.substring(taxedTotalItems.length-2)}';

                        var cartTotal =  taxedTotalItems;
                        double? cartTotalValue =  taxedTotalItemsValue;


                        // int couponTotalInt = 0;
                        // double couponTotalValue = 0.0;
                        // String couponTotal = '0.0';



                        //cartSummedPrice = cartTotalValue;

                        if(cartFirstLoad==true) {
                          if(cart.coupons!=null) {
                            Future.delayed(Duration.zero, () { sumCouponDiscount(cart.coupons);});
                            //print('#### CART COUPONS !!!! ');
                          }

                          cartSummedPrice = cartTotalValue;
                          cartFirstLoad = false;
                        }

                        var filteredItems = [];

                        cart.items.forEach((element) {
                          if(element.extensions?.bundles['bundled_item_data']?['is_hidden_in_cart'] != true
                              && element.extensions?.bundles['bundled_item_data']?['is_hidden_in_summary'] != true) {
                            filteredItems.add(element);
                          }
                        });


                        return Padding(
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
                                          return Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Image.network(
                                              filteredItems[index].images.first.src,
                                              fit: BoxFit.cover,
                                            ),
                                          );
                                        }),
                                  ),
                                  customDiv,





                                  BlocBuilder<CouponBloc, CouponState>(
                                    builder: (context, state) => state.maybeWhen(
                                      orElse: () {
                                        return Container(
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
                                                      showDialog(
                                                        context: context,
                                                        builder: (BuildContext context) {
                                                          return AlertDialog(
                                                            title: const Text('Errore'),
                                                            content: const Text('Coupon non trovato!'),
                                                            actions: [
                                                              TextButton(
                                                                child: const Text('OK'),
                                                                onPressed: () {
                                                                  Navigator.of(context).pop();
                                                                },
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    } else {
                                                      context.read<CouponBloc>().add(
                                                        CouponEvent.fetch(couponController.text),
                                                      );
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
                                        );
                                      },
                                      loading: () {
                                        return const Center(
                                          child: CircularProgressIndicator(
                                            color: Color.fromARGB(255, 161, 29, 51),
                                          ),
                                        );
                                      },
                                      couponNotFound: () {
                                        return Container(
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
                                                      showDialog(
                                                        context: context,
                                                        builder: (BuildContext context) {
                                                          return AlertDialog(
                                                            title: const Text('Errore'),
                                                            content: const Text('Coupon non trovato!'),
                                                            actions: [
                                                              TextButton(
                                                                child: const Text('OK'),
                                                                onPressed: () {
                                                                  Navigator.of(context).pop();
                                                                },
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    } else {
                                                      context.read<CouponBloc>().add(
                                                        CouponEvent.fetch(couponController.text),
                                                      );
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
                                        );
                                      },
                                      gotCoupon: (coupons) {
                                        // Apply the coupon and update the UI with the discount
                                        Future.delayed(Duration.zero, () {
                                          sumCouponDiscount(cart.coupons);
                                          setState(() {
                                            appliedCoupon = double.tryParse(coupons.amount)!;
                                          });
                                          // Show the success dialog here

                                        });

                                        return Column(
                                          children: [
                                            cart.coupons!.isEmpty
                                                ? const SizedBox()
                                                : Container(
                                              height: cart.coupons!.length * 34,
                                              padding: const EdgeInsets.symmetric(horizontal: 8),
                                              margin: const EdgeInsets.symmetric(vertical: 18.0),
                                              child: ListView.builder(
                                                physics: const NeverScrollableScrollPhysics(),
                                                scrollDirection: Axis.vertical,
                                                shrinkWrap: true,
                                                itemCount: cart.coupons!.length,
                                                itemBuilder: (context, index) {
                                                  final couponItem = cart.coupons![index];
                                                  return Container(
                                                    alignment: Alignment.topLeft,
                                                    height: 34,
                                                    child: InputChip(
                                                      label: Text(
                                                        couponItem!.code,
                                                        style: const TextStyle(color: Colors.white),
                                                      ),
                                                      deleteIconColor: Colors.white,
                                                      backgroundColor: const Color.fromARGB(255, 13, 117, 161),
                                                      shape: const RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                                      ),
                                                      onDeleted: () {
                                                        context.read<CouponBloc>().add(
                                                          CouponEvent.delete(couponItem.code!),
                                                        );
                                                      },
                                                      onPressed: null,
                                                      onSelected: null,
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
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
                                        MainNavigation.push(context, MainNavigation.newAddressFromAccount(customerId, true , false, null, "completeorder", true));
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
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 270,
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
                                                        MainNavigation.push(context, MainNavigation.newAddressFromAccount(customerId, true, false, model.billing[index], 'completeorder', false));
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Text("${model.billing[index].first_name} ${model.billing[index].last_name}"),
                                            ],
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                  model.billing.isEmpty ? const SizedBox.shrink():
                                  Padding(
                                    padding: EdgeInsets.only(top : 15.0),
                                    child: GestureDetector(
                                      onTap: (){
                                        MainNavigation.push(context, MainNavigation.newAddressFromAccount(customerId, true, false, null,'completeorder',true));
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

                                Container(
                                    child: FutureBuilder(
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

                                          Map<String,dynamic> updatePrices(sm) {

                                            var shippingCost;
                                            var shippingCostValue;
                                            var minAmount;
                                            double? minAmountValue;
                                            double? valueDifference;

                                            if(sm!.settings?.cost?.value != null) {
                                              if(sm!.settings?.cost?.value != ''){
                                                shippingCost = (sm!.settings?.cost?.value!)?.replaceAll(',','.');
                                                shippingCost = (double.tryParse(shippingCost)! + (double.tryParse(shippingCost)!*.22) ).toStringAsFixed(2);
                                                shippingCostValue = double.tryParse(shippingCost);
                                              }
                                            }

                                            if(sm!.settings?.minAmount?.value != null) {
                                              if(sm.settings?.minAmount?.value != ''){
                                                minAmount = (sm.settings?.minAmount?.value!)?.replaceAll(',','.');
                                                minAmount = (double.tryParse(minAmount)!).toStringAsFixed(2);
                                                valueDifference = double.tryParse(minAmount)! - cartTotalValue!;
                                                minAmountValue = double.tryParse(double.tryParse(minAmount)!.toStringAsFixed(2));
                                              }
                                            }

                                            if((minAmount ==null || (minAmount!=null && valueDifference!<= 0)) ) {


                                              Future.wait([]).then((value) => {
                                                setState(() {
                                                  if(shippingCostValue != null && shippingCostValue != '') {
                                                    shippingPrice = shippingCost;
                                                    shippingPriceValue = shippingCostValue;
                                                    cartSummedPrice = cartTotalValue! + shippingCostValue;

                                                  } else {
                                                    shippingPrice = 'GRATIS';
                                                    shippingPriceValue =0;
                                                    cartSummedPrice = cartTotalValue!;
                                                  }
                                                })
                                              });
                                            }


                                            return {
                                           'shippingCost': shippingCost,
                                            'shippingCostValue' : shippingCostValue,
                                            'minAmount': minAmount,
                                            'minAmountValue':  minAmountValue,
                                            'valueDifference':valueDifference
                                            };

                                          }

                                          return Container(
                                              alignment: Alignment.topLeft,
                                              padding: EdgeInsets.symmetric(vertical: 8),
                                              height: containerHeight*sm!.length,
                                              child: ListView.builder(
                                                physics: const NeverScrollableScrollPhysics() ,
                                                shrinkWrap: true,
                                                itemCount: sm!.length,
                                                itemBuilder: (context,index){


                                                  var shippingCost;
                                                  var shippingCostValue;
                                                  var minAmount;
                                                  double? minAmountValue;
                                                  double? valueDifference;

                                                  //updatePrices(sm[index]);

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
                                                    // print('defaultDefined');
                                                    // print(sm[index]!.title!);
                                                    gruppoval = sm[index]!.id!;


                                                    Future.wait([]).then((value) => {
                                                      setState(() {
                                                      if(shippingCostValue != null && shippingCostValue != '') {
                                                      shippingPrice = shippingCost;
                                                      shippingPriceValue = shippingCostValue;
                                                      cartSummedPrice = cartTotalValue! + shippingCostValue;

                                                      } else {
                                                      shippingPrice = 'GRATIS';
                                                      shippingPriceValue =0;
                                                      cartSummedPrice = cartTotalValue!;
                                                      }
                                                      })
                                                    });

                                                    defaultDefined =true;

                                                  }

                                                  String cleanedTitle = removeAllHtmlTags('${sm[index]!.title}');




                                                  return Container(

                                                    height: containerHeight,
                                                    child: GestureDetector(
                                                      onTap: () {

                                                       // print('@@@ ONTAP');
                                                        // print(minAmount ==null || (minAmount!=null && valueDifference! <= 0));

                                                        if((minAmount ==null || (minAmount!=null && valueDifference!<= 0)) ) {


                                                          setState(() {
                                                            gruppoval = sm[index]!.id!;
                                                          });

                                                          // print('shippingCostValue');
                                                          // print(shippingCostValue);


                                                          setState(() {
                                                            if(shippingCostValue != null && shippingCostValue != '') {
                                                              shippingPrice = shippingCost;
                                                              shippingPriceValue = shippingCostValue;
                                                              cartSummedPrice = cartTotalValue! + shippingCostValue;

                                                            } else {
                                                              shippingPrice = 'GRATIS';
                                                              shippingPriceValue =0;
                                                              cartSummedPrice = cartTotalValue!;
                                                            }
                                                          });


                                                          print('cartSummedPrice @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@');
                                                          print(cartSummedPrice);


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
                                                              child: Container(
                                                                  alignment: Alignment.topLeft,
                                                                  padding: const EdgeInsets.only(top: 0.0, left: 15),
                                                                  child:  Column(
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                      RichText(
                                                                        text: TextSpan(
                                                                          text: '',
                                                                          style: TextStyle(color: Colors.black),
                                                                          children: <TextSpan>[

                                                                            TextSpan(
                                                                              text: shippingCost!=null?'€ ${shippingCost} ':'',
                                                                              style: TextStyle(
                                                                                  fontWeight: FontWeight.bold
                                                                              ),

                                                                            ),
                                                                            TextSpan(text: '${sm[index]!.title}'),

                                                                        TextSpan(
                                                                          text: minAmount!=null?' a partire da € ${minAmount} ':'',
                                                                          // style: TextStyle(
                                                                          //     fontWeight: FontWeight.bold
                                                                          // ),
                                                                        ),

                                                                          // TextSpan(text: '|${cart.totals.totalPrice}'),
                                                                            // TextSpan(text: '|${cart.totals.totalDiscount}'),
                                                                            //TextSpan(text: '|${((cart.totals.totalItems)+ cart.totals.totalItems! * 0.22)}'),
                                                                            // TextSpan(text: '|${cart.totalItems}'),
                                                                            // TextSpan(text: '|${cart.items.first.prices?.price!}'),
                                                                            // TextSpan(text: '|${minAmountValue!}'),
                                                                            // TextSpan(text: '|${valueDifference!}'),
                                                                            //TextSpan(text: '|${cart.totals.totalItems!.runtimeType}'),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      (minAmountValue !=null && valueDifference!>0)?
                                                                      RichText(
                                                                        text: TextSpan(
                                                                          text: 'Mancano ',
                                                                          style: TextStyle(color: Colors.grey),
                                                                          children: <TextSpan>[

                                                                            TextSpan(
                                                                              text: valueDifference>0?'€ ${valueDifference.toStringAsFixed(2).replaceAll('.', ',')}':'',
                                                                              style: TextStyle(
                                                                                  fontWeight: FontWeight.bold
                                                                              ),

                                                                            ),
                                                                            TextSpan(text: ' per usufruire della spedizione gratuita.'),

                                                                          ],
                                                                        ),
                                                                      )
                                                                          :SizedBox()
                                                                    ],
                                                                  )
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 40,
                                                              height:40,
                                                              child: Radio(
                                                                  activeColor: const Color.fromARGB(255, 158, 29, 48),
                                                                  value: sm[index]!.id!,
                                                                  groupValue: gruppoval,
                                                                  onChanged: (minAmount!=null && valueDifference!>0) ? null : (val) {
                                                                    setState(() {
                                                                      gruppoval = sm[index]!.id!;
                                                                    });

                                                                    setState(() {
                                                                      if(shippingCostValue != null && shippingCostValue != '') {
                                                                        shippingPrice = shippingCost;
                                                                        cartSummedPrice = cartTotalValue! + shippingCostValue;

                                                                      } else {
                                                                        shippingPrice = 'GRATIS';
                                                                        cartSummedPrice = cartTotalValue!;
                                                                      }
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

                                        return SizedBox();
                                      },
                                    )
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
                                          MainNavigation.push(context, MainNavigation.newAddressFromAccount(customerId, false,true, null,'completeorder', true));
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
                                            activeColor: Color.fromARGB(255, 161, 29, 51),
                                            onChanged: (int? value) {
                                              setState(() {
                                                selectedShippingIndex = value;
                                                 selectedShippingAddress = model.shipping[value!];
                                                shippingPostocde = ((selectedBillingAddress?.postcode != null && selectedShippingAddress?.postcode != '') ? selectedShippingAddress?.postcode : selectedBillingAddress?.postcode)!;
                                                getShippingMethods(shippingPostocde);
                                              });
                                            },
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    width: 270,
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
                                                        MainNavigation.push(context, MainNavigation.newAddressFromAccount(customerId, false, true, model.shipping[index], 'completeorder', false));
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Text("${model.shipping[index].first_name} ${model.shipping[index].last_name}"),
                                            ],
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                  model.shipping.isEmpty ? const SizedBox.shrink():

                                  Padding(
                                    padding: EdgeInsets.only(top : 15.0),
                                    child: GestureDetector(
                                      onTap: (){
                                        MainNavigation.push(context, MainNavigation.newAddressFromAccount(customerId, false, true, null, "completeorder", true));
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


                                  Container(
                                      child: FutureBuilder(
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
                                                height: containerHeight*pg!.length,
                                                child: ListView.builder(
                                                  physics: const NeverScrollableScrollPhysics() ,
                                                  shrinkWrap: true,
                                                  itemCount: pg!.length,
                                                  itemBuilder: (context,index){

                                                    String? pgIcon = '';
                                                    String pgDescr = unescape.convert('${pg[index]?.description}');
                                                    pgDescr = removeAllHtmlTags(
                                                        pgDescr);
                                                    amountCart = int.parse(cart.totals.totalPrice??'0');

                                                    switch(pg[index]?.id)  {
                                                      case 'stripe' : {
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

                                                    return Container(

                                                      height: containerHeight,
                                                      child: GestureDetector(
                                                        onTap: () {

                                                          print('@@@ ONTAP');
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
                                                                            text: '${pgDescr} ',
                                                                            style: const TextStyle(color: Colors.grey),
                                                                            children: <TextSpan>[
                                                                            ],
                                                                          ),
                                                                        )

                                                                      ],
                                                                    )
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 40,
                                                                height:40,
                                                                child: Radio(
                                                                    activeColor: const Color.fromARGB(255, 158, 29, 48),
                                                                    value: index,
                                                                    groupValue: gruppoval2,
                                                                    onChanged: (val) {
                                                                      print(pg[index]!.id!);

                                                                      setState(() {
                                                                        paymentMethodSelected = pg[index]!.id!;
                                                                        gruppoval2 = index;
                                                                      });

                                                                      print(paymentMethodSelected);

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
                                      )
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
                                            "€ ${cartTotalValue?.toStringAsFixed(2).replaceAll('.', ',')}",
                                            style: const TextStyle(fontSize: 13),
                                          ),
                                        ],
                                      ),

                                      // Coupon BlocBuilder for handling coupon logic
                                      BlocBuilder<CouponBloc, CouponState>(
                                        builder: (context, state) {
                                          return state.maybeWhen(
                                            orElse: () {
                                              // Reset the appliedCoupon to 0.0 when no coupon is applied
                                              Future.delayed(Duration.zero, () {
                                                setState(() {
                                                  appliedCoupon = 0.0;
                                                  appliedCouponCode = null; // Reset the coupon code
                                                });
                                              });
                                              return const SizedBox();
                                            },
                                            gotCoupon: (coupons) {

                                              double discount = double.tryParse(coupons.amount) ?? 0.0;
                                              bool isPercentageDiscount = coupons.code == "percent20";

                                              // Calculate discount based on the coupon type
                                              if (isPercentageDiscount) {
                                                discount = (double.tryParse(coupons.amount) ?? 0.0) / 100 * cartTotalValue;
                                              } else {
                                                discount = double.tryParse(coupons.amount) ?? 0.0;
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

                                      // Delivery Price Section
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "Consegna:",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                          Text(
                                            shippingPrice == 'GRATIS' ? shippingPrice : "€ ${shippingPrice}",
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
                                                    return Text(
                                                      "€ ${cartSummedPrice.toStringAsFixed(2).replaceAll('.', ',')}",
                                                      style: const TextStyle(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    );
                                                  },
                                                  gotCoupon: (coupons) {
                                                    // Calculate the total after applying the coupon
                                                    double total = cartSummedPrice - appliedCoupon;

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

                                      // Remove Coupon Button
                                      if (appliedCoupon > 0) // Show button only if a coupon is applied
                                        ElevatedButton(
                                          onPressed: () {
                                            // Dispatch an event to remove the coupon via the bloc
                                            BlocProvider.of<CouponBloc>(context).add(CouponEvent.delete(appliedCouponCode ?? ""));

                                            // Update the state after the coupon is removed
                                            setState(() {
                                              appliedCoupon = 0.0; // Reset applied coupon amount
                                              appliedCouponCode = null; // Reset the coupon code
                                              // Optionally, you can reset other related values here if needed
                                            });
                                          },
                                          child: const Text(
                                            "Rimuovi Coupon",
                                            style: TextStyle(color: Color.fromARGB(255, 158, 29, 48)),
                                          ),
                                        ),
                                    ],
                                  ),
                                  const Text(
                                    "Creando questo account confermi di aver letto, compreso e accettato i nostri Termini di servizio e la Politica della Privacy",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 127, 127, 127),
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
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


                                  PrimaryButton(
                                    text: "EFFETTUA ORDINE",
                                    colorText: Colors.white,
                                    disabled: !(model.shipping.isNotEmpty ||  gruppoval==null),
                                    ontap: () {
                                      //print(paymentMethodSelected);
                                      payWithMethodSelected(
                                          paymentMethodSelected,
                                          selectedShippingAddress!,
                                          selectedBillingAddress!,
                                          cart,
                                          customerId
                                      );
                                    },
                                  ),


                                ]),
                          ),
                        );
                      },
                      orElse: (){
                        return const Text('oe');
                      },
                      //orElse: () => const SizedBox(),
                      error: (error) {
                        return Text(error);
                      },
                      notLogged: () {
                        return const Text('nl');
                      },
                      loading: () {
                        return const Center(
                            child: CircularProgressIndicator(
                              color: Color.fromARGB(255, 161, 29, 51),
                            )
                        );
                      }
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }


  void paymentWithPayPal(UserAddress model, UserAddress billing, CartResponse cart) {
    var AddressObject;
    if(model.first_name != '') {
      AddressObject = {
        "recipient_name": "${model.first_name} ${model.last_name}",
        "line1": model.address_1,
        "line2": model.address_2,
        "city": model.city,
        "country_code": "IT",
        "postal_code": model.postcode,
        // "phone": "",
        "state": "${model.state}"
      };
    } else {
      AddressObject = {
        "recipient_name": "${billing.first_name} ${billing.last_name}",
        "line1": billing.address_1,
        "line2": billing.address_2,
        "city": billing?.city,
        "country_code": "IT",
        "postal_code": billing.postcode,
        //"phone": "+393888793391",
        //"phone": "${model.user.first.billing?.phone}",
        "state": billing.state
      };
    }


    List transactionItems =[];

    cart.items.forEach((ele){


      if(
      ele.extensions?.bundles?['bundled_item_data']?['is_hidden_in_cart']!=true
          && ele.extensions?.bundles?['bundled_item_data']?['is_hidden_in_summary'] != true
      ) {

        transactionItems.add(
            {
              "name": "${ele.name}",
              "quantity": ele.quantity,
              "price": (double.parse(ele.prices!.price) / 100).toStringAsFixed(2),
              "currency": "EUR"
            }
        );
      }
// if(
      // ele.extensions?.bundles?.bundledItemData?.isHiddenInCart!=true
      //     && ele.extensions?.bundles?.bundledItemData?.isHiddenInSummary != true
      // ) {
      //
      //   transactionItems.add(
      //       {
      //         "name": "${ele.name}",
      //         "quantity": ele.quantity,
      //         "price": '${(double.parse(ele.prices!.price) / 100).toStringAsFixed(2)}',
      //         "currency": "EUR"
      //       }
      //   );
      // }


    });

    // print(model.user.first.shipping);
    // print(model.user.first.billing);
    // print(amountCart);
    // print(cartSummedPrice);
    print(shippingPrice);
    print(shippingPriceValue);
    print(double.tryParse(shippingPrice) != null?'${shippingPrice??0}':'xx');
    // print(((double.parse(cart.totals.totalPrice) / 100)+shippingPriceValue).toStringAsFixed(2));

    var transactions = [
      {
        "amount": {
          "total": (cartSummedPrice-couponTotalValue).toStringAsFixed(2),
          "currency": "EUR",
          "details": {
            "subtotal": ((double.tryParse(cart.totals.totalItems??'0')! + double.tryParse(cart.totals.totalItemsTax??'0')!) / 100).toStringAsFixed(2),
            "shipping": double.tryParse(shippingPrice) != null?'${shippingPrice??0}':'0.0',
            "shipping_discount": 0,
            "discount" : couponTotalValue.toStringAsFixed(2)
          }
        },
        "description": "Acquisto su Torri Cantine.",
        // "payment_options": {
        //   "allowed_payment_method":
        //       "INSTANT_FUNDING_SOURCE"
        // },
        // "item_list": {
        //   "items": transactionItems,
        //
        //   // shipping address is not required though
        //   "shipping_address": AddressObject,
        // }
      }
    ];


    print(transactions);

    //return;

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => UsePaypal(
            sandboxMode: true,
            clientId: "ATxBrg2EyZZZy6ZEz9szvZhC_6zRLXkhDEW7F6OPlK1sCExdLI8-WqOlhfSRHoNAGlRm7DItRT3aSxKG",
            secretKey: "ENa2wS9bWvQ9htsT0027pYdvXZ3OcE7qFhTwgli0OLtXynObgCh4F7PvM6vmKgeywPOQf9Sn0vz8KGVL",
            returnURL: "${AppConfig.baseUrl}/return",
            cancelURL: "${AppConfig.baseUrl}/cancel",
            transactions: [
              {
                "amount": {
                  "total": (cartSummedPrice-couponTotalValue).toStringAsFixed(2),
                  "currency": "EUR",
                  "details": {
                    "subtotal": ((double.tryParse(cart.totals.totalItems??'0')! + double.tryParse(cart.totals.totalItemsTax??'0')!) / 100).toStringAsFixed(2),
                    "shipping": double.tryParse(shippingPrice) != null?'${shippingPrice??0}':'0.0',
                    "shipping_discount": 0,
                    "discount" : couponTotalValue.toStringAsFixed(2)
                  }
                },
                "description": "Acquisto su Torri Cantine.",
                // "payment_options": {
                //   "allowed_payment_method":
                //       "INSTANT_FUNDING_SOURCE"
                // },
                // "item_list": {
                //   "items": transactionItems,
                //
                //   // shipping address is not required though
                //   "shipping_address": AddressObject,
                // }
              }
            ],
            note: "Contattaci per ogni esigenza.",
            onSuccess: (Map params) async {
              context.read<MyOrdersBloc>().add(
                MyOrdersEvent.createCheckout(
                    billing !=null ?
                    Billing(
                      first_name: billing.first_name,
                      last_name: billing.last_name,
                      company: billing.company,
                      address_1: billing.address_1,
                      address_2: billing.address_2,
                      city: billing.city,
                      state: billing.state,
                      // state:
                      //     model.user.first.billing!.state,
                      postcode: billing.postcode,
                      country: "IT",
                      // country:
                      //     model.user.first.billing!.country,
                      email: billing.email,
                      phone: billing.phone,
                    ):
                    Billing(
                      first_name: model.first_name,
                      last_name: model.last_name,
                      company: model.company,
                      address_1: model.address_1,
                      address_2: model.address_2,
                      city: model.city,
                      state: model.state,
                      // state:
                      //     model.user.first.shipping!.state,
                      postcode: model.postcode,
                      country: "IT",
                      // country: model
                      //     .user.first.shipping!.country,
                    ),
                    Shipping(
                      first_name: model.first_name,
                      last_name: model.last_name,
                      company: model.company,
                      address_1: model.address_1,
                      address_2: model.address_2,
                      city: model.city,
                      state: model.state,
                      // state:
                      //     model.user.first.shipping!.state,
                      postcode: model.postcode,
                      country: "IT",
                      // country: model
                      //     .user.first.shipping!.country,
                    ),
                    note.text,
                    "ppcp-gateway",
                    []),
              );
              const MainNavigation.thankYou();
              if (kDebugMode) {
                print("onSuccess: $params");
              }
            },
            onError: (error) {
              if (kDebugMode) {
                print("onError: $error");
              }
              Navigator.of(context).pop();
            },
            onCancel: (params) {
              Navigator.of(context).pop();
              if (kDebugMode) {
                print('cancelled: $params');
              }
            }),
      ),
    );
  }

  void paymentWithCod(UserAddress shipping, UserAddress billing) {
    context.read<MyOrdersBloc>().add(
      MyOrdersEvent.createCheckout(
          billing !=null ?
          Billing(
            first_name: billing!.first_name,
            last_name: billing!.last_name,
            company: billing!.company,
            address_1: billing!.address_1,
            address_2: billing!.address_2,
            city: billing!.city,
            state: billing!.state,
            // state:
            //     model.user.first.billing!.state,
            postcode: billing!.postcode,
            country: "IT",
            // country:
            //     model.user.first.billing!.country,
            email: billing!.email,
            phone: billing!.phone,
          ):
          Billing(
            first_name: shipping!.first_name,
            last_name: shipping!.last_name,
            company: shipping!.company,
            address_1: shipping!.address_1,
            address_2: shipping!.address_2,
            city: shipping!.city,
            state: shipping!.state,
            // state:
            //     model.user.first.shipping!.state,
            postcode: shipping!.postcode,
            country: "IT",
            // country: model
            //     .user.first.shipping!.country,
          ),
          Shipping(
            first_name: shipping!.first_name,
            last_name: shipping!.last_name,
            company: shipping!.company,
            address_1: shipping!.address_1,
            address_2: shipping!.address_2,
            city: shipping!.city,
            state: shipping!.state,
            postcode: shipping!.postcode,
            country: "IT",
          ),
          note.text,
          "cod",
          []),
    );
  }

  void paymentWithBacs(UserAddress shipping, UserAddress billing) {
    context.read<MyOrdersBloc>().add(
      MyOrdersEvent.createCheckout(
          billing !=null ?
          Billing(
            first_name: billing!.first_name,
            last_name: billing!.last_name,
            company: billing!.company,
            address_1: billing!.address_1,
            address_2: billing!.address_2,
            city: billing!.city,
            state: billing!.state,
            // state:
            //     model.user.first.billing!.state,
            postcode: billing!.postcode,
            country: "IT",
            // country:
            //     model.user.first.billing!.country,
            email: billing!.email,
            phone: billing!.phone,
          ):
          Billing(
            first_name: shipping!.first_name,
            last_name: shipping!.last_name,
            company: shipping!.company,
            address_1: shipping!.address_1,
            address_2: shipping!.address_2,
            city: shipping!.city,
            state: shipping!.state,
            // state:
            //     model.user.first.shipping!.state,
            postcode: shipping!.postcode,
            country: "IT",
            // country: model
            //     .user.first.shipping!.country,
          ),
          Shipping(
            first_name: shipping!.first_name,
            last_name: shipping!.last_name,
            company: shipping!.company,
            address_1: shipping!.address_1,
            address_2: shipping!.address_2,
            city: shipping!.city,
            state: billing!.state,
            postcode: shipping!.postcode,
            country: "IT",
          ),
          note.text,
          "bacs",
          []),
    );
  }

  void payWithMethodSelected(String paymentMethod, UserAddress shipping, UserAddress billing, CartResponse cart, int customerId) {
    //int stripeAmount = ((amountCart ?? 0) - (int.tryParse((appliedCoupon * 100).toString()) ?? 0));
    int stripeAmount = ((int.tryParse((cartSummedPrice * 100).toStringAsFixed(0) ) ?? 0) - (couponTotalInt ?? 0));


    switch (paymentMethod) {
      case "ppcp-gateway":
        paymentWithPayPal(shipping, billing,cart);
        break;
      case "stripe":
        StripePaymentManager.makePayment(stripeAmount, "EUR", context, shipping,billing,customerId);
        break;
      case "bacs":
        paymentWithBacs(shipping, billing);
        break;
      case "cod":
        paymentWithCod(shipping, billing);
        break;
      default:
    }
  }
}
