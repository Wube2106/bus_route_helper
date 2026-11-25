import 'models.dart';

abstract interface class RouteRepository {
  Future<List<Stop>> popularStops();
  Future<List<Stop>> searchStops(String query);
  Future<Stop?> stopById(String id);
  Future<BusRoute?> routeById(String id);
  Future<List<BusRoute>> findRoutes({
    required String boardStopId,
    required String alightStopId,
  });
  Future<List<Stop>> stopsOfRoute(String routeId);
  Future<Fare?> fareFor({
    required String routeId,
    required String fromStopId,
    required String toStopId,
  });
}