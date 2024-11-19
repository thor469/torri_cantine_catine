import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:torri_cantine_app/app/cache_manager/cache_manager.dart';
import 'package:torri_cantine_app/app/dependency_injection/dependency_factory_impl.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';


class SlideBanners extends StatefulWidget {
  const SlideBanners({super.key});

  @override
  State<SlideBanners> createState() => _SlideBannersState();
}

class _SlideBannersState extends State<SlideBanners> {
  int activeIndex = 0;
  List<WpCustomBanner>? bannerList = [];
  late Future<List<WpCustomBanner?>>? bannerListFuture;

  @override
  void initState() {
    bannerListFuture = getCustomPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: bannerListFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SizedBox();
        } else if (snapshot.hasError || !snapshot.hasData) {
          return const SizedBox(); // Gestione errori personalizzabile
        } else {
          final snapData = snapshot.data;
          return Center(
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CarouselSlider.builder(
                      itemCount: snapData!.length,
                      itemBuilder: (context, index, realIndex) {
                        final imageUrl = snapData[index]!.featuredMediaUrl!;
                        return Container(
                          margin: const EdgeInsets.all(5),
                          child: AspectRatio(
                            aspectRatio: 16 / 9,
                            child: GestureDetector(
                              onTap: () {
                                final linkType = snapData[index]!
                                    .meta
                                    .ctaLink!
                                    .split('=')[0];
                                final linkId = snapData[index]!
                                    .meta
                                    .ctaLink!
                                    .split('=')[1];
                                if (linkType == 'product') {
                                  MainNavigation.push(
                                      context,
                                      MainNavigation.productDetail(
                                          int.tryParse(linkId)!));
                                }
                                if (linkType == 'category') {
                                  MainNavigation.push(
                                      context,
                                      MainNavigation.categoriesDetail(
                                          int.tryParse(linkId)!));
                                }
                              },
                              child: CachedNetworkImage(
                                imageUrl: imageUrl,
                                cacheKey: DynamicCacheManager()
                                    .generateKey(imageUrl), // Usa il tuo DynamicCacheManager
                                placeholder: (context, url) =>
                                const Center(child: CircularProgressIndicator(color: Color.fromARGB(255, 161, 29, 51),)),
                                errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                                cacheManager: DynamicCacheManager(), // Usa il DynamicCacheManager
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                      options: CarouselOptions(
                        viewportFraction: 0.93,
                        height: 250,
                        onPageChanged: (index, reason) =>
                            setState(() => activeIndex = index),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 215,
                  left: 170,
                  child: buildDotsIndicator(snapData),
                ),
              ],
            ),
          );
        }
      },
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
  const dep = DependencyFactoryImpl();
  Dio dio = dep.createDioForApi().dio;

  try {
    var response = await dio.request(
      '/wp-json/wp/v2/app_slides?orderby=date&order=desc&status=publish&per_page=5&_fields[]=id&_fields[]=title&_fields[]=slug&_fields[]=featured_media&_fields[]=meta',
      options: Options(method: 'GET'),
    );

    if (response.statusCode == 200) {
      final List<dynamic> posts = response.data;

      for (var post in posts) {
        if (post['featured_media'] != null) {
          try {
            var mediaResponse = await dio.request(
              '/wp-json/wp/v2/media/${post['featured_media']}',
              options: Options(method: 'GET'),
            );

            if (mediaResponse.statusCode == 200) {
              final mediaData = mediaResponse.data;
              post['featured_media_url'] = mediaData['source_url'];
              banners.add(WpCustomBanner.fromJson(post));
            }
          } catch (e) {
            if (kDebugMode) {
              print('Error fetching media: $e');
            }
          }
        }
      }
    } else {
      throw Exception('Failed to load posts');
    }
  } catch (e) {
    if (kDebugMode) {
      print('getCustomPosts() error: $e');
    }
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

    if (kDebugMode) {
      print('fromJson');
    }
    if (kDebugMode) {
      print(json);
    }

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