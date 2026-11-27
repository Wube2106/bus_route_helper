import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../routes/domain/models.dart';
import '../../routes/presentation/providers.dart';
import '../../search/presentation/search_providers.dart';
import 'compare_providers.dart';

typedef CompareEntry = ({BusRoute route, int stopCount, double? fareEtb});

final compareEntriesProvider = FutureProvider<List<CompareEntry>>((ref) async {
  final routes = await ref.watch(comparedRoutesProvider.future);
  final query = ref.watch(journeyQueryProvider);
  final repository = ref.watch(routeRepositoryProvider);
  final entries = <CompareEntry>[];

  for (final route in routes) {
    final stops = await repository.stopsOfRoute(route.id);
    double? fareEtb;

    if (query.fromId != null && query.toId != null) {
      final fare = await repository.fareFor(
        routeId: route.id,
        fromStopId: query.fromId!,
        toStopId: query.toId!,
      );
      fareEtb = fare?.amountEtb;
    }

    entries.add((route: route, stopCount: stops.length, fareEtb: fareEtb));
  }

  return entries;
});

final compareJourneyNamesProvider =
    FutureProvider<({String from, String to})>((ref) async {
  final query = ref.watch(journeyQueryProvider);
  final repository = ref.watch(routeRepositoryProvider);

  final from =
      query.fromId == null ? null : await repository.stopById(query.fromId!);
  final to =
      query.toId == null ? null : await repository.stopById(query.toId!);

  return (from: from?.name ?? '?', to: to?.name ?? '?');
});
