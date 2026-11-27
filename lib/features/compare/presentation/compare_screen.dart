import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../routes/domain/models.dart';
import '../domain/suggestion_service.dart';
import 'compare_view_providers.dart';
import 'suggestion_controller.dart';
import 'suggestion_providers.dart';

class CompareScreen extends ConsumerWidget {
  const CompareScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final entries = ref.watch(compareEntriesProvider);
    final names = ref.watch(compareJourneyNamesProvider);
    final preference = ref.watch(preferenceProvider);
    final suggestion = ref.watch(suggestionControllerProvider);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/results'),
        ),
        title: const Text('Compare Routes'),
      ),
      body: entries.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) =>
            const Center(child: Text('Could not load the routes.')),
        data: (list) {
          if (list.length < 2) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('Pick two routes on the results screen first.'),
                    const SizedBox(height: 16),
                    FilledButton(
                      onPressed: () => context.go('/results'),
                      child: const Text('Back to results'),
                    ),
                  ],
                ),
              ),
            );
          }

          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Card(
                child: ListTile(
                  leading: const Icon(Icons.place_outlined),
                  title: Text(
                    '${names.value?.from ?? '?'} → ${names.value?.to ?? '?'}',
                  ),
                  subtitle: const Text('Same journey, two options'),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: _CompareCard(entry: list[0])),
                  const SizedBox(width: 12),
                  Expanded(child: _CompareCard(entry: list[1])),
                ],
              ),
              const SizedBox(height: 16),
              SegmentedButton<Preference>(
                showSelectedIcon: false,
                segments: const [
                  ButtonSegment(
                    value: Preference.cheapest,
                    label: Text('Cheapest'),
                  ),
                  ButtonSegment(
                    value: Preference.fewestStops,
                    label: Text('Fewest stops'),
                  ),
                  ButtonSegment(
                    value: Preference.none,
                    label: Text('Either'),
                  ),
                ],
                selected: {preference},
                onSelectionChanged: (set) =>
                    ref.read(preferenceProvider.notifier).select(set.first),
              ),
              const SizedBox(height: 12),
              OutlinedButton(
                onPressed: () =>
                    ref.read(suggestionControllerProvider.notifier).request(),
                child: const Text('Get AI suggestion'),
              ),
              const SizedBox(height: 12),
              suggestion.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stack) => Text(
                  error is SuggestionException
                      ? error.message
                      : 'Could not get a suggestion.',
                ),
                data: (s) => s == null
                    ? const SizedBox.shrink()
                    : Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'AI suggestion',
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              const SizedBox(height: 4),
                              Text(s.reason),
                            ],
                          ),
                        ),
                      ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _CompareCard extends StatelessWidget {
  const _CompareCard({required this.entry});

  final CompareEntry entry;

  @override
  Widget build(BuildContext context) {
    final type =
        entry.route.type == TransportType.anbessa ? 'Anbessa' : 'Minibus';
    final fare =
        entry.fareEtb == null ? 'unknown' : 'ETB ${entry.fareEtb}';

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              entry.route.name,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 8),
            Text('Type: $type'),
            Text('Stops: ${entry.stopCount}'),
            Text('Fare: $fare'),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () => context.go('/route/${entry.route.id}'),
                child: const Text('View details'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
