// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'billing_payment_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BillingPaymentData {

 String? get gdId; String? get gdParentId; DateTime? get dtmDoc; double get decPayment; String? get gdUserPayedById; String? get szDescription; DataStatus? get dataStatus; int? get intIndex; bool? get bUpdated;
/// Create a copy of BillingPaymentData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillingPaymentDataCopyWith<BillingPaymentData> get copyWith => _$BillingPaymentDataCopyWithImpl<BillingPaymentData>(this as BillingPaymentData, _$identity);

  /// Serializes this BillingPaymentData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BillingPaymentData&&(identical(other.gdId, gdId) || other.gdId == gdId)&&(identical(other.gdParentId, gdParentId) || other.gdParentId == gdParentId)&&(identical(other.dtmDoc, dtmDoc) || other.dtmDoc == dtmDoc)&&(identical(other.decPayment, decPayment) || other.decPayment == decPayment)&&(identical(other.gdUserPayedById, gdUserPayedById) || other.gdUserPayedById == gdUserPayedById)&&(identical(other.szDescription, szDescription) || other.szDescription == szDescription)&&(identical(other.dataStatus, dataStatus) || other.dataStatus == dataStatus)&&(identical(other.intIndex, intIndex) || other.intIndex == intIndex)&&(identical(other.bUpdated, bUpdated) || other.bUpdated == bUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gdId,gdParentId,dtmDoc,decPayment,gdUserPayedById,szDescription,dataStatus,intIndex,bUpdated);

@override
String toString() {
  return 'BillingPaymentData(gdId: $gdId, gdParentId: $gdParentId, dtmDoc: $dtmDoc, decPayment: $decPayment, gdUserPayedById: $gdUserPayedById, szDescription: $szDescription, dataStatus: $dataStatus, intIndex: $intIndex, bUpdated: $bUpdated)';
}


}

