import 'package:bus_route_helper/features/compare/presentation/compare_providers.dart';
import 'package:bus_route_helper/features/routes/domain/models.dart';
import 'package:bus_route_helper/features/routes/presentation/providers.dart';
import 'package:bus_route_helper/features/search/presentation/search_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

ProviderContainer makeContainer() {
  final container = ProviderContainer();
  addTearDown(container.dispose);
  return container;
}

void choose(ProviderContainer container, String from, String to) {
  container.read(journeyQueryProvider.notifier)
    ..setFrom(from)
    ..setTo(to);
}

Future<List<String>> resultIds(ProviderContainer container) async {
  final routes = await container.read(journeyResultsProvider.future);
  return routes.map((route) => route.id).toList();
}

void main() {
  group('Journey search', () {
    test('returns no results before selecting a journey', () async {
      final container = makeContainer();

      expect(await resultIds(container), isEmpty);
    });

    test('finds routes from Mexico to Megenagna', () async {
      final container = makeContainer();
      choose(container, 'mexico', 'megenagna');

      expect(await resultIds(container), ['r1', 'r7']);
    });

    test('returns no routes for the reverse direction', () async {
      final container = makeContainer();
      choose(container, 'megenagna', 'mexico');

      expect(await resultIds(container), isEmpty);
    });

    test('finds four routes from Mexico to Ayertena', () async {
      final container = makeContainer();
      choose(container, 'mexico', 'ayertena');

      expect(
        await resultIds(container),
        ['r5', 'r6', 'r11', 'r12'],
      );
    });
  });

  group('Transport type filter', () {
    test('filters results to Minibus routes', () async {
      final container = makeContainer();
      choose(container, 'mexico', 'megenagna');

      container
          .read(typeFilterProvider.notifier)
          .select(TransportType.minibus);

      expect(await resultIds(container), ['r7']);
    });

    test('filters results to Anbessa routes', () async {
      final container = makeContainer();
      choose(container, 'mexico', 'megenagna');

      container
          .read(typeFilterProvider.notifier)
          .select(TransportType.anbessa);

      expect(await resultIds(container), ['r1']);
    });

    test('shows all routes when the filter is cleared', () async {
      final container = makeContainer();
      choose(container, 'mexico', 'megenagna');

      container.read(typeFilterProvider.notifier).select(null);

      expect(await resultIds(container), ['r1', 'r7']);
    });
  });

  group('Fare lookup', () {
    test('returns the correct fares for the selected journey', () async {
      final container = makeContainer();
      choose(container, 'mexico', 'megenagna');

      final anbessa = await container.read(routeFareProvider('r1').future);
      final minibus = await container.read(routeFareProvider('r7').future);

      expect(anbessa?.amountEtb, 20);
      expect(minibus?.amountEtb, 30);
    });

    test('returns no fare before a journey is selected', () async {
      final container = makeContainer();

      final fare = await container.read(routeFareProvider('r1').future);

      expect(fare, isNull);
    });
  });

  group('Compare selection', () {
    test('adds and removes a route from comparison', () {
      final container = makeContainer();
      final selection = container.read(compareSelectionProvider.notifier);

      selection.toggle('r1');
      expect(container.read(compareSelectionProvider), ['r1']);

      selection.toggle('r1');
      expect(container.read(compareSelectionProvider), isEmpty);
    });

    test('ignores a third route until one of the two is removed', () {
      final container = makeContainer();
      final selection = container.read(compareSelectionProvider.notifier);

      selection
        ..toggle('r1')
        ..toggle('r7')
        ..toggle('r5');

      expect(container.read(compareSelectionProvider), ['r1', 'r7']);

      selection
        ..toggle('r1')
        ..toggle('r5');

      expect(container.read(compareSelectionProvider), ['r7', 'r5']);
    });
  });
}
