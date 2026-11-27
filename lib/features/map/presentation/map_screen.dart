import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../routes/domain/models.dart';
import '../../search/presentation/search_providers.dart';
import 'map_providers.dart';
import 'route_painter.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key, this.routeId});

  final String? routeId;

  @override
  Widget build(BuildContext context) {
    final id = routeId;
    return Scaffold(
      appBar: AppBar(title: const Text('Map View')),
      body: id == null ? const _EmptyMap() : _RouteMap(routeId: id),
    );
  }
}

class _EmptyMap extends StatelessWidget {
  const _EmptyMap();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Choose a route to see it on the map.'),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () => context.go('/'),
              child: const Text('Search routes'),
            ),
          ],
        ),
      ),
    );
  }
}

class _RouteMap extends ConsumerWidget {
  const _RouteMap({required this.routeId});

  final String routeId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = Theme.of(context).colorScheme;
    final stops = ref.watch(mapStopsProvider(routeId));
    final route = ref.watch(mapRouteProvider(routeId));
    final fare = ref.watch(routeFareProvider(routeId));

    return stops.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) =>
          const Center(child: Text('Could not load the route.')),
      data: (stopList) {
        if (stopList.isEmpty) {
          return const Center(child: Text('This route has no stops yet.'));
        }
        final routeValue = route.value;
        final typeLabel =
            routeValue?.type == TransportType.anbessa ? 'Anbessa' : 'Minibus';
        return Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                color: colors.surfaceContainerHighest,
                child: CustomPaint(
                  painter: RoutePainter(
                    stops: stopList,
                    lineColor: colors.primary,
                    dotColor: colors.primary,
                    textColor: colors.onSurface,
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(16),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      routeValue?.name ?? 'Route',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '$typeLabel · ${stopList.length} stops'
                      '${fare.value == null ? '' : ' · ETB ${fare.value!.amountEtb}'}',
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
