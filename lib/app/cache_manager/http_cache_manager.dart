import 'dart:collection';

class CacheEntry<T> {
  final T data;
  final DateTime timestamp;

  CacheEntry(this.data, this.timestamp);
}

class CacheManager<T> {
  final Duration cacheDuration;
  final _cache = HashMap<String, CacheEntry<T>>();

  CacheManager({required this.cacheDuration});

  T? get(String key) {
    final entry = _cache[key];
    if (entry != null) {
      final isValid = DateTime.now().difference(entry.timestamp) < cacheDuration;
      if (isValid) {
        return entry.data;
      } else {
        _cache.remove(key);
      }
    }
    return null;
  }

  void set(String key, T data) {
    _cache[key] = CacheEntry(data, DateTime.now());
  }

  void clear() {
    _cache.clear();
  }
}