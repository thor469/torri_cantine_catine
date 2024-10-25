import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:torri_cantine_app/app/dependency_injection/dependency_factory_impl.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/home_page/widgets/custom_post.dart';


class SlideBanners extends StatefulWidget {
  const SlideBanners({super.key});

  @override
  State<SlideBanners> createState() => _SlideBannersState();
}

class _SlideBannersState extends State<SlideBanners> {
  int activeIndex = 0;
    List<WpCustomBanner>? bannerList = [];
  late Future<List<WpCustomBanner?>>? bannerListFuture;
  bool firstLoad = true;

  @override
  void initState() {
    // TODO: implement initState
    bannerListFuture = getCustomPosts();
    //fetchCustomPosts();
    super.initState();
  }


  void fetchCustomPosts() async {
    var customPosts = await getCustomPosts();
    if(customPosts.isNotEmpty) {
      customPosts.forEach((ele){
        bannerList!.add(ele!);

      });
      //bannerListFuture = bannerList as Future<List<WpCustomBanner?>>?;
    }

    bannerListFuture = getCustomPosts();
  }


  @override
  Widget build(BuildContext context) {


    print('#@#!@#@##!@#!@#@!# !@# CUSTOM POSTS ###################################');
    //Future.delayed(Duration.zero, fetchCustomPosts);

    return Container(
      child: FutureBuilder(
          //future: getCustomPosts(),
          future: bannerListFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const SizedBox();
            } else if (snapshot.hasError) {
              return const SizedBox();
              return const Center(
                child: Text('Error'),
              );
            } else if (snapshot.hasData) {

              print('@#@#@#@ SNAPSHOT DATA');
              print(snapshot.data);
              var snapdata = snapshot.data;

              return Center(
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CarouselSlider.builder(
                          itemCount: snapdata!.length,
                          itemBuilder: (context, index, realIndex) {
                            return Container(
                              margin: const EdgeInsets.all(5),
                              child: AspectRatio(
                                  aspectRatio: 16 / 9,
                                  child: GestureDetector(
                                    onTap: () {
                                      print('Tapped on $index');
                                      print(
                                          'type ${snapdata![index]!.meta.ctaLink}');
                                      print('id ${snapdata![index]!.meta.ctaText}');

                                      String linkType = snapdata![index]!.meta.ctaLink!.split('=')[0];
                                      String linkId = snapdata![index]!.meta.ctaLink!.split('=')[1];

                                      if(linkType == 'product') {
                                        MainNavigation.push(
                                          context,
                                            MainNavigation.productDetail(int.tryParse(linkId)!)
                                        );
                                      }
                                      if(linkType == 'category') {
                                        MainNavigation.push(
                                            context,
                                            MainNavigation.categoriesDetail(int.tryParse(linkId)!)
                                        );
                                      }

                                    },
                                    child: Image.network(
                                      snapdata![index]!.featuredMediaUrl!,
                                      fit: BoxFit.cover,
                                    ),
                                  )
                              ),
                            );
                          },
                          options: CarouselOptions(
                            viewportFraction: 0.93,
                            height: 250,
                            onPageChanged: (index, reason) =>
                                setState(
                                      () => activeIndex = index,
                                ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 215,
                      left: 170,
                      child: buildDotsIndicator(snapdata),
                    ),
                  ],
                ),
              );
            }

            return SizedBox();
          }
          ),
    );






  }




  Widget buildDotsIndicator(data) => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: data!.length,
    effect: const JumpingDotEffect(
      dotWidth: 10,
      dotHeight: 10,
      activeDotColor: Colors.white,
      dotColor: Colors.grey,
    ),
  );
}







