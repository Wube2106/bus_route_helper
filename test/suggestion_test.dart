import 'package:bus_route_helper/features/compare/data/fake_suggestion_service.dart';
import 'package:bus_route_helper/features/compare/domain/suggestion_service.dart';
import 'package:bus_route_helper/features/routes/domain/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const anbessa = RouteOption(
    routeId: 'a',
    name: 'Anbessa route',
    type: TransportType.anbessa,
    stopCount: 4,
    fareEtb: 20,
  );
  const minibus = RouteOption(
    routeId: 'm',
    name: 'Minibus route',
    type: TransportType.minibus,
    stopCount: 4,
    fareEtb: 30,
  );
  final service = FakeSuggestionService();

  Future<Suggestion> ask(Preference preference, List<RouteOption> options) =>
      service.suggest(
        fromName: 'A',
        toName: 'B',
        preference: preference,
        options: options,
      );

  test('cheapest picks the route with the lowest fare', () async {
    final suggestion = await ask(Preference.cheapest, [minibus, anbessa]);
    expect(suggestion.routeId, 'a');
  });

  test('fewest stops with equal stops falls back to the lower fare', () async {
    final suggestion = await ask(Preference.fewestStops, [minibus, anbessa]);
    expect(suggestion.routeId, 'a');
    expect(suggestion.reason, contains('same number of stops'));
  });

  test('no options throws a SuggestionException', () {
    expect(
      ask(Preference.cheapest, []),
      throwsA(isA<SuggestionException>()),
    );
  });
}