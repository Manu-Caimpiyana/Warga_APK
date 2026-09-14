// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'citizen_info_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CitizenInfoData {

 String? get gdId; String? get gdParentId; String get szCardId; String get szName; String? get szDescription; String? get gdTittleId; DateTime? get dtmBirth; String? get gdReligionId; String? get szNickName; String? get szPhoneNo; String? get szEmail; DataStatus? get dataStatus; int? get intIndex; bool? get bUpdated;
/// Create a copy of CitizenInfoData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CitizenInfoDataCopyWith<CitizenInfoData> get copyWith => _$CitizenInfoDataCopyWithImpl<CitizenInfoData>(this as CitizenInfoData, _$identity);

  /// Serializes this CitizenInfoData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CitizenInfoData&&(identical(other.gdId, gdId) || other.gdId == gdId)&&(identical(other.gdParentId, gdParentId) || other.gdParentId == gdParentId)&&(identical(other.szCardId, szCardId) || other.szCardId == szCardId)&&(identical(other.szName, szName) || other.szName == szName)&&(identical(other.szDescription, szDescription) || other.szDescription == szDescription)&&(identical(other.gdTittleId, gdTittleId) || other.gdTittleId == gdTittleId)&&(identical(other.dtmBirth, dtmBirth) || other.dtmBirth == dtmBirth)&&(identical(other.gdReligionId, gdReligionId) || other.gdReligionId == gdReligionId)&&(identical(other.szNickName, szNickName) || other.szNickName == szNickName)&&(identical(other.szPhoneNo, szPhoneNo) || other.szPhoneNo == szPhoneNo)&&(identical(other.szEmail, szEmail) || other.szEmail == szEmail)&&(identical(other.dataStatus, dataStatus) || other.dataStatus == dataStatus)&&(identical(other.intIndex, intIndex) || other.intIndex == intIndex)&&(identical(other.bUpdated, bUpdated) || other.bUpdated == bUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gdId,gdParentId,szCardId,szName,szDescription,gdTittleId,dtmBirth,gdReligionId,szNickName,szPhoneNo,szEmail,dataStatus,intIndex,bUpdated);

@override
String toString() {
  return 'CitizenInfoData(gdId: $gdId, gdParentId: $gdParentId, szCardId: $szCardId, szName: $szName, szDescription: $szDescription, gdTittleId: $gdTittleId, dtmBirth: $dtmBirth, gdReligionId: $gdReligionId, szNickName: $szNickName, szPhoneNo: $szPhoneNo, szEmail: $szEmail, dataStatus: $dataStatus, intIndex: $intIndex, bUpdated: $bUpdated)';
}


}

