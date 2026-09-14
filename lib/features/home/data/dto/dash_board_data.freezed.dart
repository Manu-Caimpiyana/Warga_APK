// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dash_board_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashBoardData {

 String get szGreeting; double get decCashSaldo; bool get bHasOpenBilled; int get intOpenBill; String? get gdId; int? get intIndex; bool? get bUpdated;
/// Create a copy of DashBoardData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashBoardDataCopyWith<DashBoardData> get copyWith => _$DashBoardDataCopyWithImpl<DashBoardData>(this as DashBoardData, _$identity);

  /// Serializes this DashBoardData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashBoardData&&(identical(other.szGreeting, szGreeting) || other.szGreeting == szGreeting)&&(identical(other.decCashSaldo, decCashSaldo) || other.decCashSaldo == decCashSaldo)&&(identical(other.bHasOpenBilled, bHasOpenBilled) || other.bHasOpenBilled == bHasOpenBilled)&&(identical(other.intOpenBill, intOpenBill) || other.intOpenBill == intOpenBill)&&(identical(other.gdId, gdId) || other.gdId == gdId)&&(identical(other.intIndex, intIndex) || other.intIndex == intIndex)&&(identical(other.bUpdated, bUpdated) || other.bUpdated == bUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,szGreeting,decCashSaldo,bHasOpenBilled,intOpenBill,gdId,intIndex,bUpdated);

@override
String toString() {
  return 'DashBoardData(szGreeting: $szGreeting, decCashSaldo: $decCashSaldo, bHasOpenBilled: $bHasOpenBilled, intOpenBill: $intOpenBill, gdId: $gdId, intIndex: $intIndex, bUpdated: $bUpdated)';
}


}

