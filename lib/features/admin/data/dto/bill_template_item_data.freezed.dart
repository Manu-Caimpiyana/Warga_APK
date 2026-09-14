// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_template_item_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BillTemplateItemData {

 String? get gdId; String? get gdParentId; String get szName; String? get szDescription; double get decAmount; DataStatus? get dataStatus; int? get intIndex; bool? get bUpdated;
/// Create a copy of BillTemplateItemData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillTemplateItemDataCopyWith<BillTemplateItemData> get copyWith => _$BillTemplateItemDataCopyWithImpl<BillTemplateItemData>(this as BillTemplateItemData, _$identity);

  /// Serializes this BillTemplateItemData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BillTemplateItemData&&(identical(other.gdId, gdId) || other.gdId == gdId)&&(identical(other.gdParentId, gdParentId) || other.gdParentId == gdParentId)&&(identical(other.szName, szName) || other.szName == szName)&&(identical(other.szDescription, szDescription) || other.szDescription == szDescription)&&(identical(other.decAmount, decAmount) || other.decAmount == decAmount)&&(identical(other.dataStatus, dataStatus) || other.dataStatus == dataStatus)&&(identical(other.intIndex, intIndex) || other.intIndex == intIndex)&&(identical(other.bUpdated, bUpdated) || other.bUpdated == bUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gdId,gdParentId,szName,szDescription,decAmount,dataStatus,intIndex,bUpdated);

@override
String toString() {
  return 'BillTemplateItemData(gdId: $gdId, gdParentId: $gdParentId, szName: $szName, szDescription: $szDescription, decAmount: $decAmount, dataStatus: $dataStatus, intIndex: $intIndex, bUpdated: $bUpdated)';
}


}

