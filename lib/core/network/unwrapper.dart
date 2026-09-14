import 'package:dio/dio.dart';
import 'exceptions.dart';

T unwrapResult<T>(
  Response response,
  T Function(dynamic json) fromJson,
) {
  final data = response.data;
  if (data is Map<String, dynamic>) {
    final bool isSuccess = data['bSuccess'] == true;
    final String? message = data['szMessage'];

    if (isSuccess) {
      final oResult = data['oResult'];
      return fromJson(oResult);
    } else {
      // Lempar ApiException dengan pesan Bahasa Indonesia langsung dari server
      throw ApiException(
        message?.isNotEmpty == true ? message! : 'Permintaan tidak dapat diproses.',
      );
    }
  }
  throw const ApiException('Format respons server tidak sesuai.');
}
