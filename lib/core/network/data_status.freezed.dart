// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DataStatus {

 String? get gdUserCreatedId; String? get szUserCreatedNm; String? get gdUserUpdatedId; String? get szUserUpdatedNm; DateTime? get dtmCreated; DateTime? get dtmLastUpdated; bool get bInActive;
/// Create a copy of DataStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataStatusCopyWith<DataStatus> get copyWith => _$DataStatusCopyWithImpl<DataStatus>(this as DataStatus, _$identity);

  /// Serializes this DataStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataStatus&&(identical(other.gdUserCreatedId, gdUserCreatedId) || other.gdUserCreatedId == gdUserCreatedId)&&(identical(other.szUserCreatedNm, szUserCreatedNm) || other.szUserCreatedNm == szUserCreatedNm)&&(identical(other.gdUserUpdatedId, gdUserUpdatedId) || other.gdUserUpdatedId == gdUserUpdatedId)&&(identical(other.szUserUpdatedNm, szUserUpdatedNm) || other.szUserUpdatedNm == szUserUpdatedNm)&&(identical(other.dtmCreated, dtmCreated) || other.dtmCreated == dtmCreated)&&(identical(other.dtmLastUpdated, dtmLastUpdated) || other.dtmLastUpdated == dtmLastUpdated)&&(identical(other.bInActive, bInActive) || other.bInActive == bInActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gdUserCreatedId,szUserCreatedNm,gdUserUpdatedId,szUserUpdatedNm,dtmCreated,dtmLastUpdated,bInActive);

@override
String toString() {
  return 'DataStatus(gdUserCreatedId: $gdUserCreatedId, szUserCreatedNm: $szUserCreatedNm, gdUserUpdatedId: $gdUserUpdatedId, szUserUpdatedNm: $szUserUpdatedNm, dtmCreated: $dtmCreated, dtmLastUpdated: $dtmLastUpdated, bInActive: $bInActive)';
}


}

