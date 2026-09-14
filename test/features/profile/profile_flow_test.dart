import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:warga_app/features/profile/data/repositories/profile_repository.dart';
import '../auth/auth_flow_test.dart';

void main() {
  group('ProfileRepository Tests', () {
    test('getProfile berhasil parsing CitizenInfoData', () async {
      final dio = Dio(BaseOptions(baseUrl: 'https://dev.buatapaaja.com/wargart04dev'));
      dio.httpClientAdapter = MockHttpClientAdapter((options) {
        expect(options.path, equals('/Citizen/GetProfile'));
        final jsonStr = jsonEncode({
          'bSuccess': true,
          'szMessage': 'Success',
          'oResult': {
            'szCardId': '3271024708840002',
            'szName': 'Nia Kurnia Agustina',
            'szDescription': '02. Bendahara',
            'szNickName': 'Nia',
            'szPhoneNo': '087770322837',
            'szEmail': 'bunbun.antik2@gmail.com',
            'dtmBirth': '2025-12-06T00:00:00',
            'gdId': '1eb5866b-da85-4aa2-87d8-2f072a164f22',
          },
          'oResultType': 'CitizenInfoData',
        });
        return ResponseBody.fromString(
          jsonStr,
          200,
          headers: {Headers.contentTypeHeader: [Headers.jsonContentType]},
        );
      });

      final repo = ProfileRepository(dio);
      final profile = await repo.getProfile();

      expect(profile.szName, equals('Nia Kurnia Agustina'));
      expect(profile.szCardId, equals('3271024708840002'));
      expect(profile.szDescription, equals('02. Bendahara'));
      expect(profile.szPhoneNo, equals('087770322837'));
      expect(profile.szEmail, equals('bunbun.antik2@gmail.com'));
    });
  });
}
