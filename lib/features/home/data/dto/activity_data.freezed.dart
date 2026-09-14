// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ActivityData {

 String? get gdId; String get szName; String? get szDescription; DateTime? get dtmEventDate; DataStatus? get dataStatus; int? get intIndex; bool? get bUpdated;
/// Create a copy of ActivityData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityDataCopyWith<ActivityData> get copyWith => _$ActivityDataCopyWithImpl<ActivityData>(this as ActivityData, _$identity);

  /// Serializes this ActivityData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivityData&&(identical(other.gdId, gdId) || other.gdId == gdId)&&(identical(other.szName, szName) || other.szName == szName)&&(identical(other.szDescription, szDescription) || other.szDescription == szDescription)&&(identical(other.dtmEventDate, dtmEventDate) || other.dtmEventDate == dtmEventDate)&&(identical(other.dataStatus, dataStatus) || other.dataStatus == dataStatus)&&(identical(other.intIndex, intIndex) || other.intIndex == intIndex)&&(identical(other.bUpdated, bUpdated) || other.bUpdated == bUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gdId,szName,szDescription,dtmEventDate,dataStatus,intIndex,bUpdated);

@override
String toString() {
  return 'ActivityData(gdId: $gdId, szName: $szName, szDescription: $szDescription, dtmEventDate: $dtmEventDate, dataStatus: $dataStatus, intIndex: $intIndex, bUpdated: $bUpdated)';
}


}

