import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../auth/presentation/auth_providers.dart';
import '../../saved/domain/saved_route.dart';
import '../../saved/presentation/saved_providers.dart';
import '../../search/presentation/search_providers.dart';
import '../domain/models.dart';

class RouteDetailsScreen extends ConsumerWidget {
  const RouteDetailsScreen({super.key, required this.routeId});

  final String routeId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final route = ref.watch(routeByIdProvider(routeId));
    final stops = ref.watch(stopsOfRouteProvider(routeId));
    final fare = ref.watch(routeFareProvider(routeId));
    final query = ref.watch(journeyQueryProvider);

    Future<void> save(List<Stop> stopList) async {
      if (ref.read(authStateProvider) == null) {
        context.go('/saved/sign-in');
        return;
      }
      await ref.read(savedRoutesProvider.notifier).add(
            SavedRoute(
              routeId: routeId,
              boardStopId: query.fromId ?? stopList.first.id,
              alightStopId: query.toId ?? stopList.last.id,
              createdAt: DateTime.now(),
            ),
          );
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Route saved.')),
        );
      }
    }

    return Scaffold(
      appBar: AppBar(title: Text(route.value?.name ?? 'Route Details')),
      body: stops.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) =>
            const Center(child: Text('Could not load this route.')),
        data: (stopList) {
          final type =
              route.value?.type == TransportType.anbessa ? 'Anbessa' : 'Minibus';
          return Column(
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    Card(
                      child: ListTile(
                        title: Text(
                          fare.value == null
                              ? 'Fare not available for this journey'
                              : 'ETB ${fare.value!.amountEtb}',
                        ),
                        subtitle: Text(type),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Stops along this route',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    for (final stop in stopList)
                      ListTile(
                        leading: Icon(
                          stop.id == query.fromId || stop.id == query.toId
                              ? Icons.circle
                              : Icons.circle_outlined,
                        ),
                        title: Text(stop.name),
                        subtitle: stop.id == query.fromId
                            ? const Text('Board here')
                            : stop.id == query.toId
                                ? const Text('Get off here')
                                : null,
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () => save(stopList),
                        child: const Text('Save route'),
                      ),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton(
                        onPressed: () => context.go('/map?route=$routeId'),
                        child: const Text('View on map'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}