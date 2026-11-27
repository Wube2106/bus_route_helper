import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/suggestion_service.dart';
import 'compare_view_providers.dart';
import 'suggestion_providers.dart';

class SuggestionController extends AsyncNotifier<Suggestion?> {
  @override
  Future<Suggestion?> build() async => null;

  Future<void> request() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final entries = await ref.read(compareEntriesProvider.future);
      final names = await ref.read(compareJourneyNamesProvider.future);

      final options = [
        for (final e in entries)
          if (e.fareEtb != null)
            RouteOption(
              routeId: e.route.id,
              name: e.route.name,
              type: e.route.type,
              stopCount: e.stopCount,
              fareEtb: e.fareEtb!,
            ),
      ];

      return ref.read(suggestionServiceProvider).suggest(
            fromName: names.from,
            toName: names.to,
            preference: ref.read(preferenceProvider),
            options: options,
          );
    });
  }
}

final suggestionControllerProvider =
    AsyncNotifierProvider<SuggestionController, Suggestion?>(
  SuggestionController.new,
);
