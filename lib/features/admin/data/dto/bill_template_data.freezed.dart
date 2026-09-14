// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_template_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BillTemplateData {

 String? get gdId; String get szName; String? get szDescription; bool get bOccurence; List<BillTemplateItemData>? get items; DataStatus? get dataStatus; int? get intIndex; bool? get bUpdated;
/// Create a copy of BillTemplateData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BillTemplateDataCopyWith<BillTemplateData> get copyWith => _$BillTemplateDataCopyWithImpl<BillTemplateData>(this as BillTemplateData, _$identity);

  /// Serializes this BillTemplateData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BillTemplateData&&(identical(other.gdId, gdId) || other.gdId == gdId)&&(identical(other.szName, szName) || other.szName == szName)&&(identical(other.szDescription, szDescription) || other.szDescription == szDescription)&&(identical(other.bOccurence, bOccurence) || other.bOccurence == bOccurence)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.dataStatus, dataStatus) || other.dataStatus == dataStatus)&&(identical(other.intIndex, intIndex) || other.intIndex == intIndex)&&(identical(other.bUpdated, bUpdated) || other.bUpdated == bUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gdId,szName,szDescription,bOccurence,const DeepCollectionEquality().hash(items),dataStatus,intIndex,bUpdated);

@override
String toString() {
  return 'BillTemplateData(gdId: $gdId, szName: $szName, szDescription: $szDescription, bOccurence: $bOccurence, items: $items, dataStatus: $dataStatus, intIndex: $intIndex, bUpdated: $bUpdated)';
}


}

