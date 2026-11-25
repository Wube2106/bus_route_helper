import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_route.freezed.dart';

@freezed
abstract class SavedRoute with _$SavedRoute {
  const factory SavedRoute({
    required String routeId,
    required String boardStopId,
    required String alightStopId,
    required DateTime createdAt,
  }) = _SavedRoute;
}