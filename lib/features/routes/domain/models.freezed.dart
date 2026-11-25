// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Stop {

 String get id; String get name; double get latitude; double get longitude; bool get isPopular;
/// Create a copy of Stop
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StopCopyWith<Stop> get copyWith => _$StopCopyWithImpl<Stop>(this as Stop, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Stop;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Stop&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.latitude, _this.latitude) || other.latitude == _this.latitude)&&(identical(other.longitude, _this.longitude) || other.longitude == _this.longitude)&&(identical(other.isPopular, _this.isPopular) || other.isPopular == _this.isPopular));
}


@override
int get hashCode {
  final _this = this as Stop;
  return Object.hash(runtimeType,_this.id,_this.name,_this.latitude,_this.longitude,_this.isPopular);
}

@override
String toString() {
  final _this = this as Stop;
  return 'Stop(id: ${_this.id}, name: ${_this.name}, latitude: ${_this.latitude}, longitude: ${_this.longitude}, isPopular: ${_this.isPopular})';
}


}

/// @nodoc
abstract mixin class $StopCopyWith<$Res>  {
  factory $StopCopyWith(Stop value, $Res Function(Stop) _then) = _$StopCopyWithImpl;
@useResult
$Res call({
 String id, String name, double latitude, double longitude, bool isPopular
});




}
/// @nodoc
class _$StopCopyWithImpl<$Res>
    implements $StopCopyWith<$Res> {
  _$StopCopyWithImpl(this._self, this._then);

  final Stop _self;
  final $Res Function(Stop) _then;

/// Create a copy of Stop
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? latitude = null,Object? longitude = null,Object? isPopular = null,}) {
  return _then(Stop(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,isPopular: null == isPopular ? _self.isPopular : isPopular // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Stop].
extension StopPatterns on Stop {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Stop value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Stop() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Stop value)  $default,){
final _that = this;
switch (_that) {
case _Stop():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Stop value)?  $default,){
final _that = this;
switch (_that) {
case _Stop() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  double latitude,  double longitude,  bool isPopular)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Stop() when $default != null:
return $default(_that.id,_that.name,_that.latitude,_that.longitude,_that.isPopular);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  double latitude,  double longitude,  bool isPopular)  $default,) {final _that = this;
switch (_that) {
case _Stop():
return $default(_that.id,_that.name,_that.latitude,_that.longitude,_that.isPopular);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  double latitude,  double longitude,  bool isPopular)?  $default,) {final _that = this;
switch (_that) {
case _Stop() when $default != null:
return $default(_that.id,_that.name,_that.latitude,_that.longitude,_that.isPopular);case _:
  return null;

}
}

}

/// @nodoc


class _Stop implements Stop {
  const _Stop({required this.id, required this.name, required this.latitude, required this.longitude, this.isPopular = false});
  

@override final  String id;
@override final  String name;
@override final  double latitude;
@override final  double longitude;
@override@JsonKey() final  bool isPopular;

/// Create a copy of Stop
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StopCopyWith<_Stop> get copyWith => __$StopCopyWithImpl<_Stop>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Stop&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.isPopular, isPopular) || other.isPopular == isPopular));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,latitude,longitude,isPopular);
}

@override
String toString() {
    return 'Stop(id: $id, name: $name, latitude: $latitude, longitude: $longitude, isPopular: $isPopular)';
}


}

/// @nodoc
abstract mixin class _$StopCopyWith<$Res> implements $StopCopyWith<$Res> {
  factory _$StopCopyWith(_Stop value, $Res Function(_Stop) _then) = __$StopCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, double latitude, double longitude, bool isPopular
});




}
/// @nodoc
class __$StopCopyWithImpl<$Res>
    implements _$StopCopyWith<$Res> {
  __$StopCopyWithImpl(this._self, this._then);

  final _Stop _self;
  final $Res Function(_Stop) _then;

/// Create a copy of Stop
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? latitude = null,Object? longitude = null,Object? isPopular = null,}) {
  return _then(_Stop(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,isPopular: null == isPopular ? _self.isPopular : isPopular // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$BusRoute {

 String get id; String get name; TransportType get type;
/// Create a copy of BusRoute
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BusRouteCopyWith<BusRoute> get copyWith => _$BusRouteCopyWithImpl<BusRoute>(this as BusRoute, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as BusRoute;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BusRoute&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.type, _this.type) || other.type == _this.type));
}