/// @nodoc
abstract mixin class $ActivityDataCopyWith<$Res>  {
  factory $ActivityDataCopyWith(ActivityData value, $Res Function(ActivityData) _then) = _$ActivityDataCopyWithImpl;
@useResult
$Res call({
 String? gdId, String szName, String? szDescription, DateTime? dtmEventDate, DataStatus? dataStatus, int? intIndex, bool? bUpdated
});


$DataStatusCopyWith<$Res>? get dataStatus;

}
/// @nodoc
class _$ActivityDataCopyWithImpl<$Res>
    implements $ActivityDataCopyWith<$Res> {
  _$ActivityDataCopyWithImpl(this._self, this._then);

  final ActivityData _self;
  final $Res Function(ActivityData) _then;

/// Create a copy of ActivityData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gdId = freezed,Object? szName = null,Object? szDescription = freezed,Object? dtmEventDate = freezed,Object? dataStatus = freezed,Object? intIndex = freezed,Object? bUpdated = freezed,}) {
  return _then(_self.copyWith(
gdId: freezed == gdId ? _self.gdId : gdId // ignore: cast_nullable_to_non_nullable
as String?,szName: null == szName ? _self.szName : szName // ignore: cast_nullable_to_non_nullable
as String,szDescription: freezed == szDescription ? _self.szDescription : szDescription // ignore: cast_nullable_to_non_nullable
as String?,dtmEventDate: freezed == dtmEventDate ? _self.dtmEventDate : dtmEventDate // ignore: cast_nullable_to_non_nullable
as DateTime?,dataStatus: freezed == dataStatus ? _self.dataStatus : dataStatus // ignore: cast_nullable_to_non_nullable
as DataStatus?,intIndex: freezed == intIndex ? _self.intIndex : intIndex // ignore: cast_nullable_to_non_nullable
as int?,bUpdated: freezed == bUpdated ? _self.bUpdated : bUpdated // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of ActivityData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataStatusCopyWith<$Res>? get dataStatus {
    if (_self.dataStatus == null) {
    return null;
  }

  return $DataStatusCopyWith<$Res>(_self.dataStatus!, (value) {
    return _then(_self.copyWith(dataStatus: value));
  });
}
}


/// Adds pattern-matching-related methods to [ActivityData].
extension ActivityDataPatterns on ActivityData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivityData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivityData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivityData value)  $default,){
final _that = this;
switch (_that) {
case _ActivityData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivityData value)?  $default,){
final _that = this;
switch (_that) {
case _ActivityData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? gdId,  String szName,  String? szDescription,  DateTime? dtmEventDate,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivityData() when $default != null:
return $default(_that.gdId,_that.szName,_that.szDescription,_that.dtmEventDate,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? gdId,  String szName,  String? szDescription,  DateTime? dtmEventDate,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)  $default,) {final _that = this;
switch (_that) {
case _ActivityData():
return $default(_that.gdId,_that.szName,_that.szDescription,_that.dtmEventDate,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? gdId,  String szName,  String? szDescription,  DateTime? dtmEventDate,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)?  $default,) {final _that = this;
switch (_that) {
case _ActivityData() when $default != null:
return $default(_that.gdId,_that.szName,_that.szDescription,_that.dtmEventDate,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActivityData implements ActivityData {
  const _ActivityData({this.gdId, required this.szName, this.szDescription, this.dtmEventDate, this.dataStatus, this.intIndex, this.bUpdated});
  factory _ActivityData.fromJson(Map<String, dynamic> json) => _$ActivityDataFromJson(json);

@override final  String? gdId;
@override final  String szName;
@override final  String? szDescription;
@override final  DateTime? dtmEventDate;
@override final  DataStatus? dataStatus;
@override final  int? intIndex;
@override final  bool? bUpdated;

/// Create a copy of ActivityData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityDataCopyWith<_ActivityData> get copyWith => __$ActivityDataCopyWithImpl<_ActivityData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivityDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityData&&(identical(other.gdId, gdId) || other.gdId == gdId)&&(identical(other.szName, szName) || other.szName == szName)&&(identical(other.szDescription, szDescription) || other.szDescription == szDescription)&&(identical(other.dtmEventDate, dtmEventDate) || other.dtmEventDate == dtmEventDate)&&(identical(other.dataStatus, dataStatus) || other.dataStatus == dataStatus)&&(identical(other.intIndex, intIndex) || other.intIndex == intIndex)&&(identical(other.bUpdated, bUpdated) || other.bUpdated == bUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gdId,szName,szDescription,dtmEventDate,dataStatus,intIndex,bUpdated);

@override
String toString() {
  return 'ActivityData(gdId: $gdId, szName: $szName, szDescription: $szDescription, dtmEventDate: $dtmEventDate, dataStatus: $dataStatus, intIndex: $intIndex, bUpdated: $bUpdated)';
}


}

/// @nodoc
abstract mixin class _$ActivityDataCopyWith<$Res> implements $ActivityDataCopyWith<$Res> {
  factory _$ActivityDataCopyWith(_ActivityData value, $Res Function(_ActivityData) _then) = __$ActivityDataCopyWithImpl;
@override @useResult
$Res call({
 String? gdId, String szName, String? szDescription, DateTime? dtmEventDate, DataStatus? dataStatus, int? intIndex, bool? bUpdated
});


@override $DataStatusCopyWith<$Res>? get dataStatus;

}
/// @nodoc
class __$ActivityDataCopyWithImpl<$Res>
    implements _$ActivityDataCopyWith<$Res> {
  __$ActivityDataCopyWithImpl(this._self, this._then);

  final _ActivityData _self;
  final $Res Function(_ActivityData) _then;

/// Create a copy of ActivityData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gdId = freezed,Object? szName = null,Object? szDescription = freezed,Object? dtmEventDate = freezed,Object? dataStatus = freezed,Object? intIndex = freezed,Object? bUpdated = freezed,}) {
  return _then(_ActivityData(
gdId: freezed == gdId ? _self.gdId : gdId // ignore: cast_nullable_to_non_nullable
as String?,szName: null == szName ? _self.szName : szName // ignore: cast_nullable_to_non_nullable
as String,szDescription: freezed == szDescription ? _self.szDescription : szDescription // ignore: cast_nullable_to_non_nullable
as String?,dtmEventDate: freezed == dtmEventDate ? _self.dtmEventDate : dtmEventDate // ignore: cast_nullable_to_non_nullable
as DateTime?,dataStatus: freezed == dataStatus ? _self.dataStatus : dataStatus // ignore: cast_nullable_to_non_nullable
as DataStatus?,intIndex: freezed == intIndex ? _self.intIndex : intIndex // ignore: cast_nullable_to_non_nullable
as int?,bUpdated: freezed == bUpdated ? _self.bUpdated : bUpdated // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of ActivityData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataStatusCopyWith<$Res>? get dataStatus {
    if (_self.dataStatus == null) {
    return null;
  }

  return $DataStatusCopyWith<$Res>(_self.dataStatus!, (value) {
    return _then(_self.copyWith(dataStatus: value));
  });
}
}

// dart format on