/// @nodoc
abstract mixin class $BillTemplateDataCopyWith<$Res>  {
  factory $BillTemplateDataCopyWith(BillTemplateData value, $Res Function(BillTemplateData) _then) = _$BillTemplateDataCopyWithImpl;
@useResult
$Res call({
 String? gdId, String szName, String? szDescription, bool bOccurence, List<BillTemplateItemData>? items, DataStatus? dataStatus, int? intIndex, bool? bUpdated
});


$DataStatusCopyWith<$Res>? get dataStatus;

}
/// @nodoc
class _$BillTemplateDataCopyWithImpl<$Res>
    implements $BillTemplateDataCopyWith<$Res> {
  _$BillTemplateDataCopyWithImpl(this._self, this._then);

  final BillTemplateData _self;
  final $Res Function(BillTemplateData) _then;

/// Create a copy of BillTemplateData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gdId = freezed,Object? szName = null,Object? szDescription = freezed,Object? bOccurence = null,Object? items = freezed,Object? dataStatus = freezed,Object? intIndex = freezed,Object? bUpdated = freezed,}) {
  return _then(_self.copyWith(
gdId: freezed == gdId ? _self.gdId : gdId // ignore: cast_nullable_to_non_nullable
as String?,szName: null == szName ? _self.szName : szName // ignore: cast_nullable_to_non_nullable
as String,szDescription: freezed == szDescription ? _self.szDescription : szDescription // ignore: cast_nullable_to_non_nullable
as String?,bOccurence: null == bOccurence ? _self.bOccurence : bOccurence // ignore: cast_nullable_to_non_nullable
as bool,items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<BillTemplateItemData>?,dataStatus: freezed == dataStatus ? _self.dataStatus : dataStatus // ignore: cast_nullable_to_non_nullable
as DataStatus?,intIndex: freezed == intIndex ? _self.intIndex : intIndex // ignore: cast_nullable_to_non_nullable
as int?,bUpdated: freezed == bUpdated ? _self.bUpdated : bUpdated // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of BillTemplateData
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


/// Adds pattern-matching-related methods to [BillTemplateData].
extension BillTemplateDataPatterns on BillTemplateData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BillTemplateData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BillTemplateData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BillTemplateData value)  $default,){
final _that = this;
switch (_that) {
case _BillTemplateData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BillTemplateData value)?  $default,){
final _that = this;
switch (_that) {
case _BillTemplateData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? gdId,  String szName,  String? szDescription,  bool bOccurence,  List<BillTemplateItemData>? items,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BillTemplateData() when $default != null:
return $default(_that.gdId,_that.szName,_that.szDescription,_that.bOccurence,_that.items,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? gdId,  String szName,  String? szDescription,  bool bOccurence,  List<BillTemplateItemData>? items,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)  $default,) {final _that = this;
switch (_that) {
case _BillTemplateData():
return $default(_that.gdId,_that.szName,_that.szDescription,_that.bOccurence,_that.items,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? gdId,  String szName,  String? szDescription,  bool bOccurence,  List<BillTemplateItemData>? items,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)?  $default,) {final _that = this;
switch (_that) {
case _BillTemplateData() when $default != null:
return $default(_that.gdId,_that.szName,_that.szDescription,_that.bOccurence,_that.items,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BillTemplateData implements BillTemplateData {
  const _BillTemplateData({this.gdId, required this.szName, this.szDescription, this.bOccurence = true, final  List<BillTemplateItemData>? items, this.dataStatus, this.intIndex, this.bUpdated}): _items = items;
  factory _BillTemplateData.fromJson(Map<String, dynamic> json) => _$BillTemplateDataFromJson(json);

@override final  String? gdId;
@override final  String szName;
@override final  String? szDescription;
@override@JsonKey() final  bool bOccurence;
 final  List<BillTemplateItemData>? _items;
@override List<BillTemplateItemData>? get items {
  final value = _items;
  if (value == null) return null;
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  DataStatus? dataStatus;
@override final  int? intIndex;
@override final  bool? bUpdated;

/// Create a copy of BillTemplateData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BillTemplateDataCopyWith<_BillTemplateData> get copyWith => __$BillTemplateDataCopyWithImpl<_BillTemplateData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BillTemplateDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BillTemplateData&&(identical(other.gdId, gdId) || other.gdId == gdId)&&(identical(other.szName, szName) || other.szName == szName)&&(identical(other.szDescription, szDescription) || other.szDescription == szDescription)&&(identical(other.bOccurence, bOccurence) || other.bOccurence == bOccurence)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.dataStatus, dataStatus) || other.dataStatus == dataStatus)&&(identical(other.intIndex, intIndex) || other.intIndex == intIndex)&&(identical(other.bUpdated, bUpdated) || other.bUpdated == bUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gdId,szName,szDescription,bOccurence,const DeepCollectionEquality().hash(_items),dataStatus,intIndex,bUpdated);

@override
String toString() {
  return 'BillTemplateData(gdId: $gdId, szName: $szName, szDescription: $szDescription, bOccurence: $bOccurence, items: $items, dataStatus: $dataStatus, intIndex: $intIndex, bUpdated: $bUpdated)';
}


}

/// @nodoc
abstract mixin class _$BillTemplateDataCopyWith<$Res> implements $BillTemplateDataCopyWith<$Res> {
  factory _$BillTemplateDataCopyWith(_BillTemplateData value, $Res Function(_BillTemplateData) _then) = __$BillTemplateDataCopyWithImpl;
@override @useResult
$Res call({
 String? gdId, String szName, String? szDescription, bool bOccurence, List<BillTemplateItemData>? items, DataStatus? dataStatus, int? intIndex, bool? bUpdated
});


@override $DataStatusCopyWith<$Res>? get dataStatus;

}
/// @nodoc
class __$BillTemplateDataCopyWithImpl<$Res>
    implements _$BillTemplateDataCopyWith<$Res> {
  __$BillTemplateDataCopyWithImpl(this._self, this._then);

  final _BillTemplateData _self;
  final $Res Function(_BillTemplateData) _then;

/// Create a copy of BillTemplateData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gdId = freezed,Object? szName = null,Object? szDescription = freezed,Object? bOccurence = null,Object? items = freezed,Object? dataStatus = freezed,Object? intIndex = freezed,Object? bUpdated = freezed,}) {
  return _then(_BillTemplateData(
gdId: freezed == gdId ? _self.gdId : gdId // ignore: cast_nullable_to_non_nullable
as String?,szName: null == szName ? _self.szName : szName // ignore: cast_nullable_to_non_nullable
as String,szDescription: freezed == szDescription ? _self.szDescription : szDescription // ignore: cast_nullable_to_non_nullable
as String?,bOccurence: null == bOccurence ? _self.bOccurence : bOccurence // ignore: cast_nullable_to_non_nullable
as bool,items: freezed == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<BillTemplateItemData>?,dataStatus: freezed == dataStatus ? _self.dataStatus : dataStatus // ignore: cast_nullable_to_non_nullable
as DataStatus?,intIndex: freezed == intIndex ? _self.intIndex : intIndex // ignore: cast_nullable_to_non_nullable
as int?,bUpdated: freezed == bUpdated ? _self.bUpdated : bUpdated // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of BillTemplateData
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
