import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:warga_app/features/billing/data/repositories/billing_repository.dart';
import '../auth/auth_flow_test.dart';

void main() {
  group('BillingRepository Tests', () {
    test('getMyBills berhasil parsing List<MyBillItemData>', () async {
      final dio = Dio(BaseOptions(baseUrl: 'https://dev.buatapaaja.com/wargart04dev'));
      dio.httpClientAdapter = MockHttpClientAdapter((options) {
        expect(options.path, equals('/Billing/MyBill'));
        final jsonStr = jsonEncode({
          'bSuccess': true,
          'szMessage': 'Success',
          'oResult': [
            {
              'billing': {
                'gdId': 'bill-1',
                'szDescription': 'Iuran Rutin 50 Periode Februari 2026',
                'decAmount': 50000.0,
                'decRemain': 0.0,
                'bClosed': true,
                'dtmDue': '2026-02-15T00:00:00',
              },
              'billingPayments': [
                {
                  'gdId': 'pay-1',
                  'decPayment': 50000.0,
                  'dtmDoc': '2026-02-10T14:00:00',
                },
              ],
            },
            {
              'billing': {
                'gdId': 'bill-2',
                'szDescription': 'Iuran Rutin 50 Periode Maret 2026',
                'decAmount': 50000.0,
                'decRemain': 50000.0,
                'bClosed': false,
                'dtmDue': '2026-03-15T00:00:00',
              },
              'billingPayments': [],
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

      final repo = BillingRepository(dio);
      final bills = await repo.getMyBills();

      expect(bills.length, equals(2));
      // Tagihan 1: Lunas
      expect(bills[0].billing.bClosed, isTrue);
      expect(bills[0].billing.decRemain, equals(0.0));
      expect(bills[0].billingPayments.length, equals(1));
      // Tagihan 2: Belum lunas
      expect(bills[1].billing.bClosed, isFalse);
      expect(bills[1].billing.decRemain, equals(50000.0));
    });
  });
}
