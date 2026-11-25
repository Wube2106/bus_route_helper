import '../../routes/domain/models.dart';

enum Preference { cheapest, fewestStops, none }

class RouteOption {
  const RouteOption({
    required this.routeId,
    required this.name,
    required this.type,
    required this.stopCount,
    required this.fareEtb,
  });

  final String routeId;
  final String name;
  final TransportType type;
  final int stopCount;
  final double fareEtb;
}

class Suggestion {
  const Suggestion({required this.routeId, required this.reason});

  final String routeId;
  final String reason;
}

class SuggestionException implements Exception {
  const SuggestionException(this.message);

  final String message;
}

abstract interface class SuggestionService {
  Future<Suggestion> suggest({
    required String fromName,
    required String toName,
    required Preference preference,
    required List<RouteOption> options,
  });
}