/// @nodoc
abstract mixin class $CitizenInfoDataCopyWith<$Res>  {
  factory $CitizenInfoDataCopyWith(CitizenInfoData value, $Res Function(CitizenInfoData) _then) = _$CitizenInfoDataCopyWithImpl;
@useResult
$Res call({
 String? gdId, String? gdParentId, String szCardId, String szName, String? szDescription, String? gdTittleId, DateTime? dtmBirth, String? gdReligionId, String? szNickName, String? szPhoneNo, String? szEmail, DataStatus? dataStatus, int? intIndex, bool? bUpdated
});


$DataStatusCopyWith<$Res>? get dataStatus;

}
/// @nodoc
class _$CitizenInfoDataCopyWithImpl<$Res>
    implements $CitizenInfoDataCopyWith<$Res> {
  _$CitizenInfoDataCopyWithImpl(this._self, this._then);

  final CitizenInfoData _self;
  final $Res Function(CitizenInfoData) _then;

/// Create a copy of CitizenInfoData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gdId = freezed,Object? gdParentId = freezed,Object? szCardId = null,Object? szName = null,Object? szDescription = freezed,Object? gdTittleId = freezed,Object? dtmBirth = freezed,Object? gdReligionId = freezed,Object? szNickName = freezed,Object? szPhoneNo = freezed,Object? szEmail = freezed,Object? dataStatus = freezed,Object? intIndex = freezed,Object? bUpdated = freezed,}) {
  return _then(_self.copyWith(
gdId: freezed == gdId ? _self.gdId : gdId // ignore: cast_nullable_to_non_nullable
as String?,gdParentId: freezed == gdParentId ? _self.gdParentId : gdParentId // ignore: cast_nullable_to_non_nullable
as String?,szCardId: null == szCardId ? _self.szCardId : szCardId // ignore: cast_nullable_to_non_nullable
as String,szName: null == szName ? _self.szName : szName // ignore: cast_nullable_to_non_nullable
as String,szDescription: freezed == szDescription ? _self.szDescription : szDescription // ignore: cast_nullable_to_non_nullable
as String?,gdTittleId: freezed == gdTittleId ? _self.gdTittleId : gdTittleId // ignore: cast_nullable_to_non_nullable
as String?,dtmBirth: freezed == dtmBirth ? _self.dtmBirth : dtmBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,gdReligionId: freezed == gdReligionId ? _self.gdReligionId : gdReligionId // ignore: cast_nullable_to_non_nullable
as String?,szNickName: freezed == szNickName ? _self.szNickName : szNickName // ignore: cast_nullable_to_non_nullable
as String?,szPhoneNo: freezed == szPhoneNo ? _self.szPhoneNo : szPhoneNo // ignore: cast_nullable_to_non_nullable
as String?,szEmail: freezed == szEmail ? _self.szEmail : szEmail // ignore: cast_nullable_to_non_nullable
as String?,dataStatus: freezed == dataStatus ? _self.dataStatus : dataStatus // ignore: cast_nullable_to_non_nullable
as DataStatus?,intIndex: freezed == intIndex ? _self.intIndex : intIndex // ignore: cast_nullable_to_non_nullable
as int?,bUpdated: freezed == bUpdated ? _self.bUpdated : bUpdated // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of CitizenInfoData
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


/// Adds pattern-matching-related methods to [CitizenInfoData].
extension CitizenInfoDataPatterns on CitizenInfoData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CitizenInfoData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CitizenInfoData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CitizenInfoData value)  $default,){
final _that = this;
switch (_that) {
case _CitizenInfoData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CitizenInfoData value)?  $default,){
final _that = this;
switch (_that) {
case _CitizenInfoData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? gdId,  String? gdParentId,  String szCardId,  String szName,  String? szDescription,  String? gdTittleId,  DateTime? dtmBirth,  String? gdReligionId,  String? szNickName,  String? szPhoneNo,  String? szEmail,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CitizenInfoData() when $default != null:
return $default(_that.gdId,_that.gdParentId,_that.szCardId,_that.szName,_that.szDescription,_that.gdTittleId,_that.dtmBirth,_that.gdReligionId,_that.szNickName,_that.szPhoneNo,_that.szEmail,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? gdId,  String? gdParentId,  String szCardId,  String szName,  String? szDescription,  String? gdTittleId,  DateTime? dtmBirth,  String? gdReligionId,  String? szNickName,  String? szPhoneNo,  String? szEmail,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)  $default,) {final _that = this;
switch (_that) {
case _CitizenInfoData():
return $default(_that.gdId,_that.gdParentId,_that.szCardId,_that.szName,_that.szDescription,_that.gdTittleId,_that.dtmBirth,_that.gdReligionId,_that.szNickName,_that.szPhoneNo,_that.szEmail,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? gdId,  String? gdParentId,  String szCardId,  String szName,  String? szDescription,  String? gdTittleId,  DateTime? dtmBirth,  String? gdReligionId,  String? szNickName,  String? szPhoneNo,  String? szEmail,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)?  $default,) {final _that = this;
switch (_that) {
case _CitizenInfoData() when $default != null:
return $default(_that.gdId,_that.gdParentId,_that.szCardId,_that.szName,_that.szDescription,_that.gdTittleId,_that.dtmBirth,_that.gdReligionId,_that.szNickName,_that.szPhoneNo,_that.szEmail,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CitizenInfoData implements CitizenInfoData {
  const _CitizenInfoData({this.gdId, this.gdParentId, required this.szCardId, required this.szName, this.szDescription, this.gdTittleId, this.dtmBirth, this.gdReligionId, this.szNickName, this.szPhoneNo, this.szEmail, this.dataStatus, this.intIndex, this.bUpdated});
  factory _CitizenInfoData.fromJson(Map<String, dynamic> json) => _$CitizenInfoDataFromJson(json);

@override final  String? gdId;
@override final  String? gdParentId;
@override final  String szCardId;
@override final  String szName;
@override final  String? szDescription;
@override final  String? gdTittleId;
@override final  DateTime? dtmBirth;
@override final  String? gdReligionId;
@override final  String? szNickName;
@override final  String? szPhoneNo;
@override final  String? szEmail;
@override final  DataStatus? dataStatus;
@override final  int? intIndex;
@override final  bool? bUpdated;

/// Create a copy of CitizenInfoData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CitizenInfoDataCopyWith<_CitizenInfoData> get copyWith => __$CitizenInfoDataCopyWithImpl<_CitizenInfoData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CitizenInfoDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CitizenInfoData&&(identical(other.gdId, gdId) || other.gdId == gdId)&&(identical(other.gdParentId, gdParentId) || other.gdParentId == gdParentId)&&(identical(other.szCardId, szCardId) || other.szCardId == szCardId)&&(identical(other.szName, szName) || other.szName == szName)&&(identical(other.szDescription, szDescription) || other.szDescription == szDescription)&&(identical(other.gdTittleId, gdTittleId) || other.gdTittleId == gdTittleId)&&(identical(other.dtmBirth, dtmBirth) || other.dtmBirth == dtmBirth)&&(identical(other.gdReligionId, gdReligionId) || other.gdReligionId == gdReligionId)&&(identical(other.szNickName, szNickName) || other.szNickName == szNickName)&&(identical(other.szPhoneNo, szPhoneNo) || other.szPhoneNo == szPhoneNo)&&(identical(other.szEmail, szEmail) || other.szEmail == szEmail)&&(identical(other.dataStatus, dataStatus) || other.dataStatus == dataStatus)&&(identical(other.intIndex, intIndex) || other.intIndex == intIndex)&&(identical(other.bUpdated, bUpdated) || other.bUpdated == bUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gdId,gdParentId,szCardId,szName,szDescription,gdTittleId,dtmBirth,gdReligionId,szNickName,szPhoneNo,szEmail,dataStatus,intIndex,bUpdated);

@override
String toString() {
  return 'CitizenInfoData(gdId: $gdId, gdParentId: $gdParentId, szCardId: $szCardId, szName: $szName, szDescription: $szDescription, gdTittleId: $gdTittleId, dtmBirth: $dtmBirth, gdReligionId: $gdReligionId, szNickName: $szNickName, szPhoneNo: $szPhoneNo, szEmail: $szEmail, dataStatus: $dataStatus, intIndex: $intIndex, bUpdated: $bUpdated)';
}


}

/// @nodoc
abstract mixin class _$CitizenInfoDataCopyWith<$Res> implements $CitizenInfoDataCopyWith<$Res> {
  factory _$CitizenInfoDataCopyWith(_CitizenInfoData value, $Res Function(_CitizenInfoData) _then) = __$CitizenInfoDataCopyWithImpl;
@override @useResult
$Res call({
 String? gdId, String? gdParentId, String szCardId, String szName, String? szDescription, String? gdTittleId, DateTime? dtmBirth, String? gdReligionId, String? szNickName, String? szPhoneNo, String? szEmail, DataStatus? dataStatus, int? intIndex, bool? bUpdated
});


@override $DataStatusCopyWith<$Res>? get dataStatus;

}
/// @nodoc
class __$CitizenInfoDataCopyWithImpl<$Res>
    implements _$CitizenInfoDataCopyWith<$Res> {
  __$CitizenInfoDataCopyWithImpl(this._self, this._then);

  final _CitizenInfoData _self;
  final $Res Function(_CitizenInfoData) _then;

/// Create a copy of CitizenInfoData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gdId = freezed,Object? gdParentId = freezed,Object? szCardId = null,Object? szName = null,Object? szDescription = freezed,Object? gdTittleId = freezed,Object? dtmBirth = freezed,Object? gdReligionId = freezed,Object? szNickName = freezed,Object? szPhoneNo = freezed,Object? szEmail = freezed,Object? dataStatus = freezed,Object? intIndex = freezed,Object? bUpdated = freezed,}) {
  return _then(_CitizenInfoData(
gdId: freezed == gdId ? _self.gdId : gdId // ignore: cast_nullable_to_non_nullable
as String?,gdParentId: freezed == gdParentId ? _self.gdParentId : gdParentId // ignore: cast_nullable_to_non_nullable
as String?,szCardId: null == szCardId ? _self.szCardId : szCardId // ignore: cast_nullable_to_non_nullable
as String,szName: null == szName ? _self.szName : szName // ignore: cast_nullable_to_non_nullable
as String,szDescription: freezed == szDescription ? _self.szDescription : szDescription // ignore: cast_nullable_to_non_nullable
as String?,gdTittleId: freezed == gdTittleId ? _self.gdTittleId : gdTittleId // ignore: cast_nullable_to_non_nullable
as String?,dtmBirth: freezed == dtmBirth ? _self.dtmBirth : dtmBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,gdReligionId: freezed == gdReligionId ? _self.gdReligionId : gdReligionId // ignore: cast_nullable_to_non_nullable
as String?,szNickName: freezed == szNickName ? _self.szNickName : szNickName // ignore: cast_nullable_to_non_nullable
as String?,szPhoneNo: freezed == szPhoneNo ? _self.szPhoneNo : szPhoneNo // ignore: cast_nullable_to_non_nullable
as String?,szEmail: freezed == szEmail ? _self.szEmail : szEmail // ignore: cast_nullable_to_non_nullable
as String?,dataStatus: freezed == dataStatus ? _self.dataStatus : dataStatus // ignore: cast_nullable_to_non_nullable
as DataStatus?,intIndex: freezed == intIndex ? _self.intIndex : intIndex // ignore: cast_nullable_to_non_nullable
as int?,bUpdated: freezed == bUpdated ? _self.bUpdated : bUpdated // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of CitizenInfoData
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
