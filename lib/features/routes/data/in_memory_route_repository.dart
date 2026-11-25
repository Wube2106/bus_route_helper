import '../domain/models.dart';
import '../domain/route_repository.dart';
import 'sample_data.dart';

class InMemoryRouteRepository implements RouteRepository {
  @override
  Future<List<Stop>> popularStops() async =>
      sampleStops.where((s) => s.isPopular).toList();

  @override
  Future<List<Stop>> searchStops(String query) async {
    final q = query.trim().toLowerCase();
    if (q.isEmpty) return sampleStops;
    return sampleStops.where((s) => s.name.toLowerCase().contains(q)).toList();
  }

  @override
  Future<Stop?> stopById(String id) async =>
      sampleStops.where((s) => s.id == id).firstOrNull;

  @override
  Future<BusRoute?> routeById(String id) async =>
      sampleRoutes.where((r) => r.id == id).firstOrNull;

  @override
  Future<List<BusRoute>> findRoutes({
    required String boardStopId,
    required String alightStopId,
  }) async {
    return sampleRoutes.where((route) {
      final stops = sampleRouteStops.where((rs) => rs.routeId == route.id);
      final board = stops.where((rs) => rs.stopId == boardStopId).firstOrNull;
      final alight = stops.where((rs) => rs.stopId == alightStopId).firstOrNull;
      return board != null && alight != null && board.position < alight.position;
    }).toList();
  }

  @override
  Future<List<Stop>> stopsOfRoute(String routeId) async {
    final ordered = sampleRouteStops.where((rs) => rs.routeId == routeId).toList()
      ..sort((a, b) => a.position.compareTo(b.position));
    return [
      for (final rs in ordered) sampleStops.firstWhere((s) => s.id == rs.stopId),
    ];
  }

  @override
  Future<Fare?> fareFor({
    required String routeId,
    required String fromStopId,
    required String toStopId,
  }) async =>
      sampleFares
          .where((f) =>
              f.routeId == routeId &&
              f.fromStopId == fromStopId &&
              f.toStopId == toStopId)
          .firstOrNull;
}