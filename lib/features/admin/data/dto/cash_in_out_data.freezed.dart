// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cash_in_out_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CashInOutData {

 String? get gdId; double get decAmount; String get szType;// "IN" atau "OUT"
 String get szDescription; DateTime? get dtmTransactionDate; DataStatus? get dataStatus; int? get intIndex; bool? get bUpdated;
/// Create a copy of CashInOutData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CashInOutDataCopyWith<CashInOutData> get copyWith => _$CashInOutDataCopyWithImpl<CashInOutData>(this as CashInOutData, _$identity);

  /// Serializes this CashInOutData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CashInOutData&&(identical(other.gdId, gdId) || other.gdId == gdId)&&(identical(other.decAmount, decAmount) || other.decAmount == decAmount)&&(identical(other.szType, szType) || other.szType == szType)&&(identical(other.szDescription, szDescription) || other.szDescription == szDescription)&&(identical(other.dtmTransactionDate, dtmTransactionDate) || other.dtmTransactionDate == dtmTransactionDate)&&(identical(other.dataStatus, dataStatus) || other.dataStatus == dataStatus)&&(identical(other.intIndex, intIndex) || other.intIndex == intIndex)&&(identical(other.bUpdated, bUpdated) || other.bUpdated == bUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gdId,decAmount,szType,szDescription,dtmTransactionDate,dataStatus,intIndex,bUpdated);

@override
String toString() {
  return 'CashInOutData(gdId: $gdId, decAmount: $decAmount, szType: $szType, szDescription: $szDescription, dtmTransactionDate: $dtmTransactionDate, dataStatus: $dataStatus, intIndex: $intIndex, bUpdated: $bUpdated)';
}


}