@override
int get hashCode {
  final _this = this as BusRoute;
  return Object.hash(runtimeType,_this.id,_this.name,_this.type);
}

@override
String toString() {
  final _this = this as BusRoute;
  return 'BusRoute(id: ${_this.id}, name: ${_this.name}, type: ${_this.type})';
}


}

/// @nodoc
abstract mixin class $BusRouteCopyWith<$Res>  {
  factory $BusRouteCopyWith(BusRoute value, $Res Function(BusRoute) _then) = _$BusRouteCopyWithImpl;
@useResult
$Res call({
 String id, String name, TransportType type
});




}
/// @nodoc
class _$BusRouteCopyWithImpl<$Res>
    implements $BusRouteCopyWith<$Res> {
  _$BusRouteCopyWithImpl(this._self, this._then);

  final BusRoute _self;
  final $Res Function(BusRoute) _then;

/// Create a copy of BusRoute
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,}) {
  return _then(BusRoute(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransportType,
  ));
}

}


/// Adds pattern-matching-related methods to [BusRoute].
extension BusRoutePatterns on BusRoute {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BusRoute value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BusRoute() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BusRoute value)  $default,){
final _that = this;
switch (_that) {
case _BusRoute():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BusRoute value)?  $default,){
final _that = this;
switch (_that) {
case _BusRoute() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  TransportType type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BusRoute() when $default != null:
return $default(_that.id,_that.name,_that.type);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  TransportType type)  $default,) {final _that = this;
switch (_that) {
case _BusRoute():
return $default(_that.id,_that.name,_that.type);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  TransportType type)?  $default,) {final _that = this;
switch (_that) {
case _BusRoute() when $default != null:
return $default(_that.id,_that.name,_that.type);case _:
  return null;

}
}

}

/// @nodoc


class _BusRoute implements BusRoute {
  const _BusRoute({required this.id, required this.name, required this.type});
  

@override final  String id;
@override final  String name;
@override final  TransportType type;

/// Create a copy of BusRoute
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BusRouteCopyWith<_BusRoute> get copyWith => __$BusRouteCopyWithImpl<_BusRoute>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BusRoute&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,type);
}

@override
String toString() {
    return 'BusRoute(id: $id, name: $name, type: $type)';
}


}

/// @nodoc
abstract mixin class _$BusRouteCopyWith<$Res> implements $BusRouteCopyWith<$Res> {
  factory _$BusRouteCopyWith(_BusRoute value, $Res Function(_BusRoute) _then) = __$BusRouteCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, TransportType type
});




}
/// @nodoc
class __$BusRouteCopyWithImpl<$Res>
    implements _$BusRouteCopyWith<$Res> {
  __$BusRouteCopyWithImpl(this._self, this._then);

  final _BusRoute _self;
  final $Res Function(_BusRoute) _then;

/// Create a copy of BusRoute
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,}) {
  return _then(_BusRoute(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransportType,
  ));
}


}

/// @nodoc
mixin _$RouteStop {

 String get routeId; String get stopId; int get position;
/// Create a copy of RouteStop
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RouteStopCopyWith<RouteStop> get copyWith => _$RouteStopCopyWithImpl<RouteStop>(this as RouteStop, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as RouteStop;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RouteStop&&(identical(other.routeId, _this.routeId) || other.routeId == _this.routeId)&&(identical(other.stopId, _this.stopId) || other.stopId == _this.stopId)&&(identical(other.position, _this.position) || other.position == _this.position));
}


@override
int get hashCode {
  final _this = this as RouteStop;
  return Object.hash(runtimeType,_this.routeId,_this.stopId,_this.position);
}

@override
String toString() {
  final _this = this as RouteStop;
  return 'RouteStop(routeId: ${_this.routeId}, stopId: ${_this.stopId}, position: ${_this.position})';
}


}

