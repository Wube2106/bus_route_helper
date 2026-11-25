// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SavedRoute {

 String get routeId; String get boardStopId; String get alightStopId; DateTime get createdAt;
/// Create a copy of SavedRoute
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavedRouteCopyWith<SavedRoute> get copyWith => _$SavedRouteCopyWithImpl<SavedRoute>(this as SavedRoute, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SavedRoute;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedRoute&&(identical(other.routeId, _this.routeId) || other.routeId == _this.routeId)&&(identical(other.boardStopId, _this.boardStopId) || other.boardStopId == _this.boardStopId)&&(identical(other.alightStopId, _this.alightStopId) || other.alightStopId == _this.alightStopId)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}


@override
int get hashCode {
  final _this = this as SavedRoute;
  return Object.hash(runtimeType,_this.routeId,_this.boardStopId,_this.alightStopId,_this.createdAt);
}

@override
String toString() {
  final _this = this as SavedRoute;
  return 'SavedRoute(routeId: ${_this.routeId}, boardStopId: ${_this.boardStopId}, alightStopId: ${_this.alightStopId}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $SavedRouteCopyWith<$Res>  {
  factory $SavedRouteCopyWith(SavedRoute value, $Res Function(SavedRoute) _then) = _$SavedRouteCopyWithImpl;
@useResult
$Res call({
 String routeId, String boardStopId, String alightStopId, DateTime createdAt
});




}
/// @nodoc
class _$SavedRouteCopyWithImpl<$Res>
    implements $SavedRouteCopyWith<$Res> {
  _$SavedRouteCopyWithImpl(this._self, this._then);

  final SavedRoute _self;
  final $Res Function(SavedRoute) _then;

/// Create a copy of SavedRoute
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? routeId = null,Object? boardStopId = null,Object? alightStopId = null,Object? createdAt = null,}) {
  return _then(SavedRoute(
routeId: null == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String,boardStopId: null == boardStopId ? _self.boardStopId : boardStopId // ignore: cast_nullable_to_non_nullable
as String,alightStopId: null == alightStopId ? _self.alightStopId : alightStopId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [SavedRoute].
extension SavedRoutePatterns on SavedRoute {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SavedRoute value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SavedRoute() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SavedRoute value)  $default,){
final _that = this;
switch (_that) {
case _SavedRoute():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SavedRoute value)?  $default,){
final _that = this;
switch (_that) {
case _SavedRoute() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String routeId,  String boardStopId,  String alightStopId,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SavedRoute() when $default != null:
return $default(_that.routeId,_that.boardStopId,_that.alightStopId,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String routeId,  String boardStopId,  String alightStopId,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _SavedRoute():
return $default(_that.routeId,_that.boardStopId,_that.alightStopId,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String routeId,  String boardStopId,  String alightStopId,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _SavedRoute() when $default != null:
return $default(_that.routeId,_that.boardStopId,_that.alightStopId,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _SavedRoute implements SavedRoute {
  const _SavedRoute({required this.routeId, required this.boardStopId, required this.alightStopId, required this.createdAt});
  

@override final  String routeId;
@override final  String boardStopId;
@override final  String alightStopId;
@override final  DateTime createdAt;

/// Create a copy of SavedRoute
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavedRouteCopyWith<_SavedRoute> get copyWith => __$SavedRouteCopyWithImpl<_SavedRoute>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavedRoute&&(identical(other.routeId, routeId) || other.routeId == routeId)&&(identical(other.boardStopId, boardStopId) || other.boardStopId == boardStopId)&&(identical(other.alightStopId, alightStopId) || other.alightStopId == alightStopId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,routeId,boardStopId,alightStopId,createdAt);
}

@override
String toString() {
    return 'SavedRoute(routeId: $routeId, boardStopId: $boardStopId, alightStopId: $alightStopId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$SavedRouteCopyWith<$Res> implements $SavedRouteCopyWith<$Res> {
  factory _$SavedRouteCopyWith(_SavedRoute value, $Res Function(_SavedRoute) _then) = __$SavedRouteCopyWithImpl;
@override @useResult
$Res call({
 String routeId, String boardStopId, String alightStopId, DateTime createdAt
});




}
/// @nodoc
class __$SavedRouteCopyWithImpl<$Res>
    implements _$SavedRouteCopyWith<$Res> {
  __$SavedRouteCopyWithImpl(this._self, this._then);

  final _SavedRoute _self;
  final $Res Function(_SavedRoute) _then;

/// Create a copy of SavedRoute
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? routeId = null,Object? boardStopId = null,Object? alightStopId = null,Object? createdAt = null,}) {
  return _then(_SavedRoute(
routeId: null == routeId ? _self.routeId : routeId // ignore: cast_nullable_to_non_nullable
as String,boardStopId: null == boardStopId ? _self.boardStopId : boardStopId // ignore: cast_nullable_to_non_nullable
as String,alightStopId: null == alightStopId ? _self.alightStopId : alightStopId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