/// @nodoc
abstract mixin class $DashBoardDataCopyWith<$Res>  {
  factory $DashBoardDataCopyWith(DashBoardData value, $Res Function(DashBoardData) _then) = _$DashBoardDataCopyWithImpl;
@useResult
$Res call({
 String szGreeting, double decCashSaldo, bool bHasOpenBilled, int intOpenBill, String? gdId, int? intIndex, bool? bUpdated
});




}
/// @nodoc
class _$DashBoardDataCopyWithImpl<$Res>
    implements $DashBoardDataCopyWith<$Res> {
  _$DashBoardDataCopyWithImpl(this._self, this._then);

  final DashBoardData _self;
  final $Res Function(DashBoardData) _then;

/// Create a copy of DashBoardData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? szGreeting = null,Object? decCashSaldo = null,Object? bHasOpenBilled = null,Object? intOpenBill = null,Object? gdId = freezed,Object? intIndex = freezed,Object? bUpdated = freezed,}) {
  return _then(_self.copyWith(
szGreeting: null == szGreeting ? _self.szGreeting : szGreeting // ignore: cast_nullable_to_non_nullable
as String,decCashSaldo: null == decCashSaldo ? _self.decCashSaldo : decCashSaldo // ignore: cast_nullable_to_non_nullable
as double,bHasOpenBilled: null == bHasOpenBilled ? _self.bHasOpenBilled : bHasOpenBilled // ignore: cast_nullable_to_non_nullable
as bool,intOpenBill: null == intOpenBill ? _self.intOpenBill : intOpenBill // ignore: cast_nullable_to_non_nullable
as int,gdId: freezed == gdId ? _self.gdId : gdId // ignore: cast_nullable_to_non_nullable
as String?,intIndex: freezed == intIndex ? _self.intIndex : intIndex // ignore: cast_nullable_to_non_nullable
as int?,bUpdated: freezed == bUpdated ? _self.bUpdated : bUpdated // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [DashBoardData].
extension DashBoardDataPatterns on DashBoardData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashBoardData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashBoardData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashBoardData value)  $default,){
final _that = this;
switch (_that) {
case _DashBoardData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashBoardData value)?  $default,){
final _that = this;
switch (_that) {
case _DashBoardData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String szGreeting,  double decCashSaldo,  bool bHasOpenBilled,  int intOpenBill,  String? gdId,  int? intIndex,  bool? bUpdated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashBoardData() when $default != null:
return $default(_that.szGreeting,_that.decCashSaldo,_that.bHasOpenBilled,_that.intOpenBill,_that.gdId,_that.intIndex,_that.bUpdated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String szGreeting,  double decCashSaldo,  bool bHasOpenBilled,  int intOpenBill,  String? gdId,  int? intIndex,  bool? bUpdated)  $default,) {final _that = this;
switch (_that) {
case _DashBoardData():
return $default(_that.szGreeting,_that.decCashSaldo,_that.bHasOpenBilled,_that.intOpenBill,_that.gdId,_that.intIndex,_that.bUpdated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String szGreeting,  double decCashSaldo,  bool bHasOpenBilled,  int intOpenBill,  String? gdId,  int? intIndex,  bool? bUpdated)?  $default,) {final _that = this;
switch (_that) {
case _DashBoardData() when $default != null:
return $default(_that.szGreeting,_that.decCashSaldo,_that.bHasOpenBilled,_that.intOpenBill,_that.gdId,_that.intIndex,_that.bUpdated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashBoardData implements DashBoardData {
  const _DashBoardData({required this.szGreeting, required this.decCashSaldo, this.bHasOpenBilled = false, this.intOpenBill = 0, this.gdId, this.intIndex, this.bUpdated});
  factory _DashBoardData.fromJson(Map<String, dynamic> json) => _$DashBoardDataFromJson(json);

@override final  String szGreeting;
@override final  double decCashSaldo;
@override@JsonKey() final  bool bHasOpenBilled;
@override@JsonKey() final  int intOpenBill;
@override final  String? gdId;
@override final  int? intIndex;
@override final  bool? bUpdated;

/// Create a copy of DashBoardData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashBoardDataCopyWith<_DashBoardData> get copyWith => __$DashBoardDataCopyWithImpl<_DashBoardData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashBoardDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashBoardData&&(identical(other.szGreeting, szGreeting) || other.szGreeting == szGreeting)&&(identical(other.decCashSaldo, decCashSaldo) || other.decCashSaldo == decCashSaldo)&&(identical(other.bHasOpenBilled, bHasOpenBilled) || other.bHasOpenBilled == bHasOpenBilled)&&(identical(other.intOpenBill, intOpenBill) || other.intOpenBill == intOpenBill)&&(identical(other.gdId, gdId) || other.gdId == gdId)&&(identical(other.intIndex, intIndex) || other.intIndex == intIndex)&&(identical(other.bUpdated, bUpdated) || other.bUpdated == bUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,szGreeting,decCashSaldo,bHasOpenBilled,intOpenBill,gdId,intIndex,bUpdated);

@override
String toString() {
  return 'DashBoardData(szGreeting: $szGreeting, decCashSaldo: $decCashSaldo, bHasOpenBilled: $bHasOpenBilled, intOpenBill: $intOpenBill, gdId: $gdId, intIndex: $intIndex, bUpdated: $bUpdated)';
}


}

/// @nodoc
abstract mixin class _$DashBoardDataCopyWith<$Res> implements $DashBoardDataCopyWith<$Res> {
  factory _$DashBoardDataCopyWith(_DashBoardData value, $Res Function(_DashBoardData) _then) = __$DashBoardDataCopyWithImpl;
@override @useResult
$Res call({
 String szGreeting, double decCashSaldo, bool bHasOpenBilled, int intOpenBill, String? gdId, int? intIndex, bool? bUpdated
});




}
/// @nodoc
class __$DashBoardDataCopyWithImpl<$Res>
    implements _$DashBoardDataCopyWith<$Res> {
  __$DashBoardDataCopyWithImpl(this._self, this._then);

  final _DashBoardData _self;
  final $Res Function(_DashBoardData) _then;

/// Create a copy of DashBoardData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? szGreeting = null,Object? decCashSaldo = null,Object? bHasOpenBilled = null,Object? intOpenBill = null,Object? gdId = freezed,Object? intIndex = freezed,Object? bUpdated = freezed,}) {
  return _then(_DashBoardData(
szGreeting: null == szGreeting ? _self.szGreeting : szGreeting // ignore: cast_nullable_to_non_nullable
as String,decCashSaldo: null == decCashSaldo ? _self.decCashSaldo : decCashSaldo // ignore: cast_nullable_to_non_nullable
as double,bHasOpenBilled: null == bHasOpenBilled ? _self.bHasOpenBilled : bHasOpenBilled // ignore: cast_nullable_to_non_nullable
as bool,intOpenBill: null == intOpenBill ? _self.intOpenBill : intOpenBill // ignore: cast_nullable_to_non_nullable
as int,gdId: freezed == gdId ? _self.gdId : gdId // ignore: cast_nullable_to_non_nullable
as String?,intIndex: freezed == intIndex ? _self.intIndex : intIndex // ignore: cast_nullable_to_non_nullable
as int?,bUpdated: freezed == bUpdated ? _self.bUpdated : bUpdated // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
