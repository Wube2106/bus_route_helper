import 'package:bus_route_helper/features/map/presentation/map_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('map without a route shows the empty state', (tester) async {
    await tester.pumpWidget(
      const ProviderScope(child: MaterialApp(home: MapScreen())),
    );
    expect(find.text('Choose a route to see it on the map.'), findsOneWidget);
  });

  testWidgets('map with a route shows the summary card', (tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: MaterialApp(home: MapScreen(routeId: 'r1')),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.textContaining('stops'), findsWidgets);
  });
}
