import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:torri_cantine_app/app/cache_manager/cache_manager.dart';

class HorizontalList extends StatefulWidget {
  final String pathImage;
  const HorizontalList({super.key, required this.pathImage});

  @override
  State<HorizontalList> createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
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
        ],
      ),
    );
  }
}