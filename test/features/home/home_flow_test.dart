import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:warga_app/features/home/data/repositories/home_repository.dart';
import '../auth/auth_flow_test.dart';

void main() {
  group('HomeRepository Tests', () {
    test('getDashboard berhasil parsing DashBoardData dari response server', () async {
      final dio = Dio(BaseOptions(baseUrl: 'https://dev.buatapaaja.com/wargart04dev'));
      dio.httpClientAdapter = MockHttpClientAdapter((options) {
        expect(options.path, equals('/DashBoard/Get'));
        final jsonStr = jsonEncode({
          'bSuccess': true,
          'szMessage': 'Success',
          'oResult': {
            'szGreeting': 'Selamat Siang<br/>Ibu Nia',
            'decCashSaldo': 1621000,
            'bHasOpenBilled': false,
            'intOpenBill': 0,
            'gdId': '9164d625-8ffb-44d5-93ee-bb8f529a861f',
          },
          'oResultType': 'DashBoardData',
        });
        return ResponseBody.fromString(
          jsonStr,
          200,
          headers: {Headers.contentTypeHeader: [Headers.jsonContentType]},
        );
      });

      final repo = HomeRepository(dio);
      final dashboard = await repo.getDashboard();

      expect(dashboard.szGreeting, equals('Selamat Siang<br/>Ibu Nia'));
      expect(dashboard.decCashSaldo, equals(1621000.0));
      expect(dashboard.bHasOpenBilled, isFalse);
      expect(dashboard.intOpenBill, equals(0));
    });

    test('getAvailableInfo berhasil parsing List<InfoData>', () async {
      final dio = Dio(BaseOptions(baseUrl: 'https://dev.buatapaaja.com/wargart04dev'));
      dio.httpClientAdapter = MockHttpClientAdapter((options) {
        expect(options.path, equals('/Info/GetAvailableInfo'));
        final jsonStr = jsonEncode({
          'bSuccess': true,
          'szMessage': 'Success',
          'oResult': [
            {
              'gdId': 'info-1',
              'szName': 'Kerja Bakti Bersama',
              'szDescription': 'Minggu pagi pukul 07.00 WIB',
            },
          ],
          'oResultType': 'List`1',
        });
        return ResponseBody.fromString(
          jsonStr,
          200,
          headers: {Headers.contentTypeHeader: [Headers.jsonContentType]},
        );
      });

      final repo = HomeRepository(dio);
      final infos = await repo.getAvailableInfo();

      expect(infos.length, equals(1));
      expect(infos.first.szName, equals('Kerja Bakti Bersama'));
    });

    test('getNextActivities berhasil parsing List<ActivityData>', () async {
      final dio = Dio(BaseOptions(baseUrl: 'https://dev.buatapaaja.com/wargart04dev'));
      dio.httpClientAdapter = MockHttpClientAdapter((options) {
        expect(options.path, equals('/Activity/GetNextActivities'));
        final jsonStr = jsonEncode({
          'bSuccess': true,
          'szMessage': 'Success',
          'oResult': [
            {
              'gdId': 'act-1',
              'szName': 'Rapat Bulanan RT',
              'szDescription': 'Pembahasan kas dan keamanan',
              'dtmEventDate': '2026-03-20T19:30:00',
            },
          ],
          'oResultType': 'List`1',
        });
        return ResponseBody.fromString(
          jsonStr,
          200,
          headers: {Headers.contentTypeHeader: [Headers.jsonContentType]},
        );
      });

      final repo = HomeRepository(dio);
      final activities = await repo.getNextActivities();

      expect(activities.length, equals(1));
      expect(activities.first.szName, equals('Rapat Bulanan RT'));
    });
  });
}
