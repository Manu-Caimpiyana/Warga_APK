import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:warga_app/main.dart';

void main() {
  testWidgets('App smoke test - boots into Login screen by default', (tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: MyApp(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Warga RT 04'), findsOneWidget);
    expect(find.text('Silakan Masuk'), findsOneWidget);
  });
}
