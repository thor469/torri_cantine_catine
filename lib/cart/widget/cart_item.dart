import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:torri_cantine_app/all_products/cubit/products_wishlisted_cubit.dart';
import 'package:torri_cantine_app/app/cache_manager/cache_manager.dart';
import 'package:torri_cantine_app/app/utilitys/tc_typography.dart';
import 'package:torri_cantine_app/cart/add_product_to_cart/add_product_to_cart_bloc.dart';
import 'package:torri_cantine_app/cart/cart/cart_bloc.dart';
import 'package:torri_cantine_app/cart/cubit/cart_badge_cubit_cubit.dart';
import 'package:torri_cantine_app/cart/cubit/counter_single_product_cubit.dart';
import 'package:torri_cantine_app/cart/remove_product_to_cart/remove_product_to_cart_bloc.dart';
import 'package:torri_cantine_app/coupon/coupon/coupon_bloc.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

class CartItem extends StatefulWidget {
  const CartItem({
    super.key,
    required this.productDescription,
    required this.productPrice,
    required this.pathImage,
    required this.keyId,
    required this.quantity,
    required this.id,
  });

  final int id;
  final String productDescription;
  final String productPrice;
  final String pathImage;
  final String keyId;
  final int quantity;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  bool isUpdating = false;
  List<int> updatingItems=[];
  LocalStorage storage = LocalStorage();

  @override
  void initState() {
    super.initState();
  }

