// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'billing_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BillingData {

 String? get gdId; DateTime? get dtmDoc; String? get gdCitizenId; String? get gdCitizenInfoId; String get szDescription; double get decAmount; double get decRemain; int? get intYear; int? get intMonth; bool get bClosed; DateTime? get dtmDue; String? get gdBillingTemplateId; BillTemplateData? get billTemplate; CitizenData? get citizen; DataStatus? get dataStatus; int? get intIndex; bool? get bUpdated;
/// Create a copy of BillingData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillingDataCopyWith<BillingData> get copyWith => _$BillingDataCopyWithImpl<BillingData>(this as BillingData, _$identity);

  /// Serializes this BillingData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BillingData&&(identical(other.gdId, gdId) || other.gdId == gdId)&&(identical(other.dtmDoc, dtmDoc) || other.dtmDoc == dtmDoc)&&(identical(other.gdCitizenId, gdCitizenId) || other.gdCitizenId == gdCitizenId)&&(identical(other.gdCitizenInfoId, gdCitizenInfoId) || other.gdCitizenInfoId == gdCitizenInfoId)&&(identical(other.szDescription, szDescription) || other.szDescription == szDescription)&&(identical(other.decAmount, decAmount) || other.decAmount == decAmount)&&(identical(other.decRemain, decRemain) || other.decRemain == decRemain)&&(identical(other.intYear, intYear) || other.intYear == intYear)&&(identical(other.intMonth, intMonth) || other.intMonth == intMonth)&&(identical(other.bClosed, bClosed) || other.bClosed == bClosed)&&(identical(other.dtmDue, dtmDue) || other.dtmDue == dtmDue)&&(identical(other.gdBillingTemplateId, gdBillingTemplateId) || other.gdBillingTemplateId == gdBillingTemplateId)&&(identical(other.billTemplate, billTemplate) || other.billTemplate == billTemplate)&&(identical(other.citizen, citizen) || other.citizen == citizen)&&(identical(other.dataStatus, dataStatus) || other.dataStatus == dataStatus)&&(identical(other.intIndex, intIndex) || other.intIndex == intIndex)&&(identical(other.bUpdated, bUpdated) || other.bUpdated == bUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gdId,dtmDoc,gdCitizenId,gdCitizenInfoId,szDescription,decAmount,decRemain,intYear,intMonth,bClosed,dtmDue,gdBillingTemplateId,billTemplate,citizen,dataStatus,intIndex,bUpdated);

@override
String toString() {
  return 'BillingData(gdId: $gdId, dtmDoc: $dtmDoc, gdCitizenId: $gdCitizenId, gdCitizenInfoId: $gdCitizenInfoId, szDescription: $szDescription, decAmount: $decAmount, decRemain: $decRemain, intYear: $intYear, intMonth: $intMonth, bClosed: $bClosed, dtmDue: $dtmDue, gdBillingTemplateId: $gdBillingTemplateId, billTemplate: $billTemplate, citizen: $citizen, dataStatus: $dataStatus, intIndex: $intIndex, bUpdated: $bUpdated)';
}


}

