// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'citizen_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CitizenData {

 String? get gdId; String get szCardId; String? get gdCitizenInfoId; CitizenInfoData? get citizenInfo; String? get gdBillTemplateId; DataStatus? get dataStatus; int? get intIndex; bool? get bUpdated;
/// Create a copy of CitizenData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CitizenDataCopyWith<CitizenData> get copyWith => _$CitizenDataCopyWithImpl<CitizenData>(this as CitizenData, _$identity);

  /// Serializes this CitizenData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CitizenData&&(identical(other.gdId, gdId) || other.gdId == gdId)&&(identical(other.szCardId, szCardId) || other.szCardId == szCardId)&&(identical(other.gdCitizenInfoId, gdCitizenInfoId) || other.gdCitizenInfoId == gdCitizenInfoId)&&(identical(other.citizenInfo, citizenInfo) || other.citizenInfo == citizenInfo)&&(identical(other.gdBillTemplateId, gdBillTemplateId) || other.gdBillTemplateId == gdBillTemplateId)&&(identical(other.dataStatus, dataStatus) || other.dataStatus == dataStatus)&&(identical(other.intIndex, intIndex) || other.intIndex == intIndex)&&(identical(other.bUpdated, bUpdated) || other.bUpdated == bUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gdId,szCardId,gdCitizenInfoId,citizenInfo,gdBillTemplateId,dataStatus,intIndex,bUpdated);

@override
String toString() {
  return 'CitizenData(gdId: $gdId, szCardId: $szCardId, gdCitizenInfoId: $gdCitizenInfoId, citizenInfo: $citizenInfo, gdBillTemplateId: $gdBillTemplateId, dataStatus: $dataStatus, intIndex: $intIndex, bUpdated: $bUpdated)';
}


}

