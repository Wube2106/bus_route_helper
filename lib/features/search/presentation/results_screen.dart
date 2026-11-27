import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../compare/presentation/compare_providers.dart';
import '../../routes/domain/models.dart';
import '../../routes/presentation/providers.dart';
import 'search_providers.dart';

class ResultsScreen extends ConsumerWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = ref.watch(journeyQueryProvider);
    final filter = ref.watch(typeFilterProvider);
    final results = ref.watch(journeyResultsProvider);
    final selected = ref.watch(compareSelectionProvider);
    final from = query.fromId == null
        ? null
        : ref.watch(stopByIdProvider(query.fromId!));
    final to =
        query.toId == null ? null : ref.watch(stopByIdProvider(query.toId!));
    final title = '${from?.value?.name ?? '?'} → ${to?.value?.name ?? '?'}';

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: SegmentedButton<TransportType?>(
              segments: const [
                ButtonSegment(value: null, label: Text('All')),
                ButtonSegment(
                    value: TransportType.minibus, label: Text('Minibus')),
                ButtonSegment(
                    value: TransportType.anbessa, label: Text('Anbessa')),
              ],
              selected: {filter},
              onSelectionChanged: (set) =>
                  ref.read(typeFilterProvider.notifier).select(set.first),
            ),
          ),
          Expanded(
            child: results.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) =>
                  const Center(child: Text('Could not load routes.')),
              data: (routes) {
                if (routes.isEmpty) {
                  return const Center(
                    child: Text('No routes found for this journey.'),
                  );
                }
                return ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    for (final route in routes)
                      _RouteCard(
                        route: route,
                        picked: selected.contains(route.id),
                      ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: FilledButton(
              onPressed:
                  selected.length == 2 ? () => context.go('/compare') : null,
              child: Text('Compare routes (${selected.length}/2)'),
            ),
          ),
        ],
      ),
    );
  }
}

class _RouteCard extends ConsumerWidget {
  const _RouteCard({required this.route, required this.picked});

  final BusRoute route;
  final bool picked;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fare = ref.watch(routeFareProvider(route.id));
    final type = route.type == TransportType.anbessa ? 'Anbessa' : 'Minibus';
    final fareText =
        fare.value == null ? 'Fare unknown' : 'ETB ${fare.value!.amountEtb}';

    return Card(
      child: ListTile(
        title: Text(route.name),
        subtitle: Text('$type · $fareText'),
        trailing: Checkbox(
          value: picked,
          onChanged: (_) =>
              ref.read(compareSelectionProvider.notifier).toggle(route.id),
        ),
        onTap: () => context.go('/route/${route.id}'),
      ),
    );
  }
}