/// @nodoc
abstract mixin class $BillingDataCopyWith<$Res>  {
  factory $BillingDataCopyWith(BillingData value, $Res Function(BillingData) _then) = _$BillingDataCopyWithImpl;
@useResult
$Res call({
 String? gdId, DateTime? dtmDoc, String? gdCitizenId, String? gdCitizenInfoId, String szDescription, double decAmount, double decRemain, int? intYear, int? intMonth, bool bClosed, DateTime? dtmDue, String? gdBillingTemplateId, BillTemplateData? billTemplate, CitizenData? citizen, DataStatus? dataStatus, int? intIndex, bool? bUpdated
});


$BillTemplateDataCopyWith<$Res>? get billTemplate;$CitizenDataCopyWith<$Res>? get citizen;$DataStatusCopyWith<$Res>? get dataStatus;

}
/// @nodoc
class _$BillingDataCopyWithImpl<$Res>
    implements $BillingDataCopyWith<$Res> {
  _$BillingDataCopyWithImpl(this._self, this._then);

  final BillingData _self;
  final $Res Function(BillingData) _then;

/// Create a copy of BillingData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gdId = freezed,Object? dtmDoc = freezed,Object? gdCitizenId = freezed,Object? gdCitizenInfoId = freezed,Object? szDescription = null,Object? decAmount = null,Object? decRemain = null,Object? intYear = freezed,Object? intMonth = freezed,Object? bClosed = null,Object? dtmDue = freezed,Object? gdBillingTemplateId = freezed,Object? billTemplate = freezed,Object? citizen = freezed,Object? dataStatus = freezed,Object? intIndex = freezed,Object? bUpdated = freezed,}) {
  return _then(_self.copyWith(
gdId: freezed == gdId ? _self.gdId : gdId // ignore: cast_nullable_to_non_nullable
as String?,dtmDoc: freezed == dtmDoc ? _self.dtmDoc : dtmDoc // ignore: cast_nullable_to_non_nullable
as DateTime?,gdCitizenId: freezed == gdCitizenId ? _self.gdCitizenId : gdCitizenId // ignore: cast_nullable_to_non_nullable
as String?,gdCitizenInfoId: freezed == gdCitizenInfoId ? _self.gdCitizenInfoId : gdCitizenInfoId // ignore: cast_nullable_to_non_nullable
as String?,szDescription: null == szDescription ? _self.szDescription : szDescription // ignore: cast_nullable_to_non_nullable
as String,decAmount: null == decAmount ? _self.decAmount : decAmount // ignore: cast_nullable_to_non_nullable
as double,decRemain: null == decRemain ? _self.decRemain : decRemain // ignore: cast_nullable_to_non_nullable
as double,intYear: freezed == intYear ? _self.intYear : intYear // ignore: cast_nullable_to_non_nullable
as int?,intMonth: freezed == intMonth ? _self.intMonth : intMonth // ignore: cast_nullable_to_non_nullable
as int?,bClosed: null == bClosed ? _self.bClosed : bClosed // ignore: cast_nullable_to_non_nullable
as bool,dtmDue: freezed == dtmDue ? _self.dtmDue : dtmDue // ignore: cast_nullable_to_non_nullable
as DateTime?,gdBillingTemplateId: freezed == gdBillingTemplateId ? _self.gdBillingTemplateId : gdBillingTemplateId // ignore: cast_nullable_to_non_nullable
as String?,billTemplate: freezed == billTemplate ? _self.billTemplate : billTemplate // ignore: cast_nullable_to_non_nullable
as BillTemplateData?,citizen: freezed == citizen ? _self.citizen : citizen // ignore: cast_nullable_to_non_nullable
as CitizenData?,dataStatus: freezed == dataStatus ? _self.dataStatus : dataStatus // ignore: cast_nullable_to_non_nullable
as DataStatus?,intIndex: freezed == intIndex ? _self.intIndex : intIndex // ignore: cast_nullable_to_non_nullable
as int?,bUpdated: freezed == bUpdated ? _self.bUpdated : bUpdated // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of BillingData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BillTemplateDataCopyWith<$Res>? get billTemplate {
    if (_self.billTemplate == null) {
    return null;
  }

  return $BillTemplateDataCopyWith<$Res>(_self.billTemplate!, (value) {
    return _then(_self.copyWith(billTemplate: value));
  });
}/// Create a copy of BillingData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CitizenDataCopyWith<$Res>? get citizen {
    if (_self.citizen == null) {
    return null;
  }

  return $CitizenDataCopyWith<$Res>(_self.citizen!, (value) {
    return _then(_self.copyWith(citizen: value));
  });
}/// Create a copy of BillingData
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


/// Adds pattern-matching-related methods to [BillingData].
extension BillingDataPatterns on BillingData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BillingData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BillingData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BillingData value)  $default,){
final _that = this;
switch (_that) {
case _BillingData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BillingData value)?  $default,){
final _that = this;
switch (_that) {
case _BillingData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? gdId,  DateTime? dtmDoc,  String? gdCitizenId,  String? gdCitizenInfoId,  String szDescription,  double decAmount,  double decRemain,  int? intYear,  int? intMonth,  bool bClosed,  DateTime? dtmDue,  String? gdBillingTemplateId,  BillTemplateData? billTemplate,  CitizenData? citizen,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BillingData() when $default != null:
return $default(_that.gdId,_that.dtmDoc,_that.gdCitizenId,_that.gdCitizenInfoId,_that.szDescription,_that.decAmount,_that.decRemain,_that.intYear,_that.intMonth,_that.bClosed,_that.dtmDue,_that.gdBillingTemplateId,_that.billTemplate,_that.citizen,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? gdId,  DateTime? dtmDoc,  String? gdCitizenId,  String? gdCitizenInfoId,  String szDescription,  double decAmount,  double decRemain,  int? intYear,  int? intMonth,  bool bClosed,  DateTime? dtmDue,  String? gdBillingTemplateId,  BillTemplateData? billTemplate,  CitizenData? citizen,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)  $default,) {final _that = this;
switch (_that) {
case _BillingData():
return $default(_that.gdId,_that.dtmDoc,_that.gdCitizenId,_that.gdCitizenInfoId,_that.szDescription,_that.decAmount,_that.decRemain,_that.intYear,_that.intMonth,_that.bClosed,_that.dtmDue,_that.gdBillingTemplateId,_that.billTemplate,_that.citizen,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? gdId,  DateTime? dtmDoc,  String? gdCitizenId,  String? gdCitizenInfoId,  String szDescription,  double decAmount,  double decRemain,  int? intYear,  int? intMonth,  bool bClosed,  DateTime? dtmDue,  String? gdBillingTemplateId,  BillTemplateData? billTemplate,  CitizenData? citizen,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)?  $default,) {final _that = this;
switch (_that) {
case _BillingData() when $default != null:
return $default(_that.gdId,_that.dtmDoc,_that.gdCitizenId,_that.gdCitizenInfoId,_that.szDescription,_that.decAmount,_that.decRemain,_that.intYear,_that.intMonth,_that.bClosed,_that.dtmDue,_that.gdBillingTemplateId,_that.billTemplate,_that.citizen,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BillingData implements BillingData {
  const _BillingData({this.gdId, this.dtmDoc, this.gdCitizenId, this.gdCitizenInfoId, required this.szDescription, required this.decAmount, this.decRemain = 0, this.intYear, this.intMonth, this.bClosed = false, this.dtmDue, this.gdBillingTemplateId, this.billTemplate, this.citizen, this.dataStatus, this.intIndex, this.bUpdated});
  factory _BillingData.fromJson(Map<String, dynamic> json) => _$BillingDataFromJson(json);

@override final  String? gdId;
@override final  DateTime? dtmDoc;
@override final  String? gdCitizenId;
@override final  String? gdCitizenInfoId;
@override final  String szDescription;
@override final  double decAmount;
@override@JsonKey() final  double decRemain;
@override final  int? intYear;
@override final  int? intMonth;
@override@JsonKey() final  bool bClosed;
@override final  DateTime? dtmDue;
@override final  String? gdBillingTemplateId;
@override final  BillTemplateData? billTemplate;
@override final  CitizenData? citizen;
@override final  DataStatus? dataStatus;
@override final  int? intIndex;
@override final  bool? bUpdated;

/// Create a copy of BillingData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillingDataCopyWith<_BillingData> get copyWith => __$BillingDataCopyWithImpl<_BillingData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BillingDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BillingData&&(identical(other.gdId, gdId) || other.gdId == gdId)&&(identical(other.dtmDoc, dtmDoc) || other.dtmDoc == dtmDoc)&&(identical(other.gdCitizenId, gdCitizenId) || other.gdCitizenId == gdCitizenId)&&(identical(other.gdCitizenInfoId, gdCitizenInfoId) || other.gdCitizenInfoId == gdCitizenInfoId)&&(identical(other.szDescription, szDescription) || other.szDescription == szDescription)&&(identical(other.decAmount, decAmount) || other.decAmount == decAmount)&&(identical(other.decRemain, decRemain) || other.decRemain == decRemain)&&(identical(other.intYear, intYear) || other.intYear == intYear)&&(identical(other.intMonth, intMonth) || other.intMonth == intMonth)&&(identical(other.bClosed, bClosed) || other.bClosed == bClosed)&&(identical(other.dtmDue, dtmDue) || other.dtmDue == dtmDue)&&(identical(other.gdBillingTemplateId, gdBillingTemplateId) || other.gdBillingTemplateId == gdBillingTemplateId)&&(identical(other.billTemplate, billTemplate) || other.billTemplate == billTemplate)&&(identical(other.citizen, citizen) || other.citizen == citizen)&&(identical(other.dataStatus, dataStatus) || other.dataStatus == dataStatus)&&(identical(other.intIndex, intIndex) || other.intIndex == intIndex)&&(identical(other.bUpdated, bUpdated) || other.bUpdated == bUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gdId,dtmDoc,gdCitizenId,gdCitizenInfoId,szDescription,decAmount,decRemain,intYear,intMonth,bClosed,dtmDue,gdBillingTemplateId,billTemplate,citizen,dataStatus,intIndex,bUpdated);

@override
String toString() {
  return 'BillingData(gdId: $gdId, dtmDoc: $dtmDoc, gdCitizenId: $gdCitizenId, gdCitizenInfoId: $gdCitizenInfoId, szDescription: $szDescription, decAmount: $decAmount, decRemain: $decRemain, intYear: $intYear, intMonth: $intMonth, bClosed: $bClosed, dtmDue: $dtmDue, gdBillingTemplateId: $gdBillingTemplateId, billTemplate: $billTemplate, citizen: $citizen, dataStatus: $dataStatus, intIndex: $intIndex, bUpdated: $bUpdated)';
}


}

/// @nodoc
abstract mixin class _$BillingDataCopyWith<$Res> implements $BillingDataCopyWith<$Res> {
  factory _$BillingDataCopyWith(_BillingData value, $Res Function(_BillingData) _then) = __$BillingDataCopyWithImpl;
@override @useResult
$Res call({
 String? gdId, DateTime? dtmDoc, String? gdCitizenId, String? gdCitizenInfoId, String szDescription, double decAmount, double decRemain, int? intYear, int? intMonth, bool bClosed, DateTime? dtmDue, String? gdBillingTemplateId, BillTemplateData? billTemplate, CitizenData? citizen, DataStatus? dataStatus, int? intIndex, bool? bUpdated
});


@override $BillTemplateDataCopyWith<$Res>? get billTemplate;@override $CitizenDataCopyWith<$Res>? get citizen;@override $DataStatusCopyWith<$Res>? get dataStatus;

}
/// @nodoc
class __$BillingDataCopyWithImpl<$Res>
    implements _$BillingDataCopyWith<$Res> {
  __$BillingDataCopyWithImpl(this._self, this._then);

  final _BillingData _self;
  final $Res Function(_BillingData) _then;

/// Create a copy of BillingData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gdId = freezed,Object? dtmDoc = freezed,Object? gdCitizenId = freezed,Object? gdCitizenInfoId = freezed,Object? szDescription = null,Object? decAmount = null,Object? decRemain = null,Object? intYear = freezed,Object? intMonth = freezed,Object? bClosed = null,Object? dtmDue = freezed,Object? gdBillingTemplateId = freezed,Object? billTemplate = freezed,Object? citizen = freezed,Object? dataStatus = freezed,Object? intIndex = freezed,Object? bUpdated = freezed,}) {
  return _then(_BillingData(
gdId: freezed == gdId ? _self.gdId : gdId // ignore: cast_nullable_to_non_nullable
as String?,dtmDoc: freezed == dtmDoc ? _self.dtmDoc : dtmDoc // ignore: cast_nullable_to_non_nullable
as DateTime?,gdCitizenId: freezed == gdCitizenId ? _self.gdCitizenId : gdCitizenId // ignore: cast_nullable_to_non_nullable
as String?,gdCitizenInfoId: freezed == gdCitizenInfoId ? _self.gdCitizenInfoId : gdCitizenInfoId // ignore: cast_nullable_to_non_nullable
as String?,szDescription: null == szDescription ? _self.szDescription : szDescription // ignore: cast_nullable_to_non_nullable
as String,decAmount: null == decAmount ? _self.decAmount : decAmount // ignore: cast_nullable_to_non_nullable
as double,decRemain: null == decRemain ? _self.decRemain : decRemain // ignore: cast_nullable_to_non_nullable
as double,intYear: freezed == intYear ? _self.intYear : intYear // ignore: cast_nullable_to_non_nullable
as int?,intMonth: freezed == intMonth ? _self.intMonth : intMonth // ignore: cast_nullable_to_non_nullable
as int?,bClosed: null == bClosed ? _self.bClosed : bClosed // ignore: cast_nullable_to_non_nullable
as bool,dtmDue: freezed == dtmDue ? _self.dtmDue : dtmDue // ignore: cast_nullable_to_non_nullable
as DateTime?,gdBillingTemplateId: freezed == gdBillingTemplateId ? _self.gdBillingTemplateId : gdBillingTemplateId // ignore: cast_nullable_to_non_nullable
as String?,billTemplate: freezed == billTemplate ? _self.billTemplate : billTemplate // ignore: cast_nullable_to_non_nullable
as BillTemplateData?,citizen: freezed == citizen ? _self.citizen : citizen // ignore: cast_nullable_to_non_nullable
as CitizenData?,dataStatus: freezed == dataStatus ? _self.dataStatus : dataStatus // ignore: cast_nullable_to_non_nullable
as DataStatus?,intIndex: freezed == intIndex ? _self.intIndex : intIndex // ignore: cast_nullable_to_non_nullable
as int?,bUpdated: freezed == bUpdated ? _self.bUpdated : bUpdated // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of BillingData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BillTemplateDataCopyWith<$Res>? get billTemplate {
    if (_self.billTemplate == null) {
    return null;
  }

  return $BillTemplateDataCopyWith<$Res>(_self.billTemplate!, (value) {
    return _then(_self.copyWith(billTemplate: value));
  });
}/// Create a copy of BillingData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CitizenDataCopyWith<$Res>? get citizen {
    if (_self.citizen == null) {
    return null;
  }

  return $CitizenDataCopyWith<$Res>(_self.citizen!, (value) {
    return _then(_self.copyWith(citizen: value));
  });
}/// Create a copy of BillingData
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
