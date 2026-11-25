import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/fake_suggestion_service.dart';
import '../domain/suggestion_service.dart';

final suggestionServiceProvider = Provider<SuggestionService>(
  (ref) => FakeSuggestionService(),
);

class PreferenceNotifier extends Notifier<Preference> {
  @override
  Preference build() => Preference.none;

  void select(Preference preference) => state = preference;
}

final preferenceProvider = NotifierProvider<PreferenceNotifier, Preference>(
  PreferenceNotifier.new,
);