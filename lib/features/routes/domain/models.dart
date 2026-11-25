import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';

enum TransportType { minibus, anbessa }

@freezed
abstract class Stop with _$Stop {
  const factory Stop({
    required String id,
    required String name,
    required double latitude,
    required double longitude,
    @Default(false) bool isPopular,
  }) = _Stop;
}

@freezed
abstract class BusRoute with _$BusRoute {
  const factory BusRoute({
    required String id,
    required String name,
    required TransportType type,
  }) = _BusRoute;
}

@freezed
abstract class RouteStop with _$RouteStop {
  const factory RouteStop({
    required String routeId,
    required String stopId,
    required int position,
  }) = _RouteStop;
}

@freezed
abstract class Fare with _$Fare {
  const factory Fare({
    required String routeId,
    required String fromStopId,
    required String toStopId,
    required double amountEtb,
    required DateTime checkedOn,
  }) = _Fare;
}