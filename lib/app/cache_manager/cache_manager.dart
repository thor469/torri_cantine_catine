import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class DynamicCacheManager extends CacheManager {
  static final DynamicCacheManager _instance = DynamicCacheManager._();

  factory DynamicCacheManager() {
    return _instance;
  }

  DynamicCacheManager._()
      : super(
    Config(
      "dynamicCache",
      stalePeriod: const Duration(days: 7),
      maxNrOfCacheObjects: 200,
      fileService: HttpFileService(),
    ),
  );

  String generateKey(String url) {
    return "cache_${url.hashCode}";
  }
}