/// @nodoc
abstract mixin class $CitizenDataCopyWith<$Res>  {
  factory $CitizenDataCopyWith(CitizenData value, $Res Function(CitizenData) _then) = _$CitizenDataCopyWithImpl;
@useResult
$Res call({
 String? gdId, String szCardId, String? gdCitizenInfoId, CitizenInfoData? citizenInfo, String? gdBillTemplateId, DataStatus? dataStatus, int? intIndex, bool? bUpdated
});


$CitizenInfoDataCopyWith<$Res>? get citizenInfo;$DataStatusCopyWith<$Res>? get dataStatus;

}
/// @nodoc
class _$CitizenDataCopyWithImpl<$Res>
    implements $CitizenDataCopyWith<$Res> {
  _$CitizenDataCopyWithImpl(this._self, this._then);

  final CitizenData _self;
  final $Res Function(CitizenData) _then;

/// Create a copy of CitizenData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gdId = freezed,Object? szCardId = null,Object? gdCitizenInfoId = freezed,Object? citizenInfo = freezed,Object? gdBillTemplateId = freezed,Object? dataStatus = freezed,Object? intIndex = freezed,Object? bUpdated = freezed,}) {
  return _then(_self.copyWith(
gdId: freezed == gdId ? _self.gdId : gdId // ignore: cast_nullable_to_non_nullable
as String?,szCardId: null == szCardId ? _self.szCardId : szCardId // ignore: cast_nullable_to_non_nullable
as String,gdCitizenInfoId: freezed == gdCitizenInfoId ? _self.gdCitizenInfoId : gdCitizenInfoId // ignore: cast_nullable_to_non_nullable
as String?,citizenInfo: freezed == citizenInfo ? _self.citizenInfo : citizenInfo // ignore: cast_nullable_to_non_nullable
as CitizenInfoData?,gdBillTemplateId: freezed == gdBillTemplateId ? _self.gdBillTemplateId : gdBillTemplateId // ignore: cast_nullable_to_non_nullable
as String?,dataStatus: freezed == dataStatus ? _self.dataStatus : dataStatus // ignore: cast_nullable_to_non_nullable
as DataStatus?,intIndex: freezed == intIndex ? _self.intIndex : intIndex // ignore: cast_nullable_to_non_nullable
as int?,bUpdated: freezed == bUpdated ? _self.bUpdated : bUpdated // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of CitizenData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CitizenInfoDataCopyWith<$Res>? get citizenInfo {
    if (_self.citizenInfo == null) {
    return null;
  }

  return $CitizenInfoDataCopyWith<$Res>(_self.citizenInfo!, (value) {
    return _then(_self.copyWith(citizenInfo: value));
  });
}/// Create a copy of CitizenData
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


/// Adds pattern-matching-related methods to [CitizenData].
extension CitizenDataPatterns on CitizenData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CitizenData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CitizenData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CitizenData value)  $default,){
final _that = this;
switch (_that) {
case _CitizenData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CitizenData value)?  $default,){
final _that = this;
switch (_that) {
case _CitizenData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? gdId,  String szCardId,  String? gdCitizenInfoId,  CitizenInfoData? citizenInfo,  String? gdBillTemplateId,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CitizenData() when $default != null:
return $default(_that.gdId,_that.szCardId,_that.gdCitizenInfoId,_that.citizenInfo,_that.gdBillTemplateId,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? gdId,  String szCardId,  String? gdCitizenInfoId,  CitizenInfoData? citizenInfo,  String? gdBillTemplateId,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)  $default,) {final _that = this;
switch (_that) {
case _CitizenData():
return $default(_that.gdId,_that.szCardId,_that.gdCitizenInfoId,_that.citizenInfo,_that.gdBillTemplateId,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? gdId,  String szCardId,  String? gdCitizenInfoId,  CitizenInfoData? citizenInfo,  String? gdBillTemplateId,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)?  $default,) {final _that = this;
switch (_that) {
case _CitizenData() when $default != null:
return $default(_that.gdId,_that.szCardId,_that.gdCitizenInfoId,_that.citizenInfo,_that.gdBillTemplateId,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CitizenData implements CitizenData {
  const _CitizenData({this.gdId, required this.szCardId, this.gdCitizenInfoId, this.citizenInfo, this.gdBillTemplateId, this.dataStatus, this.intIndex, this.bUpdated});
  factory _CitizenData.fromJson(Map<String, dynamic> json) => _$CitizenDataFromJson(json);

@override final  String? gdId;
@override final  String szCardId;
@override final  String? gdCitizenInfoId;
@override final  CitizenInfoData? citizenInfo;
@override final  String? gdBillTemplateId;
@override final  DataStatus? dataStatus;
@override final  int? intIndex;
@override final  bool? bUpdated;

/// Create a copy of CitizenData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CitizenDataCopyWith<_CitizenData> get copyWith => __$CitizenDataCopyWithImpl<_CitizenData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CitizenDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CitizenData&&(identical(other.gdId, gdId) || other.gdId == gdId)&&(identical(other.szCardId, szCardId) || other.szCardId == szCardId)&&(identical(other.gdCitizenInfoId, gdCitizenInfoId) || other.gdCitizenInfoId == gdCitizenInfoId)&&(identical(other.citizenInfo, citizenInfo) || other.citizenInfo == citizenInfo)&&(identical(other.gdBillTemplateId, gdBillTemplateId) || other.gdBillTemplateId == gdBillTemplateId)&&(identical(other.dataStatus, dataStatus) || other.dataStatus == dataStatus)&&(identical(other.intIndex, intIndex) || other.intIndex == intIndex)&&(identical(other.bUpdated, bUpdated) || other.bUpdated == bUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gdId,szCardId,gdCitizenInfoId,citizenInfo,gdBillTemplateId,dataStatus,intIndex,bUpdated);

@override
String toString() {
  return 'CitizenData(gdId: $gdId, szCardId: $szCardId, gdCitizenInfoId: $gdCitizenInfoId, citizenInfo: $citizenInfo, gdBillTemplateId: $gdBillTemplateId, dataStatus: $dataStatus, intIndex: $intIndex, bUpdated: $bUpdated)';
}


}

/// @nodoc
abstract mixin class _$CitizenDataCopyWith<$Res> implements $CitizenDataCopyWith<$Res> {
  factory _$CitizenDataCopyWith(_CitizenData value, $Res Function(_CitizenData) _then) = __$CitizenDataCopyWithImpl;
@override @useResult
$Res call({
 String? gdId, String szCardId, String? gdCitizenInfoId, CitizenInfoData? citizenInfo, String? gdBillTemplateId, DataStatus? dataStatus, int? intIndex, bool? bUpdated
});


@override $CitizenInfoDataCopyWith<$Res>? get citizenInfo;@override $DataStatusCopyWith<$Res>? get dataStatus;

}
/// @nodoc
class __$CitizenDataCopyWithImpl<$Res>
    implements _$CitizenDataCopyWith<$Res> {
  __$CitizenDataCopyWithImpl(this._self, this._then);

  final _CitizenData _self;
  final $Res Function(_CitizenData) _then;

/// Create a copy of CitizenData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gdId = freezed,Object? szCardId = null,Object? gdCitizenInfoId = freezed,Object? citizenInfo = freezed,Object? gdBillTemplateId = freezed,Object? dataStatus = freezed,Object? intIndex = freezed,Object? bUpdated = freezed,}) {
  return _then(_CitizenData(
gdId: freezed == gdId ? _self.gdId : gdId // ignore: cast_nullable_to_non_nullable
as String?,szCardId: null == szCardId ? _self.szCardId : szCardId // ignore: cast_nullable_to_non_nullable
as String,gdCitizenInfoId: freezed == gdCitizenInfoId ? _self.gdCitizenInfoId : gdCitizenInfoId // ignore: cast_nullable_to_non_nullable
as String?,citizenInfo: freezed == citizenInfo ? _self.citizenInfo : citizenInfo // ignore: cast_nullable_to_non_nullable
as CitizenInfoData?,gdBillTemplateId: freezed == gdBillTemplateId ? _self.gdBillTemplateId : gdBillTemplateId // ignore: cast_nullable_to_non_nullable
as String?,dataStatus: freezed == dataStatus ? _self.dataStatus : dataStatus // ignore: cast_nullable_to_non_nullable
as DataStatus?,intIndex: freezed == intIndex ? _self.intIndex : intIndex // ignore: cast_nullable_to_non_nullable
as int?,bUpdated: freezed == bUpdated ? _self.bUpdated : bUpdated // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of CitizenData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CitizenInfoDataCopyWith<$Res>? get citizenInfo {
    if (_self.citizenInfo == null) {
    return null;
  }

  return $CitizenInfoDataCopyWith<$Res>(_self.citizenInfo!, (value) {
    return _then(_self.copyWith(citizenInfo: value));
  });
}/// Create a copy of CitizenData
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
