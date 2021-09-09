import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:movie_recommendation_app_course/core/widgets/primary_button.dart';
import 'package:movie_recommendation_app_course/features/movie_flow/movie_repository.dart';
import 'package:movie_recommendation_app_course/main.dart';

import 'stubs/stub_movie_repository.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('test basic flow and see the fake generated movie in the end', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          movieRepositoryProvider.overrideWithValue(StubMovieRepository()),
        ],
        child: const MyApp(),
      ),
    );

    await tester.tap(find.byType(PrimaryButton));

    await tester.pumpAndSettle();
    await tester.tap(find.text('Animation'));
    await tester.tap(find.byType(PrimaryButton));

    await tester.pumpAndSettle();
    await tester.tap(find.byType(PrimaryButton));

    await tester.pumpAndSettle();
    await tester.tap(find.byType(PrimaryButton));

    await tester.pumpAndSettle();
    expect(find.text('Lilo & Stich'), findsOneWidget);
  });

  testWidgets('test basic flow but make sure we do not get past the genre screen if we do not select a genre', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          movieRepositoryProvider.overrideWithValue(StubMovieRepository()),
        ],
        child: const MyApp(),
      ),
    );

    await tester.tap(find.byType(PrimaryButton));

    await tester.pumpAndSettle();
    // Try to go past the genre screen without selecting a genre
    await tester.tap(find.byType(PrimaryButton));

    expect(find.text('Animation'), findsOneWidget);
  });
}
