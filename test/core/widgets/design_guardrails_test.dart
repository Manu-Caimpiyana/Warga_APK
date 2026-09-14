import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:warga_app/core/widgets/app_empty_state.dart';
import 'package:warga_app/core/widgets/app_skeleton.dart';
import 'package:warga_app/core/widgets/status_badge.dart';

void main() {
  group('StatusBadge Widget Tests', () {
    testWidgets('StatusBadge.lunas menampilkan teks Lunas dan icon sukses', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: StatusBadge.lunas(),
          ),
        ),
      );

      expect(find.text('Lunas'), findsOneWidget);
      expect(find.byIcon(Icons.check_circle_outline_rounded), findsOneWidget);
    });

    testWidgets('StatusBadge.belumLunas menampilkan teks Belum Lunas', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: StatusBadge.belumLunas(),
          ),
        ),
      );

      expect(find.text('Belum Lunas'), findsOneWidget);
      expect(find.byIcon(Icons.access_time_rounded), findsOneWidget);
    });

    testWidgets('StatusBadge.inflow & outflow merender arah panah dengan benar', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Column(
              children: [
                StatusBadge.inflow(),
                StatusBadge.outflow(),
              ],
            ),
          ),
        ),
      );

      expect(find.text('Masuk'), findsOneWidget);
      expect(find.text('Keluar'), findsOneWidget);
      expect(find.byIcon(Icons.arrow_downward_rounded), findsOneWidget);
      expect(find.byIcon(Icons.arrow_upward_rounded), findsOneWidget);
    });
  });

  group('AppEmptyState Widget Tests', () {
    testWidgets('Menampilkan icon, judul, dan subjudul ramah pengguna', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: AppEmptyState(
              icon: Icons.inbox_outlined,
              title: 'Belum Ada Data',
              subtitle: 'Data yang dibuat akan tampil di sini.',
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.inbox_outlined), findsOneWidget);
      expect(find.text('Belum Ada Data'), findsOneWidget);
      expect(find.text('Data yang dibuat akan tampil di sini.'), findsOneWidget);
    });
  });

  group('AppSkeleton Widget Tests', () {
    testWidgets('AppSkeleton.list merender item skeleton shimmer', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AppSkeleton.list(itemCount: 3),
          ),
        ),
      );

      expect(find.byType(AppSkeleton), findsOneWidget);
      expect(find.byType(ListView), findsOneWidget);
    });
  });
}
