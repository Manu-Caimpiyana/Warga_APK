import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:warga_app/features/auth/presentation/screens/login_screen.dart';

void main() {
  Widget createTestWidget() {
    return const ProviderScope(
      child: MaterialApp(
        home: LoginScreen(),
      ),
    );
  }

  group('LoginScreen Widget Tests', () {
    testWidgets('Menampilkan komponen input NIK, Kata Sandi, dan Tombol Masuk', (tester) async {
      await tester.pumpWidget(createTestWidget());

      expect(find.text('Warga RT 04'), findsOneWidget);
      expect(find.text('Silakan Masuk'), findsOneWidget);
      expect(find.text('Nomor Induk Kependudukan (NIK)'), findsOneWidget);
      expect(find.text('Kata Sandi'), findsOneWidget);
      expect(find.text('Masuk'), findsOneWidget);
    });

    testWidgets('Validasi form muncul saat input kosong dan tombol Masuk ditekan', (tester) async {
      await tester.pumpWidget(createTestWidget());

      // Tekan tombol Masuk tanpa mengisi field
      await tester.tap(find.text('Masuk'));
      await tester.pump();

      expect(find.text('NIK wajib diisi'), findsOneWidget);
      expect(find.text('Kata sandi wajib diisi'), findsOneWidget);
    });

    testWidgets('Validasi panjang minimal NIK 16 digit dan kata sandi 6 karakter', (tester) async {
      await tester.pumpWidget(createTestWidget());

      // Isi NIK kurang dari 16 digit
      await tester.enterText(find.byType(TextFormField).at(0), '12345');
      // Isi Kata Sandi kurang dari 6 karakter
      await tester.enterText(find.byType(TextFormField).at(1), '123');

      await tester.tap(find.text('Masuk'));
      await tester.pump();

      expect(find.text('NIK harus terdiri dari 16 digit'), findsOneWidget);
      expect(find.text('Kata sandi minimal 6 karakter'), findsOneWidget);
    });
  });
}
