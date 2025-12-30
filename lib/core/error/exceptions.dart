class ServerException implements Exception {
  final String message;
  ServerException([this.message = 'Server error']);
  @override
  String toString() => 'ServerException: $message';
}

class CacheException implements Exception {
  final String message;
  CacheException([this.message = 'Cache error']);
  @override
  String toString() => 'CacheException: $message';
}