/// @nodoc
abstract mixin class $RouteStopCopyWith<$Res>  {
  factory $RouteStopCopyWith(RouteStop value, $Res Function(RouteStop) _then) = _$RouteStopCopyWithImpl;
@useResult
$Res call({
 String routeId, String stopId, int position
});




}
/// @nodoc
class _$RouteStopCopyWithImpl<$Res>
    implements $RouteStopCopyWith<$Res> {
  _$RouteStopCopyWithImpl(this._self, this._then);

  final RouteStop _self;
  final $Res Function(RouteStop) _then;

/// Create a copy of RouteStop
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? routeId = null,Object? stopId = null,Object? position = null,}) {
  return _then(RouteStop(
routeId: null == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String,stopId: null == stopId ? _self.stopId : stopId // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [RouteStop].
extension RouteStopPatterns on RouteStop {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RouteStop value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RouteStop() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RouteStop value)  $default,){
final _that = this;
switch (_that) {
case _RouteStop():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RouteStop value)?  $default,){
final _that = this;
switch (_that) {
case _RouteStop() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String routeId,  String stopId,  int position)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RouteStop() when $default != null:
return $default(_that.routeId,_that.stopId,_that.position);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String routeId,  String stopId,  int position)  $default,) {final _that = this;
switch (_that) {
case _RouteStop():
return $default(_that.routeId,_that.stopId,_that.position);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String routeId,  String stopId,  int position)?  $default,) {final _that = this;
switch (_that) {
case _RouteStop() when $default != null:
return $default(_that.routeId,_that.stopId,_that.position);case _:
  return null;

}
}

}

/// @nodoc


class _RouteStop implements RouteStop {
  const _RouteStop({required this.routeId, required this.stopId, required this.position});
  

@override final  String routeId;
@override final  String stopId;
@override final  int position;

/// Create a copy of RouteStop
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RouteStopCopyWith<_RouteStop> get copyWith => __$RouteStopCopyWithImpl<_RouteStop>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RouteStop&&(identical(other.routeId, routeId) || other.routeId == routeId)&&(identical(other.stopId, stopId) || other.stopId == stopId)&&(identical(other.position, position) || other.position == position));
}


@override
int get hashCode {
    return Object.hash(runtimeType,routeId,stopId,position);
}

@override
String toString() {
    return 'RouteStop(routeId: $routeId, stopId: $stopId, position: $position)';
}


}