Future<List<WpCustomBanner?>> getCustomPosts() async {

  List<WpCustomBanner?> banners = [];
  print(' getCustomPosts()');
  //DIO API
  const dep = DependencyFactoryImpl();
  Dio dio= dep.createDioForApi().dio;

  try {
    var response = await dio.request(
      '/wp-json/wp/v2/app_slides?orderby=date&order=desc&status=publish&per_page=5&_fields[]=id&_fields[]=title&_fields[]=slug&_fields[]=featured_media&_fields[]=meta',
      options: Options(
        method: 'GET',
      ),
    );


    // final response = await http.get(Uri.parse(
    //     'https://risorse.bearit.com/wp-json/wp/v2/testapp?orderby=date&order=desc&status=publish&per_page=5&_fields[]=id&_fields[]=title&_fields[]=slug&_fields[]=featured_media&_fields[]=linktype&_fields[]=linkid'));

    if (response.statusCode == 200) {
      //final List<dynamic> posts = json.decode(response.data);
      final List<dynamic> posts = response.data;

      // print(' getCustomPosts(2)');
      // //print(response);
      // print(response.data);
      // print(response.data.runtimeType);
      // print(posts.isNotEmpty);
      // print(' getCustomPosts(3)');

      if (posts.isNotEmpty) {

        //print(' getCustomPosts()');

        int i=0;
        for(i=0;i<posts.length; i++) {

          //print(' getCustomPosts(2)');
          //print(response);

          //print(posts[i]['featured_media']);




          if (posts[i]['featured_media'] != null) {

            try {

              //DIO API
              var mediaResponse = await dio.request(
                '/wp-json/wp/v2/media/${posts[i]['featured_media']}',
                options: Options(
                  method: 'GET',
                ),
              );

             // print(mediaResponse.data['source_url']);
              //print(' getCustomPosts(3)');

              // final mediaResponse = await http.get(Uri.parse(
              //     'https://risorse.bearit.com/wp-json/wp/v2/media/${posts[i]['featured_media']}')
              // , headers: {
              //       'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjQsIm5hbWUiOiJQdUtiZGplY0dyUHNsMG0iLCJpYXQiOjE3MjQ3NDU2NjAsImV4cCI6MTg4MjQyNTY2MH0.mcRHglNTmpRf-GVMC3W-OEh0EM3zXdqegGtTW21IERs'
              //     }
              // );

              //print(mediaResponse.body);

              if (mediaResponse.statusCode == 200) {
                final mediaData = mediaResponse.data;
                //final mediaData = json.decode(mediaResponse.body);
                posts[i]['featured_media_url'] = mediaData['source_url'];
              }

              //print(posts);


              banners.add(WpCustomBanner.fromJson(posts[i]));

            } catch (e) {
              print('Error fetching media: $e');
            }

          }
        };



      } else {
        throw Exception('No posts found');
      }
    } else {
      throw Exception('Failed to load posts');
    }
  } catch(e) {
    print('getCustomPosts() error');
    print(e);
  }
  return banners;

}









// To parse this JSON data, do
//
//     final customBanner = customBannerFromJson(jsonString);



List<WpCustomBanner> wpCustomBannerFromJson(String str) => List<WpCustomBanner>.from(json.decode(str).map((x) => WpCustomBanner.fromJson(x)));

String wpCustomBannerToJson(List<WpCustomBanner> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class WpCustomBanner {
  int id;
  String slug;
  String featuredMediaUrl;
  Title title;
  int featuredMedia;
  Meta meta;

  WpCustomBanner({
    required this.id,
    required this.slug,
    required this.featuredMediaUrl,
    required this.title,
    required this.featuredMedia,
    required this.meta,
  });

  factory WpCustomBanner.fromJson(Map<String, dynamic> json) {

    print('fromJson');
    print(json);

    return WpCustomBanner(
      id: json["id"],
      slug: json["slug"],
      featuredMediaUrl: json["featured_media_url"],
      title: Title.fromJson(json["title"]),
      featuredMedia: json["featured_media"],
      meta: Meta.fromJson(json["meta"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "slug": slug,
    "title": title.toJson(),
    "featured_media": featuredMedia,
    "meta": meta.toJson(),
  };
}

class Meta {
  String? ctaText;
  String? ctaLink;
  String? ctaColor;

  Meta({
     this.ctaText,
     this.ctaLink,
     this.ctaColor,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
    ctaText: json["cta_text"]??'',
    ctaLink: json["cta_link"]??'',
    ctaColor: json["cta_color"]??'',
  );

  Map<String, dynamic> toJson() => {
    "cta_text": ctaText,
    "cta_link": ctaLink,
    "cta_color": ctaColor,
  };
}

class Title {
  String rendered;

  Title({
    required this.rendered,
  });

  factory Title.fromJson(Map<String, dynamic> json) => Title(
    rendered: json["rendered"],
  );

  Map<String, dynamic> toJson() => {
    "rendered": rendered,
  };
}