/// @nodoc
abstract mixin class $BillTemplateItemDataCopyWith<$Res>  {
  factory $BillTemplateItemDataCopyWith(BillTemplateItemData value, $Res Function(BillTemplateItemData) _then) = _$BillTemplateItemDataCopyWithImpl;
@useResult
$Res call({
 String? gdId, String? gdParentId, String szName, String? szDescription, double decAmount, DataStatus? dataStatus, int? intIndex, bool? bUpdated
});


$DataStatusCopyWith<$Res>? get dataStatus;

}
/// @nodoc
class _$BillTemplateItemDataCopyWithImpl<$Res>
    implements $BillTemplateItemDataCopyWith<$Res> {
  _$BillTemplateItemDataCopyWithImpl(this._self, this._then);

  final BillTemplateItemData _self;
  final $Res Function(BillTemplateItemData) _then;

/// Create a copy of BillTemplateItemData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gdId = freezed,Object? gdParentId = freezed,Object? szName = null,Object? szDescription = freezed,Object? decAmount = null,Object? dataStatus = freezed,Object? intIndex = freezed,Object? bUpdated = freezed,}) {
  return _then(_self.copyWith(
gdId: freezed == gdId ? _self.gdId : gdId // ignore: cast_nullable_to_non_nullable
as String?,gdParentId: freezed == gdParentId ? _self.gdParentId : gdParentId // ignore: cast_nullable_to_non_nullable
as String?,szName: null == szName ? _self.szName : szName // ignore: cast_nullable_to_non_nullable
as String,szDescription: freezed == szDescription ? _self.szDescription : szDescription // ignore: cast_nullable_to_non_nullable
as String?,decAmount: null == decAmount ? _self.decAmount : decAmount // ignore: cast_nullable_to_non_nullable
as double,dataStatus: freezed == dataStatus ? _self.dataStatus : dataStatus // ignore: cast_nullable_to_non_nullable
as DataStatus?,intIndex: freezed == intIndex ? _self.intIndex : intIndex // ignore: cast_nullable_to_non_nullable
as int?,bUpdated: freezed == bUpdated ? _self.bUpdated : bUpdated // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of BillTemplateItemData
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


/// Adds pattern-matching-related methods to [BillTemplateItemData].
extension BillTemplateItemDataPatterns on BillTemplateItemData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BillTemplateItemData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BillTemplateItemData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BillTemplateItemData value)  $default,){
final _that = this;
switch (_that) {
case _BillTemplateItemData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BillTemplateItemData value)?  $default,){
final _that = this;
switch (_that) {
case _BillTemplateItemData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? gdId,  String? gdParentId,  String szName,  String? szDescription,  double decAmount,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BillTemplateItemData() when $default != null:
return $default(_that.gdId,_that.gdParentId,_that.szName,_that.szDescription,_that.decAmount,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? gdId,  String? gdParentId,  String szName,  String? szDescription,  double decAmount,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)  $default,) {final _that = this;
switch (_that) {
case _BillTemplateItemData():
return $default(_that.gdId,_that.gdParentId,_that.szName,_that.szDescription,_that.decAmount,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? gdId,  String? gdParentId,  String szName,  String? szDescription,  double decAmount,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)?  $default,) {final _that = this;
switch (_that) {
case _BillTemplateItemData() when $default != null:
return $default(_that.gdId,_that.gdParentId,_that.szName,_that.szDescription,_that.decAmount,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BillTemplateItemData implements BillTemplateItemData {
  const _BillTemplateItemData({this.gdId, this.gdParentId, required this.szName, this.szDescription, required this.decAmount, this.dataStatus, this.intIndex, this.bUpdated});
  factory _BillTemplateItemData.fromJson(Map<String, dynamic> json) => _$BillTemplateItemDataFromJson(json);

@override final  String? gdId;
@override final  String? gdParentId;
@override final  String szName;
@override final  String? szDescription;
@override final  double decAmount;
@override final  DataStatus? dataStatus;
@override final  int? intIndex;
@override final  bool? bUpdated;

/// Create a copy of BillTemplateItemData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillTemplateItemDataCopyWith<_BillTemplateItemData> get copyWith => __$BillTemplateItemDataCopyWithImpl<_BillTemplateItemData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BillTemplateItemDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BillTemplateItemData&&(identical(other.gdId, gdId) || other.gdId == gdId)&&(identical(other.gdParentId, gdParentId) || other.gdParentId == gdParentId)&&(identical(other.szName, szName) || other.szName == szName)&&(identical(other.szDescription, szDescription) || other.szDescription == szDescription)&&(identical(other.decAmount, decAmount) || other.decAmount == decAmount)&&(identical(other.dataStatus, dataStatus) || other.dataStatus == dataStatus)&&(identical(other.intIndex, intIndex) || other.intIndex == intIndex)&&(identical(other.bUpdated, bUpdated) || other.bUpdated == bUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gdId,gdParentId,szName,szDescription,decAmount,dataStatus,intIndex,bUpdated);

@override
String toString() {
  return 'BillTemplateItemData(gdId: $gdId, gdParentId: $gdParentId, szName: $szName, szDescription: $szDescription, decAmount: $decAmount, dataStatus: $dataStatus, intIndex: $intIndex, bUpdated: $bUpdated)';
}


}

/// @nodoc
abstract mixin class _$BillTemplateItemDataCopyWith<$Res> implements $BillTemplateItemDataCopyWith<$Res> {
  factory _$BillTemplateItemDataCopyWith(_BillTemplateItemData value, $Res Function(_BillTemplateItemData) _then) = __$BillTemplateItemDataCopyWithImpl;
@override @useResult
$Res call({
 String? gdId, String? gdParentId, String szName, String? szDescription, double decAmount, DataStatus? dataStatus, int? intIndex, bool? bUpdated
});


@override $DataStatusCopyWith<$Res>? get dataStatus;

}
/// @nodoc
class __$BillTemplateItemDataCopyWithImpl<$Res>
    implements _$BillTemplateItemDataCopyWith<$Res> {
  __$BillTemplateItemDataCopyWithImpl(this._self, this._then);

  final _BillTemplateItemData _self;
  final $Res Function(_BillTemplateItemData) _then;

/// Create a copy of BillTemplateItemData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gdId = freezed,Object? gdParentId = freezed,Object? szName = null,Object? szDescription = freezed,Object? decAmount = null,Object? dataStatus = freezed,Object? intIndex = freezed,Object? bUpdated = freezed,}) {
  return _then(_BillTemplateItemData(
gdId: freezed == gdId ? _self.gdId : gdId // ignore: cast_nullable_to_non_nullable
as String?,gdParentId: freezed == gdParentId ? _self.gdParentId : gdParentId // ignore: cast_nullable_to_non_nullable
as String?,szName: null == szName ? _self.szName : szName // ignore: cast_nullable_to_non_nullable
as String,szDescription: freezed == szDescription ? _self.szDescription : szDescription // ignore: cast_nullable_to_non_nullable
as String?,decAmount: null == decAmount ? _self.decAmount : decAmount // ignore: cast_nullable_to_non_nullable
as double,dataStatus: freezed == dataStatus ? _self.dataStatus : dataStatus // ignore: cast_nullable_to_non_nullable
as DataStatus?,intIndex: freezed == intIndex ? _self.intIndex : intIndex // ignore: cast_nullable_to_non_nullable
as int?,bUpdated: freezed == bUpdated ? _self.bUpdated : bUpdated // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of BillTemplateItemData
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
