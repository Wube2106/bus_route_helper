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
        return _cheapest(options);
      case Preference.fewestStops:
        return _fewestStops(options);
      case Preference.none:
        final first = options.first;
        return Suggestion(
          routeId: first.routeId,
          reason: '${first.name} is a good option from $fromName to $toName.',
        );
    }
  }

  String _etb(double value) =>
      value == value.roundToDouble() ? value.toStringAsFixed(0) : '$value';

  Suggestion _cheapest(List<RouteOption> options) {
    final sorted = [...options]..sort((a, b) {
        final byFare = a.fareEtb.compareTo(b.fareEtb);
        return byFare != 0 ? byFare : a.stopCount.compareTo(b.stopCount);
      });
    final best = sorted.first;
    final second = sorted.length > 1 ? sorted[1] : null;
    if (second == null || best.fareEtb < second.fareEtb) {
      return Suggestion(
        routeId: best.routeId,
        reason: '${best.name} has the lowest fare (ETB ${_etb(best.fareEtb)}).',
      );
    }
    if (best.stopCount < second.stopCount) {
      return Suggestion(
        routeId: best.routeId,
        reason: 'The fares are the same (ETB ${_etb(best.fareEtb)}), but '
            '${best.name} has fewer stops (${best.stopCount}).',
      );
    }
    return Suggestion(
      routeId: best.routeId,
      reason: 'The options have the same fare and the same number of stops, '
          'so ${best.name} is as good as the others.',
    );
  }

  Suggestion _fewestStops(List<RouteOption> options) {
    final sorted = [...options]..sort((a, b) {
        final byStops = a.stopCount.compareTo(b.stopCount);
        return byStops != 0 ? byStops : a.fareEtb.compareTo(b.fareEtb);
      });
    final best = sorted.first;
    final second = sorted.length > 1 ? sorted[1] : null;
    if (second == null || best.stopCount < second.stopCount) {
      return Suggestion(
        routeId: best.routeId,
        reason: '${best.name} has the fewest stops (${best.stopCount}).',
      );
    }
    if (best.fareEtb < second.fareEtb) {
      return Suggestion(
        routeId: best.routeId,
        reason: 'Both options have the same number of stops (${best.stopCount}). '
            '${best.name} has the lower fare (ETB ${_etb(best.fareEtb)}).',
      );
    }
    return Suggestion(
      routeId: best.routeId,
      reason: 'The options have the same number of stops and the same fare, '
          'so ${best.name} is as good as the others.',
    );
  }
}