import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:torri_cantine_app/app/common/primary_button.dart';
import 'package:torri_cantine_app/app/common/sub_page_appbar.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
import 'package:torri_cantine_app/app/routing/auto_route/app_router.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/login/login/login_bloc.dart';
import 'package:torri_cantine_app/product_detail/presentation/product_detail_screen.dart';
import 'package:torri_cantine_app/product_detail/widgets/reviews.dart/model/response/reviews_response.dart';
import 'package:torri_cantine_app/product_detail/widgets/reviews.dart/reviews/reviews_bloc.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

@RoutePage()
class AddReviewScreen extends StatefulWidget {
  final int productId;

  const AddReviewScreen({super.key, required this.productId});

  @override
  State<AddReviewScreen> createState() => _AddReviewScreenState();
}

class _AddReviewScreenState extends State<AddReviewScreen> {
  LocalStorage storage = LocalStorage();
  TextEditingController reviewsController = TextEditingController();
  double ratingValue = 0;

  bool isLoggedIn = false;
  double avgRating(List<Review> reviews) {
    if (reviews.isEmpty) {
      return 0.0; // Return 0.0 if no reviews are available
    }

    // Sum up the ratings, treating null as 0
    int sumRating = reviews
        .map((review) => review.rating ?? 0) // Treat null ratings as 0
        .reduce((a, b) => a + b); // Sum all ratings

    // Calculate the average by dividing by the total number of reviews
    double ratingAverage = sumRating / reviews.length;

    return ratingAverage;
  }

