// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'info_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InfoData {

 String? get gdId; String get szName; String? get szDescription; String? get szImageUrl; DateTime? get dtmCreated; DataStatus? get dataStatus; int? get intIndex; bool? get bUpdated;
/// Create a copy of InfoData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InfoDataCopyWith<InfoData> get copyWith => _$InfoDataCopyWithImpl<InfoData>(this as InfoData, _$identity);

  /// Serializes this InfoData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InfoData&&(identical(other.gdId, gdId) || other.gdId == gdId)&&(identical(other.szName, szName) || other.szName == szName)&&(identical(other.szDescription, szDescription) || other.szDescription == szDescription)&&(identical(other.szImageUrl, szImageUrl) || other.szImageUrl == szImageUrl)&&(identical(other.dtmCreated, dtmCreated) || other.dtmCreated == dtmCreated)&&(identical(other.dataStatus, dataStatus) || other.dataStatus == dataStatus)&&(identical(other.intIndex, intIndex) || other.intIndex == intIndex)&&(identical(other.bUpdated, bUpdated) || other.bUpdated == bUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gdId,szName,szDescription,szImageUrl,dtmCreated,dataStatus,intIndex,bUpdated);

@override
String toString() {
  return 'InfoData(gdId: $gdId, szName: $szName, szDescription: $szDescription, szImageUrl: $szImageUrl, dtmCreated: $dtmCreated, dataStatus: $dataStatus, intIndex: $intIndex, bUpdated: $bUpdated)';
}


}

