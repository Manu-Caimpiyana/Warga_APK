/// Exception umum untuk error bisnis dari server (bSuccess: false atau response error)
class ApiException implements Exception {
  final String message;
  final int? statusCode;
  
  const ApiException(this.message, {this.statusCode});

  @override
  String toString() => message;
}

/// Exception ketika token tidak valid atau expired (HTTP 401)
class UnauthorizedException extends ApiException {
  const UnauthorizedException(super.message) : super(statusCode: 401);
}

/// Exception ketika gagal koneksi fisik / timeout
class NetworkException implements Exception {
  final String message;
  
  const NetworkException(this.message);

  @override
  String toString() => message;
}
