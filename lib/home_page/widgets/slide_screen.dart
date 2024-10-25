import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:torri_cantine_app/home_page/widgets/custom_post.dart';


class SlideScreen extends StatefulWidget {
  const SlideScreen({super.key});

  @override
  State<SlideScreen> createState() => _SlideScreenState();
}

class _SlideScreenState extends State<SlideScreen> {
  int activeIndex = 0;
  final List<String> imagesList = [
    "assets/vino1.jpg",
    "assets/vino2.jpg",
    "assets/vino3.jpg",
    "assets/vino4.jpg"
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }




  @override
  Widget build(BuildContext context) {



    return Center(
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CarouselSlider.builder(
                itemCount: imagesList.length,
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    margin: const EdgeInsets.all(5),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Image.asset(
                        imagesList[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                  viewportFraction: 0.93,
                  height: 250,
                  onPageChanged: (index, reason) => setState(
                    () => activeIndex = index,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 215,
            left: 170,
            child: buildDotsIndicator(),
          ),
        ],
      ),
    );
  }





  Widget buildDotsIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: imagesList.length,
        effect: const JumpingDotEffect(
          dotWidth: 10,
          dotHeight: 10,
          activeDotColor: Colors.white,
          dotColor: Colors.grey,
        ),
      );
}