/// @nodoc
abstract mixin class _$RouteStopCopyWith<$Res> implements $RouteStopCopyWith<$Res> {
  factory _$RouteStopCopyWith(_RouteStop value, $Res Function(_RouteStop) _then) = __$RouteStopCopyWithImpl;
@override @useResult
$Res call({
 String routeId, String stopId, int position
});




}
/// @nodoc
class __$RouteStopCopyWithImpl<$Res>
    implements _$RouteStopCopyWith<$Res> {
  __$RouteStopCopyWithImpl(this._self, this._then);

  final _RouteStop _self;
  final $Res Function(_RouteStop) _then;

/// Create a copy of RouteStop
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? routeId = null,Object? stopId = null,Object? position = null,}) {
  return _then(_RouteStop(
routeId: null == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String,stopId: null == stopId ? _self.stopId : stopId // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$Fare {

 String get routeId; String get fromStopId; String get toStopId; double get amountEtb; DateTime get checkedOn;
/// Create a copy of Fare
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FareCopyWith<Fare> get copyWith => _$FareCopyWithImpl<Fare>(this as Fare, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Fare;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Fare&&(identical(other.routeId, _this.routeId) || other.routeId == _this.routeId)&&(identical(other.fromStopId, _this.fromStopId) || other.fromStopId == _this.fromStopId)&&(identical(other.toStopId, _this.toStopId) || other.toStopId == _this.toStopId)&&(identical(other.amountEtb, _this.amountEtb) || other.amountEtb == _this.amountEtb)&&(identical(other.checkedOn, _this.checkedOn) || other.checkedOn == _this.checkedOn));
}


@override
int get hashCode {
  final _this = this as Fare;
  return Object.hash(runtimeType,_this.routeId,_this.fromStopId,_this.toStopId,_this.amountEtb,_this.checkedOn);
}

@override
String toString() {
  final _this = this as Fare;
  return 'Fare(routeId: ${_this.routeId}, fromStopId: ${_this.fromStopId}, toStopId: ${_this.toStopId}, amountEtb: ${_this.amountEtb}, checkedOn: ${_this.checkedOn})';
}


}

/// @nodoc
abstract mixin class $FareCopyWith<$Res>  {
  factory $FareCopyWith(Fare value, $Res Function(Fare) _then) = _$FareCopyWithImpl;
@useResult
$Res call({
 String routeId, String fromStopId, String toStopId, double amountEtb, DateTime checkedOn
});




}
/// @nodoc
class _$FareCopyWithImpl<$Res>
    implements $FareCopyWith<$Res> {
  _$FareCopyWithImpl(this._self, this._then);

  final Fare _self;
  final $Res Function(Fare) _then;

/// Create a copy of Fare
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? routeId = null,Object? fromStopId = null,Object? toStopId = null,Object? amountEtb = null,Object? checkedOn = null,}) {
  return _then(Fare(
routeId: null == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String,fromStopId: null == fromStopId ? _self.fromStopId : fromStopId // ignore: cast_nullable_to_non_nullable
as String,toStopId: null == toStopId ? _self.toStopId : toStopId // ignore: cast_nullable_to_non_nullable
as String,amountEtb: null == amountEtb ? _self.amountEtb : amountEtb // ignore: cast_nullable_to_non_nullable
as double,checkedOn: null == checkedOn ? _self.checkedOn : checkedOn // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Fare].
extension FarePatterns on Fare {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Fare value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Fare() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Fare value)  $default,){
final _that = this;
switch (_that) {
case _Fare():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Fare value)?  $default,){
final _that = this;
switch (_that) {
case _Fare() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String routeId,  String fromStopId,  String toStopId,  double amountEtb,  DateTime checkedOn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Fare() when $default != null:
return $default(_that.routeId,_that.fromStopId,_that.toStopId,_that.amountEtb,_that.checkedOn);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String routeId,  String fromStopId,  String toStopId,  double amountEtb,  DateTime checkedOn)  $default,) {final _that = this;
switch (_that) {
case _Fare():
return $default(_that.routeId,_that.fromStopId,_that.toStopId,_that.amountEtb,_that.checkedOn);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String routeId,  String fromStopId,  String toStopId,  double amountEtb,  DateTime checkedOn)?  $default,) {final _that = this;
switch (_that) {
case _Fare() when $default != null:
return $default(_that.routeId,_that.fromStopId,_that.toStopId,_that.amountEtb,_that.checkedOn);case _:
  return null;

}
}

}

/// @nodoc


class _Fare implements Fare {
  const _Fare({required this.routeId, required this.fromStopId, required this.toStopId, required this.amountEtb, required this.checkedOn});
  

@override final  String routeId;
@override final  String fromStopId;
@override final  String toStopId;
@override final  double amountEtb;
@override final  DateTime checkedOn;

/// Create a copy of Fare
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FareCopyWith<_Fare> get copyWith => __$FareCopyWithImpl<_Fare>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fare&&(identical(other.routeId, routeId) || other.routeId == routeId)&&(identical(other.fromStopId, fromStopId) || other.fromStopId == fromStopId)&&(identical(other.toStopId, toStopId) || other.toStopId == toStopId)&&(identical(other.amountEtb, amountEtb) || other.amountEtb == amountEtb)&&(identical(other.checkedOn, checkedOn) || other.checkedOn == checkedOn));
}


@override
int get hashCode {
    return Object.hash(runtimeType,routeId,fromStopId,toStopId,amountEtb,checkedOn);
}

@override
String toString() {
    return 'Fare(routeId: $routeId, fromStopId: $fromStopId, toStopId: $toStopId, amountEtb: $amountEtb, checkedOn: $checkedOn)';
}


}

/// @nodoc
abstract mixin class _$FareCopyWith<$Res> implements $FareCopyWith<$Res> {
  factory _$FareCopyWith(_Fare value, $Res Function(_Fare) _then) = __$FareCopyWithImpl;
@override @useResult
$Res call({
 String routeId, String fromStopId, String toStopId, double amountEtb, DateTime checkedOn
});




}
/// @nodoc
class __$FareCopyWithImpl<$Res>
    implements _$FareCopyWith<$Res> {
  __$FareCopyWithImpl(this._self, this._then);

  final _Fare _self;
  final $Res Function(_Fare) _then;

/// Create a copy of Fare
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? routeId = null,Object? fromStopId = null,Object? toStopId = null,Object? amountEtb = null,Object? checkedOn = null,}) {
  return _then(_Fare(
routeId: null == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String,fromStopId: null == fromStopId ? _self.fromStopId : fromStopId // ignore: cast_nullable_to_non_nullable
as String,toStopId: null == toStopId ? _self.toStopId : toStopId // ignore: cast_nullable_to_non_nullable
as String,amountEtb: null == amountEtb ? _self.amountEtb : amountEtb // ignore: cast_nullable_to_non_nullable
as double,checkedOn: null == checkedOn ? _self.checkedOn : checkedOn // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