  var unescape = HtmlUnescape();

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<RemoveProductToCartBloc, RemoveProductToCartState>(
          listener: (context, state) => state.maybeWhen(
            loading: () => const Center(
              child: CircularProgressIndicator(
                color: Color.fromARGB(255, 161, 29, 51),
              ),
            ),
            removeProduct: (cart) => {

              if(cart.items.length < 1){
                context.read<CartBloc>().deleteCart(),
                for(var item in cart.coupons ?? []){
                  context.read<CouponBloc>().deleteCoupon(item.code),
                },
              },
              context.read<CartBadgeCubitCubit>().removeCartItem(),
              context.read<CartBloc>().add(const CartEvent.fetchTotals()),
              // setState(() {
              //   isUpdating=false;
              // })
            },
            orElse: () => const SizedBox(),
          ),
        ),
        BlocListener<AddProductToCartBloc, AddProductToCartState>(
          listener: (context, state) => state.maybeWhen(
            loading: () => const Center(
              child: CircularProgressIndicator(
                color: Color.fromARGB(255, 161, 29, 51),
              ),
            ),
            updatedProduct: (cart) {
              context.read<CartBloc>().add(const CartEvent.fetchTotals());
            },
            addedProduct: (cart) => {
              context.read<CartBadgeCubitCubit>().addCartItem(),
              context.read<CartBloc>().add(const CartEvent.fetchTotals()),
            },
            orElse: () => const SizedBox(),
          ),
        ),
      ],
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color.fromARGB(255, 212, 211, 211),
            ),
          ),
        ),
        height: MediaQuery.of(context).size.height *0.165,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 60,
              height: 90,
              child: CachedNetworkImage(
                imageUrl: widget.pathImage,
                cacheKey: DynamicCacheManager().generateKey(widget.pathImage),
                placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator(),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                cacheManager: DynamicCacheManager(),
                fit: BoxFit.fitHeight,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    widget.productDescription.isNotEmpty ?
                    unescape.convert(widget.productDescription) : "",
                    maxLines: 2,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text("${widget.productPrice} €",
                    style: TCTypography.of(context).text_18_bold),
                BlocBuilder<CounterSingleProductCubit, Map<String, int>>(
                  builder: (context, state) {
                    return Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Text(
                            "Quantità ",
                            style: TCTypography.of(context).text_12,
                          ),
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                              ),
                              border: Border.all(color: Colors.grey, width: 1)),
                          child: Center(
                            child:
                            IconButton(
                                padding: EdgeInsets.zero,
                                icon: Icon(
                                  Icons.remove,
                                  size: 15,
                                  color: isUpdating?Colors.black26:const Color.fromARGB(255, 110, 116, 119),
                                ),
                                onPressed: isUpdating?null:() {

                                  setState(() {
                                    isUpdating=true;
                                  });

                                  if (state[widget.keyId]! > 1) {
                                    context.read<AddProductToCartBloc>().add(
                                      AddProductToCartEvent.updateProduct(
                                          widget.keyId,
                                          widget.quantity - 1),
                                    );
                                    context
                                        .read<CounterSingleProductCubit>()
                                        .removeCartItem(widget.keyId);
                                    context
                                        .read<CartBadgeCubitCubit>()
                                        .removeCartItem();
                                  } else {
                                    context.read<RemoveProductToCartBloc>().add(
                                        RemoveProductToCartEvent.removeProduct(
                                            widget.keyId, widget.quantity - 1));
                                    context
                                        .read<CartBadgeCubitCubit>()
                                        .removeCartItem();
                                  }

                                  Future.delayed(const Duration( seconds: 2), (){
                                    setState(() {
                                      isUpdating=false;
                                    });
                                  });

                                  // setState(() {
                                  //   isUpdating = false;
                                  // });
                                }
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: Container(
                            width: 25,
                            height: 20,
                            decoration: const BoxDecoration(
                              border: Border.symmetric(
                                  horizontal: BorderSide(color: Colors.grey)
                              ),
                              //borderRadius: BorderRadius.circular(5)
                            ),
                            child: Center(
                              child: Text(
                                state[widget.keyId].toString(),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                              ),
                              border: Border.all(color: Colors.grey, width: 1)),
                          child: Center(
                            child: IconButton(
                                padding: EdgeInsets.zero,
                                icon: Icon(
                                  Icons.add,
                                  size: 15,
                                  color: isUpdating?Colors.black26:const Color.fromARGB(255, 110, 116, 119),
                                ),
                                onPressed: isUpdating?null:() {

                                  setState(() {
                                    isUpdating=true;
                                  });


                                  context.read<AddProductToCartBloc>().add(
                                      AddProductToCartEvent.updateProduct(
                                          widget.keyId, widget.quantity + 1));
                                  context
                                      .read<CounterSingleProductCubit>()
                                      .addCartItem(widget.keyId);
                                  context
                                      .read<CartBadgeCubitCubit>()
                                      .addCartItem();

                                  Future.delayed(const Duration( seconds: 2), (){
                                    setState(() {
                                      isUpdating=false;
                                    });
                                  });

                                }),
                          ),
                        ),
                      ],
                    );
                  },
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  child: updatingItems.contains(widget.id)?
                  const SizedBox(
                    width: 27,
                    height: 27,
                    child: CircularProgressIndicator(color: Color.fromARGB(255, 161, 29, 52),),
                  )
                      :Image.asset(
                    "assets/Carrello-rimuovi.png",
                    width: 27,
                    height: 27,
                  ),
                  onTap: () async{
                    setState(() {
                      //isUpdating = true;
                      updatingItems.add(widget.id);
                    });
                    context.read<RemoveProductToCartBloc>().add(
                        RemoveProductToCartEvent.removeProduct(
                            widget.keyId, 0)
                    );

                    setState(() {
                      //isUpdating = false;
                    });
                  },
                ),
                BlocBuilder<ProductsWishlistedCubit, ProductsWishlistedState>(
                    builder: (context, state) {
                      return GestureDetector(
                        onTap: () {
                          context
                              .read<ProductsWishlistedCubit>()
                              .wishListed(widget.id);
                        },
                        child: state.wishListProducts.contains(widget.id)
                            ? const Icon(Icons.favorite,
                            size: 25, color: Color.fromARGB(255, 161, 29, 51))
                            : const Icon(
                          Icons.favorite_border,
                          size: 25,
                          color: Color.fromARGB(255, 127, 127, 127),
                        ),
                      );
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
