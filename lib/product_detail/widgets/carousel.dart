import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:torri_cantine_app/product_detail/model/tile_model.dart';

class CarouselImg extends StatefulWidget {
  final List<String> imageList;
  final List<Tile> tileList;

  const CarouselImg(
      {super.key, required this.tileList, required this.imageList});

  @override
  State<CarouselImg> createState() => _CarouselImgState();
}

class _CarouselImgState extends State<CarouselImg> {
  bool enableAutoPlay = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.45,
            child: CarouselSlider.builder(
              options: CarouselOptions(
                  autoPlay: enableAutoPlay,
                  viewportFraction: 1,
                  height: MediaQuery.of(context).size.height),
              itemCount: widget.imageList.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  widget.imageList[itemIndex],
                  fit: BoxFit.fitWidth,
                ),
              ),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.45,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_outlined,
                      color: Color(0xff272A2B),
                    ),
                    Icon(
                      Icons.share_outlined,
                      color: Color(0xff272A2B),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 140,
                height: 200,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 140,
                        height: 40,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                            color: widget.tileList[index].type == "isBio"
                                ? Colors.white
                                : widget.tileList[index].type == "isNew"
                                    ? const Color(0xff0D75A1)
                                    : const Color(0xffA11D34),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: widget.tileList[index].type == "isBio"
                                  ? Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                          SvgPicture.asset(
                                            'assets/Bio-label.svg',
                                            color: const Color(0xff008D24),
                                            width: 17,
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(left: 8.0),
                                            child: Text("Bio"),
                                          )
                                        ])
                                  : Text(widget.tileList[index].value,
                                      style: const TextStyle(
                                          color: Colors.white))),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Expanded(child: Container()),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          enableAutoPlay = !enableAutoPlay;
                        });
                      },
                      icon: const Icon(Icons.play_circle_outline_rounded),
                      color: Colors.white,
                    ),
                    const Icon(
                      Icons.zoom_out_map_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
