// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_bill_item_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyBillItemData {

 BillingData get billing; List<BillingPaymentData> get billingPayments; String? get gdId; int? get intIndex; bool? get bUpdated;
/// Create a copy of MyBillItemData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyBillItemDataCopyWith<MyBillItemData> get copyWith => _$MyBillItemDataCopyWithImpl<MyBillItemData>(this as MyBillItemData, _$identity);

  /// Serializes this MyBillItemData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyBillItemData&&(identical(other.billing, billing) || other.billing == billing)&&const DeepCollectionEquality().equals(other.billingPayments, billingPayments)&&(identical(other.gdId, gdId) || other.gdId == gdId)&&(identical(other.intIndex, intIndex) || other.intIndex == intIndex)&&(identical(other.bUpdated, bUpdated) || other.bUpdated == bUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,billing,const DeepCollectionEquality().hash(billingPayments),gdId,intIndex,bUpdated);

@override
String toString() {
  return 'MyBillItemData(billing: $billing, billingPayments: $billingPayments, gdId: $gdId, intIndex: $intIndex, bUpdated: $bUpdated)';
}


}

/// @nodoc
abstract mixin class $MyBillItemDataCopyWith<$Res>  {
  factory $MyBillItemDataCopyWith(MyBillItemData value, $Res Function(MyBillItemData) _then) = _$MyBillItemDataCopyWithImpl;
@useResult
$Res call({
 BillingData billing, List<BillingPaymentData> billingPayments, String? gdId, int? intIndex, bool? bUpdated
});


$BillingDataCopyWith<$Res> get billing;

}
/// @nodoc
class _$MyBillItemDataCopyWithImpl<$Res>
    implements $MyBillItemDataCopyWith<$Res> {
  _$MyBillItemDataCopyWithImpl(this._self, this._then);

  final MyBillItemData _self;
  final $Res Function(MyBillItemData) _then;

/// Create a copy of MyBillItemData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? billing = null,Object? billingPayments = null,Object? gdId = freezed,Object? intIndex = freezed,Object? bUpdated = freezed,}) {
  return _then(_self.copyWith(
billing: null == billing ? _self.billing : billing // ignore: cast_nullable_to_non_nullable
as BillingData,billingPayments: null == billingPayments ? _self.billingPayments : billingPayments // ignore: cast_nullable_to_non_nullable
as List<BillingPaymentData>,gdId: freezed == gdId ? _self.gdId : gdId // ignore: cast_nullable_to_non_nullable
as String?,intIndex: freezed == intIndex ? _self.intIndex : intIndex // ignore: cast_nullable_to_non_nullable
as int?,bUpdated: freezed == bUpdated ? _self.bUpdated : bUpdated // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of MyBillItemData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BillingDataCopyWith<$Res> get billing {
  
  return $BillingDataCopyWith<$Res>(_self.billing, (value) {
    return _then(_self.copyWith(billing: value));
  });
}
}


/// Adds pattern-matching-related methods to [MyBillItemData].
extension MyBillItemDataPatterns on MyBillItemData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyBillItemData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyBillItemData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyBillItemData value)  $default,){
final _that = this;
switch (_that) {
case _MyBillItemData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyBillItemData value)?  $default,){
final _that = this;
switch (_that) {
case _MyBillItemData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BillingData billing,  List<BillingPaymentData> billingPayments,  String? gdId,  int? intIndex,  bool? bUpdated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyBillItemData() when $default != null:
return $default(_that.billing,_that.billingPayments,_that.gdId,_that.intIndex,_that.bUpdated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BillingData billing,  List<BillingPaymentData> billingPayments,  String? gdId,  int? intIndex,  bool? bUpdated)  $default,) {final _that = this;
switch (_that) {
case _MyBillItemData():
return $default(_that.billing,_that.billingPayments,_that.gdId,_that.intIndex,_that.bUpdated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BillingData billing,  List<BillingPaymentData> billingPayments,  String? gdId,  int? intIndex,  bool? bUpdated)?  $default,) {final _that = this;
switch (_that) {
case _MyBillItemData() when $default != null:
return $default(_that.billing,_that.billingPayments,_that.gdId,_that.intIndex,_that.bUpdated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyBillItemData implements MyBillItemData {
  const _MyBillItemData({required this.billing, final  List<BillingPaymentData> billingPayments = const [], this.gdId, this.intIndex, this.bUpdated}): _billingPayments = billingPayments;
  factory _MyBillItemData.fromJson(Map<String, dynamic> json) => _$MyBillItemDataFromJson(json);

@override final  BillingData billing;
 final  List<BillingPaymentData> _billingPayments;
@override@JsonKey() List<BillingPaymentData> get billingPayments {
  if (_billingPayments is EqualUnmodifiableListView) return _billingPayments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_billingPayments);
}

@override final  String? gdId;
@override final  int? intIndex;
@override final  bool? bUpdated;

/// Create a copy of MyBillItemData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyBillItemDataCopyWith<_MyBillItemData> get copyWith => __$MyBillItemDataCopyWithImpl<_MyBillItemData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyBillItemDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyBillItemData&&(identical(other.billing, billing) || other.billing == billing)&&const DeepCollectionEquality().equals(other._billingPayments, _billingPayments)&&(identical(other.gdId, gdId) || other.gdId == gdId)&&(identical(other.intIndex, intIndex) || other.intIndex == intIndex)&&(identical(other.bUpdated, bUpdated) || other.bUpdated == bUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,billing,const DeepCollectionEquality().hash(_billingPayments),gdId,intIndex,bUpdated);

@override
String toString() {
  return 'MyBillItemData(billing: $billing, billingPayments: $billingPayments, gdId: $gdId, intIndex: $intIndex, bUpdated: $bUpdated)';
}


}

/// @nodoc
abstract mixin class _$MyBillItemDataCopyWith<$Res> implements $MyBillItemDataCopyWith<$Res> {
  factory _$MyBillItemDataCopyWith(_MyBillItemData value, $Res Function(_MyBillItemData) _then) = __$MyBillItemDataCopyWithImpl;
@override @useResult
$Res call({
 BillingData billing, List<BillingPaymentData> billingPayments, String? gdId, int? intIndex, bool? bUpdated
});


@override $BillingDataCopyWith<$Res> get billing;

}
/// @nodoc
class __$MyBillItemDataCopyWithImpl<$Res>
    implements _$MyBillItemDataCopyWith<$Res> {
  __$MyBillItemDataCopyWithImpl(this._self, this._then);

  final _MyBillItemData _self;
  final $Res Function(_MyBillItemData) _then;

/// Create a copy of MyBillItemData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? billing = null,Object? billingPayments = null,Object? gdId = freezed,Object? intIndex = freezed,Object? bUpdated = freezed,}) {
  return _then(_MyBillItemData(
billing: null == billing ? _self.billing : billing // ignore: cast_nullable_to_non_nullable
as BillingData,billingPayments: null == billingPayments ? _self._billingPayments : billingPayments // ignore: cast_nullable_to_non_nullable
as List<BillingPaymentData>,gdId: freezed == gdId ? _self.gdId : gdId // ignore: cast_nullable_to_non_nullable
as String?,intIndex: freezed == intIndex ? _self.intIndex : intIndex // ignore: cast_nullable_to_non_nullable
as int?,bUpdated: freezed == bUpdated ? _self.bUpdated : bUpdated // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of MyBillItemData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BillingDataCopyWith<$Res> get billing {
  
  return $BillingDataCopyWith<$Res>(_self.billing, (value) {
    return _then(_self.copyWith(billing: value));
  });
}
}

// dart format on
