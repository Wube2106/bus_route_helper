import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../auth/presentation/auth_providers.dart';
import 'saved_providers.dart';
import 'saved_view_providers.dart';

class SavedScreen extends ConsumerWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authStateProvider);
    final entries = ref.watch(savedEntriesProvider);

    if (user == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Saved Routes')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Sign in to see and save your routes.'),
                const SizedBox(height: 16),
                FilledButton(
                  onPressed: () => context.go('/saved/sign-in'),
                  child: const Text('Sign in'),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Saved Routes')),
      body: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.person_outline),
            title: Text(user.email),
            trailing: TextButton(
              onPressed: () => ref.read(authStateProvider.notifier).signOut(),
              child: const Text('Sign out'),
            ),
          ),
          Expanded(
            child: entries.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) =>
                  const Center(child: Text('Could not load saved routes.')),
              data: (list) {
                if (list.isEmpty) {
                  return const Center(
                    child: Text(
                      'No saved routes yet. Save one from its details screen.',
                    ),
                  );
                }

                return ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    for (final e in list)
                      Card(
                        child: ListTile(
                          title: Text(e.routeName),
                          subtitle: Text(
                            '${e.typeLabel} · ${e.fromName} → ${e.toName}',
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete_outline),
                            tooltip: 'Remove',
                            onPressed: () => ref
                                .read(savedRoutesProvider.notifier)
                                .remove(e.saved),
                          ),
                          onTap: () => context.go('/route/${e.saved.routeId}'),
                        ),
                      ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