/// @nodoc
abstract mixin class $InfoDataCopyWith<$Res>  {
  factory $InfoDataCopyWith(InfoData value, $Res Function(InfoData) _then) = _$InfoDataCopyWithImpl;
@useResult
$Res call({
 String? gdId, String szName, String? szDescription, String? szImageUrl, DateTime? dtmCreated, DataStatus? dataStatus, int? intIndex, bool? bUpdated
});


$DataStatusCopyWith<$Res>? get dataStatus;

}
/// @nodoc
class _$InfoDataCopyWithImpl<$Res>
    implements $InfoDataCopyWith<$Res> {
  _$InfoDataCopyWithImpl(this._self, this._then);

  final InfoData _self;
  final $Res Function(InfoData) _then;

/// Create a copy of InfoData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gdId = freezed,Object? szName = null,Object? szDescription = freezed,Object? szImageUrl = freezed,Object? dtmCreated = freezed,Object? dataStatus = freezed,Object? intIndex = freezed,Object? bUpdated = freezed,}) {
  return _then(_self.copyWith(
gdId: freezed == gdId ? _self.gdId : gdId // ignore: cast_nullable_to_non_nullable
as String?,szName: null == szName ? _self.szName : szName // ignore: cast_nullable_to_non_nullable
as String,szDescription: freezed == szDescription ? _self.szDescription : szDescription // ignore: cast_nullable_to_non_nullable
as String?,szImageUrl: freezed == szImageUrl ? _self.szImageUrl : szImageUrl // ignore: cast_nullable_to_non_nullable
as String?,dtmCreated: freezed == dtmCreated ? _self.dtmCreated : dtmCreated // ignore: cast_nullable_to_non_nullable
as DateTime?,dataStatus: freezed == dataStatus ? _self.dataStatus : dataStatus // ignore: cast_nullable_to_non_nullable
as DataStatus?,intIndex: freezed == intIndex ? _self.intIndex : intIndex // ignore: cast_nullable_to_non_nullable
as int?,bUpdated: freezed == bUpdated ? _self.bUpdated : bUpdated // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of InfoData
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


/// Adds pattern-matching-related methods to [InfoData].
extension InfoDataPatterns on InfoData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InfoData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InfoData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InfoData value)  $default,){
final _that = this;
switch (_that) {
case _InfoData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InfoData value)?  $default,){
final _that = this;
switch (_that) {
case _InfoData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? gdId,  String szName,  String? szDescription,  String? szImageUrl,  DateTime? dtmCreated,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InfoData() when $default != null:
return $default(_that.gdId,_that.szName,_that.szDescription,_that.szImageUrl,_that.dtmCreated,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? gdId,  String szName,  String? szDescription,  String? szImageUrl,  DateTime? dtmCreated,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)  $default,) {final _that = this;
switch (_that) {
case _InfoData():
return $default(_that.gdId,_that.szName,_that.szDescription,_that.szImageUrl,_that.dtmCreated,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? gdId,  String szName,  String? szDescription,  String? szImageUrl,  DateTime? dtmCreated,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)?  $default,) {final _that = this;
switch (_that) {
case _InfoData() when $default != null:
return $default(_that.gdId,_that.szName,_that.szDescription,_that.szImageUrl,_that.dtmCreated,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InfoData implements InfoData {
  const _InfoData({this.gdId, required this.szName, this.szDescription, this.szImageUrl, this.dtmCreated, this.dataStatus, this.intIndex, this.bUpdated});
  factory _InfoData.fromJson(Map<String, dynamic> json) => _$InfoDataFromJson(json);

@override final  String? gdId;
@override final  String szName;
@override final  String? szDescription;
@override final  String? szImageUrl;
@override final  DateTime? dtmCreated;
@override final  DataStatus? dataStatus;
@override final  int? intIndex;
@override final  bool? bUpdated;

/// Create a copy of InfoData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InfoDataCopyWith<_InfoData> get copyWith => __$InfoDataCopyWithImpl<_InfoData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InfoDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InfoData&&(identical(other.gdId, gdId) || other.gdId == gdId)&&(identical(other.szName, szName) || other.szName == szName)&&(identical(other.szDescription, szDescription) || other.szDescription == szDescription)&&(identical(other.szImageUrl, szImageUrl) || other.szImageUrl == szImageUrl)&&(identical(other.dtmCreated, dtmCreated) || other.dtmCreated == dtmCreated)&&(identical(other.dataStatus, dataStatus) || other.dataStatus == dataStatus)&&(identical(other.intIndex, intIndex) || other.intIndex == intIndex)&&(identical(other.bUpdated, bUpdated) || other.bUpdated == bUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gdId,szName,szDescription,szImageUrl,dtmCreated,dataStatus,intIndex,bUpdated);

@override
String toString() {
  return 'InfoData(gdId: $gdId, szName: $szName, szDescription: $szDescription, szImageUrl: $szImageUrl, dtmCreated: $dtmCreated, dataStatus: $dataStatus, intIndex: $intIndex, bUpdated: $bUpdated)';
}


}

/// @nodoc
abstract mixin class _$InfoDataCopyWith<$Res> implements $InfoDataCopyWith<$Res> {
  factory _$InfoDataCopyWith(_InfoData value, $Res Function(_InfoData) _then) = __$InfoDataCopyWithImpl;
@override @useResult
$Res call({
 String? gdId, String szName, String? szDescription, String? szImageUrl, DateTime? dtmCreated, DataStatus? dataStatus, int? intIndex, bool? bUpdated
});


@override $DataStatusCopyWith<$Res>? get dataStatus;

}
/// @nodoc
class __$InfoDataCopyWithImpl<$Res>
    implements _$InfoDataCopyWith<$Res> {
  __$InfoDataCopyWithImpl(this._self, this._then);

  final _InfoData _self;
  final $Res Function(_InfoData) _then;

/// Create a copy of InfoData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gdId = freezed,Object? szName = null,Object? szDescription = freezed,Object? szImageUrl = freezed,Object? dtmCreated = freezed,Object? dataStatus = freezed,Object? intIndex = freezed,Object? bUpdated = freezed,}) {
  return _then(_InfoData(
gdId: freezed == gdId ? _self.gdId : gdId // ignore: cast_nullable_to_non_nullable
as String?,szName: null == szName ? _self.szName : szName // ignore: cast_nullable_to_non_nullable
as String,szDescription: freezed == szDescription ? _self.szDescription : szDescription // ignore: cast_nullable_to_non_nullable
as String?,szImageUrl: freezed == szImageUrl ? _self.szImageUrl : szImageUrl // ignore: cast_nullable_to_non_nullable
as String?,dtmCreated: freezed == dtmCreated ? _self.dtmCreated : dtmCreated // ignore: cast_nullable_to_non_nullable
as DateTime?,dataStatus: freezed == dataStatus ? _self.dataStatus : dataStatus // ignore: cast_nullable_to_non_nullable
as DataStatus?,intIndex: freezed == intIndex ? _self.intIndex : intIndex // ignore: cast_nullable_to_non_nullable
as int?,bUpdated: freezed == bUpdated ? _self.bUpdated : bUpdated // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of InfoData
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
