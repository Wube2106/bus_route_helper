import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../routes/domain/models.dart';
import '../../routes/presentation/providers.dart';
import 'search_providers.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = ref.watch(journeyQueryProvider);
    final stops = ref.watch(allStopsProvider);
    final popular = ref.watch(popularStopsProvider);
    final notifier = ref.read(journeyQueryProvider.notifier);

    final entries = [
      for (final s in stops.value ?? const <Stop>[])
        DropdownMenuEntry(value: s.id, label: s.name),
    ];

    void showMessage() {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Choose where you start and where you go.')),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Where are you going today?')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          DropdownMenu<String>(
            key: ValueKey('from-${query.fromId}'),
            label: const Text('From'),
            expandedInsets: EdgeInsets.zero,
            initialSelection: query.fromId,
            dropdownMenuEntries: entries,
            onSelected: notifier.setFrom,
          ),
          const SizedBox(height: 12),
          DropdownMenu<String>(
            key: ValueKey('to-${query.toId}'),
            label: const Text('To'),
            expandedInsets: EdgeInsets.zero,
            initialSelection: query.toId,
            dropdownMenuEntries: entries,
            onSelected: notifier.setTo,
          ),
          const SizedBox(height: 16),
          FilledButton(
            onPressed: () {
              if (query.fromId == null || query.toId == null) {
                showMessage();
                return;
              }
              context.go('/results');
            },
            child: const Text('Find routes'),
          ),
          const SizedBox(height: 24),
          Text(
            'Popular destinations',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          ...popular.when(
            data: (list) => <Widget>[
              for (final s in list)
                Card(
                  child: ListTile(
                    leading: const Icon(Icons.place_outlined),
                    title: Text(s.name),
                    onTap: () {
                      notifier.setTo(s.id);
                      if (query.fromId == null) {
                        showMessage();
                        return;
                      }
                      context.go('/results');
                    },
                  ),
                ),
            ],
            loading: () => const <Widget>[
              Center(child: CircularProgressIndicator()),
            ],
            error: (error, stack) => const <Widget>[
              Text('Could not load destinations.'),
            ],
          ),
        ],
      ),
    );
  }
}