/// @nodoc
abstract mixin class $BillingPaymentDataCopyWith<$Res>  {
  factory $BillingPaymentDataCopyWith(BillingPaymentData value, $Res Function(BillingPaymentData) _then) = _$BillingPaymentDataCopyWithImpl;
@useResult
$Res call({
 String? gdId, String? gdParentId, DateTime? dtmDoc, double decPayment, String? gdUserPayedById, String? szDescription, DataStatus? dataStatus, int? intIndex, bool? bUpdated
});


$DataStatusCopyWith<$Res>? get dataStatus;

}
/// @nodoc
class _$BillingPaymentDataCopyWithImpl<$Res>
    implements $BillingPaymentDataCopyWith<$Res> {
  _$BillingPaymentDataCopyWithImpl(this._self, this._then);

  final BillingPaymentData _self;
  final $Res Function(BillingPaymentData) _then;

/// Create a copy of BillingPaymentData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gdId = freezed,Object? gdParentId = freezed,Object? dtmDoc = freezed,Object? decPayment = null,Object? gdUserPayedById = freezed,Object? szDescription = freezed,Object? dataStatus = freezed,Object? intIndex = freezed,Object? bUpdated = freezed,}) {
  return _then(_self.copyWith(
gdId: freezed == gdId ? _self.gdId : gdId // ignore: cast_nullable_to_non_nullable
as String?,gdParentId: freezed == gdParentId ? _self.gdParentId : gdParentId // ignore: cast_nullable_to_non_nullable
as String?,dtmDoc: freezed == dtmDoc ? _self.dtmDoc : dtmDoc // ignore: cast_nullable_to_non_nullable
as DateTime?,decPayment: null == decPayment ? _self.decPayment : decPayment // ignore: cast_nullable_to_non_nullable
as double,gdUserPayedById: freezed == gdUserPayedById ? _self.gdUserPayedById : gdUserPayedById // ignore: cast_nullable_to_non_nullable
as String?,szDescription: freezed == szDescription ? _self.szDescription : szDescription // ignore: cast_nullable_to_non_nullable
as String?,dataStatus: freezed == dataStatus ? _self.dataStatus : dataStatus // ignore: cast_nullable_to_non_nullable
as DataStatus?,intIndex: freezed == intIndex ? _self.intIndex : intIndex // ignore: cast_nullable_to_non_nullable
as int?,bUpdated: freezed == bUpdated ? _self.bUpdated : bUpdated // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of BillingPaymentData
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


/// Adds pattern-matching-related methods to [BillingPaymentData].
extension BillingPaymentDataPatterns on BillingPaymentData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BillingPaymentData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BillingPaymentData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BillingPaymentData value)  $default,){
final _that = this;
switch (_that) {
case _BillingPaymentData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BillingPaymentData value)?  $default,){
final _that = this;
switch (_that) {
case _BillingPaymentData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? gdId,  String? gdParentId,  DateTime? dtmDoc,  double decPayment,  String? gdUserPayedById,  String? szDescription,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BillingPaymentData() when $default != null:
return $default(_that.gdId,_that.gdParentId,_that.dtmDoc,_that.decPayment,_that.gdUserPayedById,_that.szDescription,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? gdId,  String? gdParentId,  DateTime? dtmDoc,  double decPayment,  String? gdUserPayedById,  String? szDescription,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)  $default,) {final _that = this;
switch (_that) {
case _BillingPaymentData():
return $default(_that.gdId,_that.gdParentId,_that.dtmDoc,_that.decPayment,_that.gdUserPayedById,_that.szDescription,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? gdId,  String? gdParentId,  DateTime? dtmDoc,  double decPayment,  String? gdUserPayedById,  String? szDescription,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)?  $default,) {final _that = this;
switch (_that) {
case _BillingPaymentData() when $default != null:
return $default(_that.gdId,_that.gdParentId,_that.dtmDoc,_that.decPayment,_that.gdUserPayedById,_that.szDescription,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BillingPaymentData implements BillingPaymentData {
  const _BillingPaymentData({this.gdId, this.gdParentId, this.dtmDoc, required this.decPayment, this.gdUserPayedById, this.szDescription, this.dataStatus, this.intIndex, this.bUpdated});
  factory _BillingPaymentData.fromJson(Map<String, dynamic> json) => _$BillingPaymentDataFromJson(json);

@override final  String? gdId;
@override final  String? gdParentId;
@override final  DateTime? dtmDoc;
@override final  double decPayment;
@override final  String? gdUserPayedById;
@override final  String? szDescription;
@override final  DataStatus? dataStatus;
@override final  int? intIndex;
@override final  bool? bUpdated;

/// Create a copy of BillingPaymentData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillingPaymentDataCopyWith<_BillingPaymentData> get copyWith => __$BillingPaymentDataCopyWithImpl<_BillingPaymentData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BillingPaymentDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BillingPaymentData&&(identical(other.gdId, gdId) || other.gdId == gdId)&&(identical(other.gdParentId, gdParentId) || other.gdParentId == gdParentId)&&(identical(other.dtmDoc, dtmDoc) || other.dtmDoc == dtmDoc)&&(identical(other.decPayment, decPayment) || other.decPayment == decPayment)&&(identical(other.gdUserPayedById, gdUserPayedById) || other.gdUserPayedById == gdUserPayedById)&&(identical(other.szDescription, szDescription) || other.szDescription == szDescription)&&(identical(other.dataStatus, dataStatus) || other.dataStatus == dataStatus)&&(identical(other.intIndex, intIndex) || other.intIndex == intIndex)&&(identical(other.bUpdated, bUpdated) || other.bUpdated == bUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gdId,gdParentId,dtmDoc,decPayment,gdUserPayedById,szDescription,dataStatus,intIndex,bUpdated);

@override
String toString() {
  return 'BillingPaymentData(gdId: $gdId, gdParentId: $gdParentId, dtmDoc: $dtmDoc, decPayment: $decPayment, gdUserPayedById: $gdUserPayedById, szDescription: $szDescription, dataStatus: $dataStatus, intIndex: $intIndex, bUpdated: $bUpdated)';
}


}

/// @nodoc
abstract mixin class _$BillingPaymentDataCopyWith<$Res> implements $BillingPaymentDataCopyWith<$Res> {
  factory _$BillingPaymentDataCopyWith(_BillingPaymentData value, $Res Function(_BillingPaymentData) _then) = __$BillingPaymentDataCopyWithImpl;
@override @useResult
$Res call({
 String? gdId, String? gdParentId, DateTime? dtmDoc, double decPayment, String? gdUserPayedById, String? szDescription, DataStatus? dataStatus, int? intIndex, bool? bUpdated
});


@override $DataStatusCopyWith<$Res>? get dataStatus;

}
/// @nodoc
class __$BillingPaymentDataCopyWithImpl<$Res>
    implements _$BillingPaymentDataCopyWith<$Res> {
  __$BillingPaymentDataCopyWithImpl(this._self, this._then);

  final _BillingPaymentData _self;
  final $Res Function(_BillingPaymentData) _then;

/// Create a copy of BillingPaymentData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gdId = freezed,Object? gdParentId = freezed,Object? dtmDoc = freezed,Object? decPayment = null,Object? gdUserPayedById = freezed,Object? szDescription = freezed,Object? dataStatus = freezed,Object? intIndex = freezed,Object? bUpdated = freezed,}) {
  return _then(_BillingPaymentData(
gdId: freezed == gdId ? _self.gdId : gdId // ignore: cast_nullable_to_non_nullable
as String?,gdParentId: freezed == gdParentId ? _self.gdParentId : gdParentId // ignore: cast_nullable_to_non_nullable
as String?,dtmDoc: freezed == dtmDoc ? _self.dtmDoc : dtmDoc // ignore: cast_nullable_to_non_nullable
as DateTime?,decPayment: null == decPayment ? _self.decPayment : decPayment // ignore: cast_nullable_to_non_nullable
as double,gdUserPayedById: freezed == gdUserPayedById ? _self.gdUserPayedById : gdUserPayedById // ignore: cast_nullable_to_non_nullable
as String?,szDescription: freezed == szDescription ? _self.szDescription : szDescription // ignore: cast_nullable_to_non_nullable
as String?,dataStatus: freezed == dataStatus ? _self.dataStatus : dataStatus // ignore: cast_nullable_to_non_nullable
as DataStatus?,intIndex: freezed == intIndex ? _self.intIndex : intIndex // ignore: cast_nullable_to_non_nullable
as int?,bUpdated: freezed == bUpdated ? _self.bUpdated : bUpdated // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of BillingPaymentData
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
