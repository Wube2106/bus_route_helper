import 'package:bus_route_helper/features/routes/data/in_memory_route_repository.dart';
import 'package:bus_route_helper/features/routes/data/sample_data.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('every route stop refers to an existing route and stop', () {
    final stopIds = sampleStops.map((s) => s.id).toSet();
    final routeIds = sampleRoutes.map((r) => r.id).toSet();
    for (final rs in sampleRouteStops) {
      expect(stopIds, contains(rs.stopId));
      expect(routeIds, contains(rs.routeId));
    }
  });

  test('stop ids and route ids are unique', () {
    expect(sampleStops.map((s) => s.id).toSet().length, sampleStops.length);
    expect(sampleRoutes.map((r) => r.id).toSet().length, sampleRoutes.length);
  });

  test('the stops of each route are numbered 0, 1, 2 and so on', () {
    for (final route in sampleRoutes) {
      final positions = sampleRouteStops
          .where((rs) => rs.routeId == route.id)
          .map((rs) => rs.position)
          .toList()
        ..sort();
      expect(positions, List.generate(positions.length, (i) => i));
    }
  });

  test('at least two routes serve the same journey', () async {
    final repository = InMemoryRouteRepository();
    var found = false;
    for (final from in sampleStops) {
      for (final to in sampleStops) {
        if (from.id == to.id) continue;
        final routes = await repository.findRoutes(
          boardStopId: from.id,
          alightStopId: to.id,
        );
        if (routes.length >= 2) found = true;
      }
    }
    expect(found, isTrue, reason: 'Compare needs two routes for one journey');
  });
}
