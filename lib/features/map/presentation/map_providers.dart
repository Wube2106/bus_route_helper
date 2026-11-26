import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../routes/domain/models.dart';
import '../../routes/presentation/providers.dart';

final mapRouteProvider = FutureProvider.family<BusRoute?, String>(
  (ref, routeId) => ref.watch(routeRepositoryProvider).routeById(routeId),
);

final mapStopsProvider = FutureProvider.family<List<Stop>, String>(
  (ref, routeId) => ref.watch(routeRepositoryProvider).stopsOfRoute(routeId),
);