/// @nodoc
abstract mixin class $DataStatusCopyWith<$Res>  {
  factory $DataStatusCopyWith(DataStatus value, $Res Function(DataStatus) _then) = _$DataStatusCopyWithImpl;
@useResult
$Res call({
 String? gdUserCreatedId, String? szUserCreatedNm, String? gdUserUpdatedId, String? szUserUpdatedNm, DateTime? dtmCreated, DateTime? dtmLastUpdated, bool bInActive
});




}
/// @nodoc
class _$DataStatusCopyWithImpl<$Res>
    implements $DataStatusCopyWith<$Res> {
  _$DataStatusCopyWithImpl(this._self, this._then);

  final DataStatus _self;
  final $Res Function(DataStatus) _then;

/// Create a copy of DataStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gdUserCreatedId = freezed,Object? szUserCreatedNm = freezed,Object? gdUserUpdatedId = freezed,Object? szUserUpdatedNm = freezed,Object? dtmCreated = freezed,Object? dtmLastUpdated = freezed,Object? bInActive = null,}) {
  return _then(_self.copyWith(
gdUserCreatedId: freezed == gdUserCreatedId ? _self.gdUserCreatedId : gdUserCreatedId // ignore: cast_nullable_to_non_nullable
as String?,szUserCreatedNm: freezed == szUserCreatedNm ? _self.szUserCreatedNm : szUserCreatedNm // ignore: cast_nullable_to_non_nullable
as String?,gdUserUpdatedId: freezed == gdUserUpdatedId ? _self.gdUserUpdatedId : gdUserUpdatedId // ignore: cast_nullable_to_non_nullable
as String?,szUserUpdatedNm: freezed == szUserUpdatedNm ? _self.szUserUpdatedNm : szUserUpdatedNm // ignore: cast_nullable_to_non_nullable
as String?,dtmCreated: freezed == dtmCreated ? _self.dtmCreated : dtmCreated // ignore: cast_nullable_to_non_nullable
as DateTime?,dtmLastUpdated: freezed == dtmLastUpdated ? _self.dtmLastUpdated : dtmLastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime?,bInActive: null == bInActive ? _self.bInActive : bInActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DataStatus].
extension DataStatusPatterns on DataStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DataStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DataStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DataStatus value)  $default,){
final _that = this;
switch (_that) {
case _DataStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DataStatus value)?  $default,){
final _that = this;
switch (_that) {
case _DataStatus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? gdUserCreatedId,  String? szUserCreatedNm,  String? gdUserUpdatedId,  String? szUserUpdatedNm,  DateTime? dtmCreated,  DateTime? dtmLastUpdated,  bool bInActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DataStatus() when $default != null:
return $default(_that.gdUserCreatedId,_that.szUserCreatedNm,_that.gdUserUpdatedId,_that.szUserUpdatedNm,_that.dtmCreated,_that.dtmLastUpdated,_that.bInActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? gdUserCreatedId,  String? szUserCreatedNm,  String? gdUserUpdatedId,  String? szUserUpdatedNm,  DateTime? dtmCreated,  DateTime? dtmLastUpdated,  bool bInActive)  $default,) {final _that = this;
switch (_that) {
case _DataStatus():
return $default(_that.gdUserCreatedId,_that.szUserCreatedNm,_that.gdUserUpdatedId,_that.szUserUpdatedNm,_that.dtmCreated,_that.dtmLastUpdated,_that.bInActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? gdUserCreatedId,  String? szUserCreatedNm,  String? gdUserUpdatedId,  String? szUserUpdatedNm,  DateTime? dtmCreated,  DateTime? dtmLastUpdated,  bool bInActive)?  $default,) {final _that = this;
switch (_that) {
case _DataStatus() when $default != null:
return $default(_that.gdUserCreatedId,_that.szUserCreatedNm,_that.gdUserUpdatedId,_that.szUserUpdatedNm,_that.dtmCreated,_that.dtmLastUpdated,_that.bInActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DataStatus implements DataStatus {
  const _DataStatus({this.gdUserCreatedId, this.szUserCreatedNm, this.gdUserUpdatedId, this.szUserUpdatedNm, this.dtmCreated, this.dtmLastUpdated, this.bInActive = false});
  factory _DataStatus.fromJson(Map<String, dynamic> json) => _$DataStatusFromJson(json);

@override final  String? gdUserCreatedId;
@override final  String? szUserCreatedNm;
@override final  String? gdUserUpdatedId;
@override final  String? szUserUpdatedNm;
@override final  DateTime? dtmCreated;
@override final  DateTime? dtmLastUpdated;
@override@JsonKey() final  bool bInActive;

/// Create a copy of DataStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataStatusCopyWith<_DataStatus> get copyWith => __$DataStatusCopyWithImpl<_DataStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DataStatus&&(identical(other.gdUserCreatedId, gdUserCreatedId) || other.gdUserCreatedId == gdUserCreatedId)&&(identical(other.szUserCreatedNm, szUserCreatedNm) || other.szUserCreatedNm == szUserCreatedNm)&&(identical(other.gdUserUpdatedId, gdUserUpdatedId) || other.gdUserUpdatedId == gdUserUpdatedId)&&(identical(other.szUserUpdatedNm, szUserUpdatedNm) || other.szUserUpdatedNm == szUserUpdatedNm)&&(identical(other.dtmCreated, dtmCreated) || other.dtmCreated == dtmCreated)&&(identical(other.dtmLastUpdated, dtmLastUpdated) || other.dtmLastUpdated == dtmLastUpdated)&&(identical(other.bInActive, bInActive) || other.bInActive == bInActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gdUserCreatedId,szUserCreatedNm,gdUserUpdatedId,szUserUpdatedNm,dtmCreated,dtmLastUpdated,bInActive);

@override
String toString() {
  return 'DataStatus(gdUserCreatedId: $gdUserCreatedId, szUserCreatedNm: $szUserCreatedNm, gdUserUpdatedId: $gdUserUpdatedId, szUserUpdatedNm: $szUserUpdatedNm, dtmCreated: $dtmCreated, dtmLastUpdated: $dtmLastUpdated, bInActive: $bInActive)';
}


}

/// @nodoc
abstract mixin class _$DataStatusCopyWith<$Res> implements $DataStatusCopyWith<$Res> {
  factory _$DataStatusCopyWith(_DataStatus value, $Res Function(_DataStatus) _then) = __$DataStatusCopyWithImpl;
@override @useResult
$Res call({
 String? gdUserCreatedId, String? szUserCreatedNm, String? gdUserUpdatedId, String? szUserUpdatedNm, DateTime? dtmCreated, DateTime? dtmLastUpdated, bool bInActive
});




}
/// @nodoc
class __$DataStatusCopyWithImpl<$Res>
    implements _$DataStatusCopyWith<$Res> {
  __$DataStatusCopyWithImpl(this._self, this._then);

  final _DataStatus _self;
  final $Res Function(_DataStatus) _then;

/// Create a copy of DataStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gdUserCreatedId = freezed,Object? szUserCreatedNm = freezed,Object? gdUserUpdatedId = freezed,Object? szUserUpdatedNm = freezed,Object? dtmCreated = freezed,Object? dtmLastUpdated = freezed,Object? bInActive = null,}) {
  return _then(_DataStatus(
gdUserCreatedId: freezed == gdUserCreatedId ? _self.gdUserCreatedId : gdUserCreatedId // ignore: cast_nullable_to_non_nullable
as String?,szUserCreatedNm: freezed == szUserCreatedNm ? _self.szUserCreatedNm : szUserCreatedNm // ignore: cast_nullable_to_non_nullable
as String?,gdUserUpdatedId: freezed == gdUserUpdatedId ? _self.gdUserUpdatedId : gdUserUpdatedId // ignore: cast_nullable_to_non_nullable
as String?,szUserUpdatedNm: freezed == szUserUpdatedNm ? _self.szUserUpdatedNm : szUserUpdatedNm // ignore: cast_nullable_to_non_nullable
as String?,dtmCreated: freezed == dtmCreated ? _self.dtmCreated : dtmCreated // ignore: cast_nullable_to_non_nullable
as DateTime?,dtmLastUpdated: freezed == dtmLastUpdated ? _self.dtmLastUpdated : dtmLastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime?,bInActive: null == bInActive ? _self.bInActive : bInActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