  @override
  void initState() {
    // TODO: implement initState
    context.read<LoginBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {



    return MultiBlocListener(
      listeners: [
        BlocListener<LoginBloc, LoginState>(
          listener: (context, state) => state.maybeWhen(
            loggedIn: (user) => {
              // print('MultiBlocListener loggedin'),
              // print(user),
              Future.delayed(Duration.zero,(){setState(() {
                isLoggedIn = true;
              });
              }),
            },
            error: (error) {
              // print('MultiBlocListener error');
              // print(error);
              Future.delayed(Duration.zero,(){setState(() {
                isLoggedIn = false;
              });
              });
              return null;
            },
            orElse: () => const SizedBox(),
          ),
        ),
      ],
      child:
      Scaffold(
              appBar: PreferredSize(
      preferredSize: const Size.fromHeight(60),
      child: SubPageAppbar(
        text: "RECENSIONI",
        onTap: () {
          context.router.popForced();
        },
      ),
              ),
              body: BlocBuilder<ReviewsBloc, ReviewsState>(
      builder: (context, state) => state.maybeWhen(

        orElse: () => const SizedBox(),
        loaded: (model) => SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 17.0),
                    child: Text(
                      "Valutazione generale",
                      style: TCTypography.of(context).text_18_bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          model.reviews!.length == 1
                              ? Text(
                            "  (1 recensione)",
                            style: TCTypography.of(context).text_16,
                          )
                              : Row(
                            children: [
                              Text(
                                ("${avgRating(model.reviews ?? []).toStringAsFixed(2)}/5"),
                                style: TCTypography.of(context)
                                    .text_16_bold,
                              ),
                              Text(
                                "  (${model.reviews!.length} recensioni)",
                                style: TCTypography.of(context).text_16,
                              )
                            ],
                          ),
                        ],
                      ),
                      RatingBar.builder(
                        ignoreGestures: true,
                        itemSize: 17,
                        initialRating: avgRating(model.reviews ?? []),
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 13, 117, 161),
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: Row(
                      children: [
                        Text(
                          "Lascia una recensione",
                          style: TCTypography.of(context).text_16_bold,
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 16, top:8),
                    child: RatingBar.builder(
                      itemSize: 24,
                      initialRating: ratingValue,
                      minRating: 0,
                      direction: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 13, 117, 161),
                      ),
                      onRatingUpdate: (rating) {
                        setState(() {
                          ratingValue = rating;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: TextField(
                      maxLines: 5,
                      controller: reviewsController,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: 'Scrivi una recensione...',
                        hintStyle: TCTypography.of(context).text_12,
                      ),
                    ),
                  ),

            BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) => state.maybeWhen(
                loggedIn: (user){
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    child: PrimaryButton(
                      text: "INVIA RECENSIONE",
                      ontap: () async {
                        // Create the review
                        context.read<ReviewsBloc>().add(
                          ReviewsEvent.createReview(
                            widget.productId,
                            reviewsController.text,
                            await storage.getUserName(),
                            await storage.getUserEmail(),
                            DateTime.now().toString(),
                            ratingValue.toInt(),
                          ),
                        );

                        // Navigate to the ReviewsList page after the review is created
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetailScreen(id: widget.productId), // Pass any parameters if needed
                          ),
                        );
                      },
                    ),

                  );
                },
                orElse: (){
                  return Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 12, top:18),
                        child: const Text('Devi effettuare l\'accesso per lasciare una recensione'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        child: PrimaryButton(
                          text: "Login/Registrazione",
                          ontap: () async {
                            context.router.replaceAll([WelcomeRoute(), const LoginRoute()]);
                            // MainNavigation.push(context, const MainNavigation.login(),);
                          },
                        ),
                      )
                    ],
                  );


                }

              )),


                  // Container(
                  //   padding: EdgeInsets.only(bottom: 12, top:18),
                  //   child: !isLoggedIn?Text('Devi effettuare l\'accesso per lasciare una recensione'):null,
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(vertical: 18),
                  //   child: isLoggedIn?PrimaryButton(
                  //     text: "INVIA RECENSIONE",
                  //     ontap: () async {
                  //       MainNavigation.push(
                  //         context,
                  //         MainNavigation.productDetail(widget.product_id),
                  //       );
                  //       context.read<ReviewsBloc>().add(
                  //         ReviewsEvent.createReview(
                  //           widget.product_id,
                  //           reviewsController.text,
                  //           await storage.getUserName(),
                  //           await storage.getUserEmail(),
                  //           DateTime.now().toString(),
                  //           ratingValue.toInt(),
                  //         ),
                  //       );
                  //     },
                  //   ):PrimaryButton(
                  //     text: "Login/Registrazione",
                  //     ontap: () async {
                  //       MainNavigation.push(
                  //         context,
                  //         MainNavigation.login(),
                  //       );
                  //     },
                  //   ),
                  // ),
                  // const Divider(thickness: 1),

                  // BlocBuilder<ReviewsBloc, ReviewsState>(
                  //   builder: (context, state) => state.maybeWhen(
                  //     orElse: () => const SizedBox(),
                  //     loaded: (model) => SizedBox(
                  //       height: MediaQuery.of(context).size.height,
                  //       child: ListView.builder(
                  //         scrollDirection: Axis.vertical,
                  //         itemCount: model.reviews!.isNotEmpty ? 0 : 0,
                  //         itemBuilder: (context, index) {
                  //           return Padding(
                  //             padding: const EdgeInsets.only(top: 18),
                  //             child: Column(
                  //               children: [
                  //                 Row(
                  //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //                   children: [
                  //                     Text(
                  //                       "${model.reviews![index].reviewer}",
                  //                       style: TCTypography.of(context).text_12_bold,
                  //                     ),
                  //                     RatingBar.builder(
                  //                       ignoreGestures: true,
                  //                       itemSize: 17,
                  //                       initialRating: model.reviews![index].rating!.toDouble(),
                  //                       minRating: 1,
                  //                       direction: Axis.horizontal,
                  //                       allowHalfRating: true,
                  //                       itemCount: 5,
                  //                       itemBuilder: (context, _) => const Icon(
                  //                         Icons.star,
                  //                         color: Color.fromARGB(255, 13, 117, 161),
                  //                       ),
                  //                       onRatingUpdate: (rating) {},
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 Container(
                  //                   alignment: Alignment.topLeft,
                  //                   child: Text(
                  //                     "${DateFormat('dd-MM-yyyy').format(DateTime.tryParse(model.reviews![index].date_created!)!)}",
                  //                     style: TCTypography.of(context).text_12.copyWith(
                  //                       color: const Color.fromARGB(255, 99, 103, 106),
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 Padding(
                  //                   padding: const EdgeInsets.only(top: 8),
                  //                   child: Row(
                  //                     children: [
                  //                       SizedBox(
                  //                         width: 270,
                  //                         child: Html(
                  //                           data: model.reviews![index].review,
                  //                         ),
                  //                       ),
                  //                     ],
                  //                   ),
                  //                 ),
                  //               ],
                  //             ),
                  //           );
                  //         },
                  //       ),
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
              ),
            )
    );

  }



}
