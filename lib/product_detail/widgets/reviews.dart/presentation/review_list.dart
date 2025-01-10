import 'package:auto_route/auto_route.dart';
import 'package:configurable_expansion_tile_null_safety/configurable_expansion_tile_null_safety.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
import 'package:torri_cantine_app/app/routing/auto_route/app_router.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/product_detail/widgets/reviews.dart/model/response/reviews_response.dart';
import 'package:torri_cantine_app/product_detail/widgets/reviews.dart/reviews/reviews_bloc.dart';

class ReviewsList extends StatefulWidget {
  final int product_id;

  const ReviewsList({
    super.key,
    required this.product_id,
  });

  @override
  State<ReviewsList> createState() => _ReviewsListState();
}

bool isExpanded = false;


class _ReviewsListState extends State<ReviewsList> {
  @override
  void initState() {
    context.read<ReviewsBloc>().add(ReviewsEvent.fetch(widget.product_id));
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return ConfigurableExpansionTile(
      onExpansionChanged: (value) => setState(() {
        isExpanded = value;
      }),
      header: (isExpanded, iconTurns, heightFactor, controller) => SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("RECENSIONI", style: TCTypography.of(context).text_14_bold),
            isExpanded == false
                ? const Icon(Icons.add)
                : const Icon(Icons.remove)
          ]),
        ),
      ),
      childrenBody: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: BlocBuilder<ReviewsBloc, ReviewsState>(
          builder: (context, state) => state.maybeWhen(
              orElse: () => const SizedBox(),

              //RegExp(
              //                                                   r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^`{|}~]+@[a-zA-Z0-9]+.[a-zA-Z]+")
              //                                                   .hasMatch(model.reviews![index].reviewer!)==true
              loaded: (model) => model.reviews!.isEmpty
                  ? SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (model.reviews != null && model.reviews!.isNotEmpty) // Check if there are reviews
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 16, bottom: 16),
                                child: Text(
                                  "${model.reviews!.length}/5",  // Display the average rating
                                  style: TCTypography.of(context).text_16_bold,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16, bottom: 16),
                                child: Text(
                                  "  ${model.reviews!.length} recensioni",  // Corrected to "recensioni"
                                  style: TCTypography.of(context).text_16,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              context.router.push(AddReviewRoute(productId: widget.product_id));

                              // MainNavigation.push(context, MainNavigation.addReview(widget.product_id),);
                            },
                            child: Text(
                              "Vedi tutte",
                              style: TCTypography.of(context).text_14_bold.copyWith(
                                color: const Color.fromARGB(255, 161, 29, 51),
                              ),
                            ),
                          ),
                        ],
                      ),

                    if (model.reviews == null || model.reviews!.isEmpty) // Display a message if no reviews
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Nessuna recensione disponibile",
                              style: TCTypography.of(context).text_14_bold,
                            ),
                          ],
                        ),
                      ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // RatingBar.builder(
                        //   itemSize: 17,
                        //   initialRating: (model!.reviews != null && model!.reviews!.isNotEmpty)
                        //       ? model!.reviews!.length.toDouble()
                        //       : 0.0,
                        //
                        //   // Display actual average rating or 0 if none
                        //   minRating: 1,
                        //   direction: Axis.horizontal,
                        //   allowHalfRating: true,
                        //   itemCount: 5,
                        //   itemBuilder: (context, _) => const Icon(
                        //     Icons.star,
                        //     color: Color.fromARGB(255, 13, 117, 161),
                        //   ),
                        //   onRatingUpdate: (rating) {},
                        // ),
                        GestureDetector(
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: const Color.fromARGB(255, 161, 29, 52),
                            ),
                            child: const Center(
                              child: Text(
                                "LASCIA UNA RECENSIONE",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          onTap: () {
                            context.router.push(AddReviewRoute(productId: widget.product_id));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              )

                  : SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 16, bottom: 16),
                                    child: model.reviews!.length == 1
                                        ? Text(
                                            "  (1 recensione)",
                                            style: TCTypography.of(context)
                                                .text_16,
                                          )
                                        : Row(
                                            children: [
                                              Text(
                                                ("${avgRating(model.reviews ?? []).toStringAsFixed(1)}/5"),
                                                style: TCTypography.of(context)
                                                    .text_16_bold,
                                              ),
                                              Text(
                                                "  (${model.reviews!.length} recensioni)",
                                                style: TCTypography.of(context)
                                                    .text_16,
                                              )
                                            ],
                                          ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      context.router.push(AddReviewRoute(productId: widget.product_id));
                                    },
                                    child: Text(
                                      "Vedi tutte",
                                      style: TCTypography.of(context)
                                          .text_14_bold
                                          .copyWith(
                                            color: const Color.fromARGB(
                                                255, 161, 29, 51),
                                          ),
                                    ),
                                  ),
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
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            child: SizedBox(
                              height: 280,
                              child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: model.reviews!.length,
                                itemBuilder: (context, index) {

                                  String reviewerName = model.reviews![index].reviewer!;
                                  if(RegExp(
                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^`{|}~]+@[a-zA-Z0-9]+.[a-zA-Z]+")
                                      .hasMatch(model.reviews![index].reviewer!)) {
                                        reviewerName = 'Utente${DateFormat('mmss').format(DateTime.tryParse(model.reviews![index].date_created!)!)}';
                                        // reviewerName = reviewerName.split('@')[0][0];
                                        // for(int i=0;i<reviewerName.split('@')[0].length-1;i++) {
                                        //   reviewerName+='*';
                                        // }
                                        // reviewerName+='@';
                                        // reviewerName += reviewerName.split('@')[1][0];
                                        // for(int i=0;i<reviewerName.split('@')[1].split('.')[0].length-1;i++) {
                                        //   reviewerName+='*';
                                        // }
                                        // reviewerName+='.';
                                        // reviewerName+=reviewerName.split('@')[1].split('.')[1];
                                  }


                                  return Padding(
                                    padding: const EdgeInsets.only(top: 18),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "$reviewerName ",
                                              style:
                                              TCTypography.of(context)
                                                  .text_12_bold,
                                            ),
                                            RatingBar.builder(
                                              ignoreGestures: true,
                                              itemSize: 17,
                                              initialRating: model
                                                  .reviews![index].rating!
                                                  .toDouble(),
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemBuilder: (context, _) =>
                                                  const Icon(
                                                Icons.star,
                                                color: Color.fromARGB(
                                                    255, 13, 117, 161),
                                              ),
                                              onRatingUpdate: (rating) {},
                                            ),
                                          ],
                                        ),
                                        Container(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            DateFormat('dd-MM-yyyy').format(DateTime.tryParse(model.reviews![index].date_created!)!),
                                            style:
                                            TCTypography.of(context)
                                                .text_12,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                  width: 270,
                                                  child: Html(
                                                    data: model
                                                        .reviews![index].review,
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              // RatingBar.builder(
                              //   itemSize: 17,
                              //   initialRating: 3,
                              //   minRating: 1,
                              //   direction: Axis.horizontal,
                              //   allowHalfRating: true,
                              //   itemCount: 5,
                              //   itemBuilder: (context, _) => const Icon(
                              //     Icons.star,
                              //     color: Color.fromARGB(255, 13, 117, 161),
                              //   ),
                              //   onRatingUpdate: (rating) {
                              //     print(rating);
                              //   },
                              // ),
                              GestureDetector(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color:
                                        const Color.fromARGB(255, 161, 29, 52),
                                  ),
                                  child: const Center(
                                    child: Text("LASCIA UNA RECENSIONE",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                onTap: () {
                                  context.router.push(AddReviewRoute(productId: widget.product_id));
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
        ),
      ),
    );
  }
}

double avgRating(List<Review> reviews) {
  if (reviews.isEmpty) {
    return 0.0; // Return 0.0 if no reviews are available
  }

  // Filter out any null ratings before calculating
  int sumRating = reviews
      .where((review) => review.rating != null) // Ensure ratings are non-null
      .map((review) => review.rating!) // Use non-null ratings
      .reduce((a, b) => a + b); // Sum up the ratings

  // Count the number of valid ratings
  int validRatingCount = reviews.where((review) => review.rating != null).length;

  // Calculate the average rating
  double ratingAverage = sumRating / validRatingCount; // Calculate the average out of valid ratings

  // Store the average rating in shared preferences
  _storeRatingInPreferences(ratingAverage);

  return ratingAverage; // Return the average rating
}

Future<void> _storeRatingInPreferences(double ratingAverage) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setDouble('avg_rating', ratingAverage);
}

Future<double?> getStoredRating() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getDouble('avg_rating');
}

