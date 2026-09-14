import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:warga_app/features/admin/data/repositories/admin_repository.dart';
import '../auth/auth_flow_test.dart';

void main() {
  group('AdminRepository Tests', () {
    test('getBillTemplates berhasil parsing List<BillTemplateData>', () async {
      final dio = Dio(BaseOptions(baseUrl: 'https://dev.buatapaaja.com/wargart04dev'));
      dio.httpClientAdapter = MockHttpClientAdapter((options) {
        expect(options.path, equals('/BillTemplate/GetList'));
        final jsonStr = jsonEncode({
          'bSuccess': true,
          'szMessage': 'return 4 rows.',
          'oResult': [
            {
              'gdId': 'tmpl-1',
              'szName': 'Iuran Rutin 30',
              'szDescription': 'Iuran Rutin 30',
              'bOccurence': true,
            },
            {
              'gdId': 'tmpl-2',
              'szName': 'Iuran Rutin 35',
              'szDescription': 'Iuran Rutin 35',
              'bOccurence': true,
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

      final repo = AdminRepository(dio);
      final templates = await repo.getBillTemplates();

      expect(templates.length, equals(2));
      expect(templates[0].szName, equals('Iuran Rutin 30'));
      expect(templates[0].bOccurence, isTrue);
      expect(templates[1].szName, equals('Iuran Rutin 35'));
    });

    test('getCitizens berhasil parsing List<CitizenData> dengan nested citizenInfo', () async {
      final dio = Dio(BaseOptions(baseUrl: 'https://dev.buatapaaja.com/wargart04dev'));
      dio.httpClientAdapter = MockHttpClientAdapter((options) {
        expect(options.path, equals('/Citizen/GetList'));
        final jsonStr = jsonEncode({
          'bSuccess': true,
          'szMessage': 'return 39 rows.',
          'oResult': [
            {
              'szCardId': '3271021705220012',
              'gdCitizenInfoId': '89b01726-0dae-48eb-bec7-9b748036005d',
              'citizenInfo': {
                'gdParentId': 'c69fa399-274f-40de-a8d2-34016c0e0014',
                'szCardId': '3271022101780003',
                'szName': 'Aang Rangga Cipta',
                'szDescription': 'Warga',
                'szPhoneNo': '087770322837',
                'szEmail': 'mrboank60@yahoo.co.uk',
              },
              'gdBillTemplateId': '42e0ef42-5cf3-47a3-8317-4faaa472d3e2',
              'gdId': 'c69fa399-274f-40de-a8d2-34016c0e0014',
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

      final repo = AdminRepository(dio);
      final citizens = await repo.getCitizens();

      expect(citizens.length, equals(1));
      expect(citizens[0].szCardId, equals('3271021705220012'));
      expect(citizens[0].citizenInfo?.szName, equals('Aang Rangga Cipta'));
      expect(citizens[0].citizenInfo?.szPhoneNo, equals('087770322837'));
    });

    test('getCashInOutList berhasil parsing transaksi IN dan OUT', () async {
      final dio = Dio(BaseOptions(baseUrl: 'https://dev.buatapaaja.com/wargart04dev'));
      dio.httpClientAdapter = MockHttpClientAdapter((options) {
        expect(options.path, equals('/CashInOut/GetList'));
        final jsonStr = jsonEncode({
          'bSuccess': true,
          'szMessage': 'Success',
          'oResult': [
            {
              'gdId': 'cash-1',
              'decAmount': 500000.0,
              'szType': 'IN',
              'szDescription': 'Kas masuk iuran warga',
              'dtmTransactionDate': '2026-02-01T10:00:00',
            },
            {
              'gdId': 'cash-2',
              'decAmount': 150000.0,
              'szType': 'OUT',
              'szDescription': 'Beli sapu dan perlengkapan pos',
              'dtmTransactionDate': '2026-02-05T14:30:00',
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

      final repo = AdminRepository(dio);
      final cashList = await repo.getCashInOutList();

      expect(cashList.length, equals(2));
      expect(cashList[0].szType, equals('IN'));
      expect(cashList[0].decAmount, equals(500000.0));
      expect(cashList[1].szType, equals('OUT'));
      expect(cashList[1].decAmount, equals(150000.0));
    });
  });
}
