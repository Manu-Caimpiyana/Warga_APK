import 'dart:convert';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:warga_app/core/network/exceptions.dart';
import 'package:warga_app/core/network/unwrapper.dart';
import 'package:warga_app/features/auth/data/dto/login_response_data.dart';
import 'package:warga_app/features/auth/data/repositories/auth_repository.dart';

// Adapter simulasi untuk mengetes Dio tanpa network call nyata
class MockHttpClientAdapter implements HttpClientAdapter {
  final ResponseBody Function(RequestOptions options) handler;

  MockHttpClientAdapter(this.handler);

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    return handler(options);
  }

  @override
  void close({bool force = false}) {}
}

void main() {
  group('AuthRepository & Unwrapper Tests', () {
    test('unwrapResult mengembalikan LoginResponseData saat bSuccess: true', () {
      final mockResponse = Response(
        requestOptions: RequestOptions(path: '/Auth/Login'),
        statusCode: 200,
        data: {
          'bSuccess': true,
          'szMessage': 'Success',
          'oResult': {
            'user': {
              'szName': 'Nia Kurnia Agustina',
              'szNik': '3271024708840002',
              'bOfficer': true,
              'bFinance': true,
            },
            'token': 'test_jwt_token_123',
            'szWelcomePage': 'welcome',
          },
          'oResultType': 'LoginResponseData',
        },
      );

      final result = unwrapResult<LoginResponseData>(
        mockResponse,
        (json) => LoginResponseData.fromJson(json as Map<String, dynamic>),
      );

      expect(result.token, equals('test_jwt_token_123'));
      expect(result.user.szName, equals('Nia Kurnia Agustina'));
      expect(result.user.szNik, equals('3271024708840002'));
      expect(result.user.bOfficer, isTrue);
      expect(result.user.bFinance, isTrue);
    });

    test('unwrapResult melempar ApiException saat server return bSuccess: false', () {
      final mockResponse = Response(
        requestOptions: RequestOptions(path: '/Auth/Login'),
        statusCode: 200,
        data: {
          'bSuccess': false,
          'szMessage': 'Nomor Induk Keluarga (NIK) tidak terdaftar.',
          'oResult': null,
          'oResultType': null,
        },
      );

      expect(
        () => unwrapResult<LoginResponseData>(
          mockResponse,
          (json) => LoginResponseData.fromJson(json as Map<String, dynamic>),
        ),
        throwsA(
          isA<ApiException>().having(
            (e) => e.message,
            'message',
            equals('Nomor Induk Keluarga (NIK) tidak terdaftar.'),
          ),
        ),
      );
    });

    test('AuthRepository.login berhasil mem-parsing payload server asli', () async {
      final dio = Dio(BaseOptions(baseUrl: 'https://dev.buatapaaja.com/wargart04dev'));
      dio.httpClientAdapter = MockHttpClientAdapter((options) {
        expect(options.path, equals('/Auth/Login'));
        expect(options.data['szUserName'], equals('3271024708840002'));
        expect(options.data['szPassword'], equals('rahasia123'));

        final responseJson = jsonEncode({
          'bSuccess': true,
          'szMessage': 'Success',
          'oResult': {
            'user': {
              'szName': 'Nia Kurnia Agustina',
              'szNik': '3271024708840002',
              'bOfficer': true,
              'bFinance': true,
            },
            'token': 'jwt_mock_token_xyz',
            'szWelcomePage': 'welcome',
          },
          'oResultType': 'LoginResponseData',
        });

        return ResponseBody.fromString(
          responseJson,
          200,
          headers: {
            Headers.contentTypeHeader: [Headers.jsonContentType],
          },
        );
      });

      final repo = AuthRepository(dio);
      final response = await repo.login(
        szNik: '3271024708840002',
        szPassword: 'rahasia123',
      );

      expect(response.token, equals('jwt_mock_token_xyz'));
      expect(response.user.szName, equals('Nia Kurnia Agustina'));
    });
  });
}
