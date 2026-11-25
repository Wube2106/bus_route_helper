import '../domain/suggestion_service.dart';

class FakeSuggestionService implements SuggestionService {
  @override
  Future<Suggestion> suggest({
    required String fromName,
    required String toName,
    required Preference preference,
    required List<RouteOption> options,
  }) async {
    if (options.isEmpty) {
      throw const SuggestionException('Pick routes to compare first.');
    }
    switch (preference) {
      case Preference.cheapest:
        final best = options.reduce((a, b) => a.fareEtb <= b.fareEtb ? a : b);
        return Suggestion(
          routeId: best.routeId,
          reason: '${best.name} has the lowest fare (ETB ${best.fareEtb}).',
        );
      case Preference.fewestStops:
        final best = options.reduce((a, b) => a.stopCount <= b.stopCount ? a : b);
        return Suggestion(
          routeId: best.routeId,
          reason: '${best.name} has the fewest stops (${best.stopCount}).',
        );
      case Preference.none:
        final first = options.first;
        return Suggestion(
          routeId: first.routeId,
          reason: '${first.name} is a good option from $fromName to $toName.',
        );
    }
  }
}