/// @nodoc
abstract mixin class $CashInOutDataCopyWith<$Res>  {
  factory $CashInOutDataCopyWith(CashInOutData value, $Res Function(CashInOutData) _then) = _$CashInOutDataCopyWithImpl;
@useResult
$Res call({
 String? gdId, double decAmount, String szType, String szDescription, DateTime? dtmTransactionDate, DataStatus? dataStatus, int? intIndex, bool? bUpdated
});


$DataStatusCopyWith<$Res>? get dataStatus;

}
/// @nodoc
class _$CashInOutDataCopyWithImpl<$Res>
    implements $CashInOutDataCopyWith<$Res> {
  _$CashInOutDataCopyWithImpl(this._self, this._then);

  final CashInOutData _self;
  final $Res Function(CashInOutData) _then;

/// Create a copy of CashInOutData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gdId = freezed,Object? decAmount = null,Object? szType = null,Object? szDescription = null,Object? dtmTransactionDate = freezed,Object? dataStatus = freezed,Object? intIndex = freezed,Object? bUpdated = freezed,}) {
  return _then(_self.copyWith(
gdId: freezed == gdId ? _self.gdId : gdId // ignore: cast_nullable_to_non_nullable
as String?,decAmount: null == decAmount ? _self.decAmount : decAmount // ignore: cast_nullable_to_non_nullable
as double,szType: null == szType ? _self.szType : szType // ignore: cast_nullable_to_non_nullable
as String,szDescription: null == szDescription ? _self.szDescription : szDescription // ignore: cast_nullable_to_non_nullable
as String,dtmTransactionDate: freezed == dtmTransactionDate ? _self.dtmTransactionDate : dtmTransactionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,dataStatus: freezed == dataStatus ? _self.dataStatus : dataStatus // ignore: cast_nullable_to_non_nullable
as DataStatus?,intIndex: freezed == intIndex ? _self.intIndex : intIndex // ignore: cast_nullable_to_non_nullable
as int?,bUpdated: freezed == bUpdated ? _self.bUpdated : bUpdated // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of CashInOutData
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


/// Adds pattern-matching-related methods to [CashInOutData].
extension CashInOutDataPatterns on CashInOutData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CashInOutData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CashInOutData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CashInOutData value)  $default,){
final _that = this;
switch (_that) {
case _CashInOutData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CashInOutData value)?  $default,){
final _that = this;
switch (_that) {
case _CashInOutData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? gdId,  double decAmount,  String szType,  String szDescription,  DateTime? dtmTransactionDate,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CashInOutData() when $default != null:
return $default(_that.gdId,_that.decAmount,_that.szType,_that.szDescription,_that.dtmTransactionDate,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? gdId,  double decAmount,  String szType,  String szDescription,  DateTime? dtmTransactionDate,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)  $default,) {final _that = this;
switch (_that) {
case _CashInOutData():
return $default(_that.gdId,_that.decAmount,_that.szType,_that.szDescription,_that.dtmTransactionDate,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? gdId,  double decAmount,  String szType,  String szDescription,  DateTime? dtmTransactionDate,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)?  $default,) {final _that = this;
switch (_that) {
case _CashInOutData() when $default != null:
return $default(_that.gdId,_that.decAmount,_that.szType,_that.szDescription,_that.dtmTransactionDate,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CashInOutData implements CashInOutData {
  const _CashInOutData({this.gdId, required this.decAmount, required this.szType, required this.szDescription, this.dtmTransactionDate, this.dataStatus, this.intIndex, this.bUpdated});
  factory _CashInOutData.fromJson(Map<String, dynamic> json) => _$CashInOutDataFromJson(json);

@override final  String? gdId;
@override final  double decAmount;
@override final  String szType;
// "IN" atau "OUT"
@override final  String szDescription;
@override final  DateTime? dtmTransactionDate;
@override final  DataStatus? dataStatus;
@override final  int? intIndex;
@override final  bool? bUpdated;

/// Create a copy of CashInOutData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CashInOutDataCopyWith<_CashInOutData> get copyWith => __$CashInOutDataCopyWithImpl<_CashInOutData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CashInOutDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CashInOutData&&(identical(other.gdId, gdId) || other.gdId == gdId)&&(identical(other.decAmount, decAmount) || other.decAmount == decAmount)&&(identical(other.szType, szType) || other.szType == szType)&&(identical(other.szDescription, szDescription) || other.szDescription == szDescription)&&(identical(other.dtmTransactionDate, dtmTransactionDate) || other.dtmTransactionDate == dtmTransactionDate)&&(identical(other.dataStatus, dataStatus) || other.dataStatus == dataStatus)&&(identical(other.intIndex, intIndex) || other.intIndex == intIndex)&&(identical(other.bUpdated, bUpdated) || other.bUpdated == bUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gdId,decAmount,szType,szDescription,dtmTransactionDate,dataStatus,intIndex,bUpdated);

@override
String toString() {
  return 'CashInOutData(gdId: $gdId, decAmount: $decAmount, szType: $szType, szDescription: $szDescription, dtmTransactionDate: $dtmTransactionDate, dataStatus: $dataStatus, intIndex: $intIndex, bUpdated: $bUpdated)';
}


}

/// @nodoc
abstract mixin class _$CashInOutDataCopyWith<$Res> implements $CashInOutDataCopyWith<$Res> {
  factory _$CashInOutDataCopyWith(_CashInOutData value, $Res Function(_CashInOutData) _then) = __$CashInOutDataCopyWithImpl;
@override @useResult
$Res call({
 String? gdId, double decAmount, String szType, String szDescription, DateTime? dtmTransactionDate, DataStatus? dataStatus, int? intIndex, bool? bUpdated
});


@override $DataStatusCopyWith<$Res>? get dataStatus;

}
/// @nodoc
class __$CashInOutDataCopyWithImpl<$Res>
    implements _$CashInOutDataCopyWith<$Res> {
  __$CashInOutDataCopyWithImpl(this._self, this._then);

  final _CashInOutData _self;
  final $Res Function(_CashInOutData) _then;

/// Create a copy of CashInOutData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gdId = freezed,Object? decAmount = null,Object? szType = null,Object? szDescription = null,Object? dtmTransactionDate = freezed,Object? dataStatus = freezed,Object? intIndex = freezed,Object? bUpdated = freezed,}) {
  return _then(_CashInOutData(
gdId: freezed == gdId ? _self.gdId : gdId // ignore: cast_nullable_to_non_nullable
as String?,decAmount: null == decAmount ? _self.decAmount : decAmount // ignore: cast_nullable_to_non_nullable
as double,szType: null == szType ? _self.szType : szType // ignore: cast_nullable_to_non_nullable
as String,szDescription: null == szDescription ? _self.szDescription : szDescription // ignore: cast_nullable_to_non_nullable
as String,dtmTransactionDate: freezed == dtmTransactionDate ? _self.dtmTransactionDate : dtmTransactionDate // ignore: cast_nullable_to_non_nullable
as DateTime?,dataStatus: freezed == dataStatus ? _self.dataStatus : dataStatus // ignore: cast_nullable_to_non_nullable
as DataStatus?,intIndex: freezed == intIndex ? _self.intIndex : intIndex // ignore: cast_nullable_to_non_nullable
as int?,bUpdated: freezed == bUpdated ? _self.bUpdated : bUpdated // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of CashInOutData
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
