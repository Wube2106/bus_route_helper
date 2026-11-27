import 'package:bus_route_helper/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('app starts on the Home screen', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: BusRouteHelperApp()));
    await tester.pumpAndSettle();
    expect(find.text('Where are you going today?'), findsWidgets);
  });
}