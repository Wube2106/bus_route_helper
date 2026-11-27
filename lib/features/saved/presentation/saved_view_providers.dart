import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../routes/domain/models.dart';
import '../../routes/presentation/providers.dart';
import '../domain/saved_route.dart';
import 'saved_providers.dart';

typedef SavedEntry = ({
  SavedRoute saved,
  String routeName,
  String typeLabel,
  String fromName,
  String toName,
});

final savedEntriesProvider = FutureProvider<List<SavedEntry>>((ref) async {
  final saved = await ref.watch(savedRoutesProvider.future);
  final repository = ref.watch(routeRepositoryProvider);
  final entries = <SavedEntry>[];

  for (final item in saved) {
    final route = await repository.routeById(item.routeId);
    if (route == null) continue;

    final from = await repository.stopById(item.boardStopId);
    final to = await repository.stopById(item.alightStopId);

    entries.add((
      saved: item,
      routeName: route.name,
      typeLabel: route.type == TransportType.anbessa ? 'Anbessa' : 'Minibus',
      fromName: from?.name ?? '?',
      toName: to?.name ?? '?',
    ));
  }

  return entries;
});
