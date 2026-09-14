// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_result_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiResultData<T> {

@JsonKey(name: 'bSuccess') bool get success;@JsonKey(name: 'szMessage') String? get message;@JsonKey(name: 'oResult') T? get result;@JsonKey(name: 'oResultType') String? get resultType;
/// Create a copy of ApiResultData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiResultDataCopyWith<T, ApiResultData<T>> get copyWith => _$ApiResultDataCopyWithImpl<T, ApiResultData<T>>(this as ApiResultData<T>, _$identity);

  /// Serializes this ApiResultData to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiResultData<T>&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.result, result)&&(identical(other.resultType, resultType) || other.resultType == resultType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(result),resultType);

@override
String toString() {
  return 'ApiResultData<$T>(success: $success, message: $message, result: $result, resultType: $resultType)';
}


}

/// @nodoc
abstract mixin class $ApiResultDataCopyWith<T,$Res>  {
  factory $ApiResultDataCopyWith(ApiResultData<T> value, $Res Function(ApiResultData<T>) _then) = _$ApiResultDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'bSuccess') bool success,@JsonKey(name: 'szMessage') String? message,@JsonKey(name: 'oResult') T? result,@JsonKey(name: 'oResultType') String? resultType
});




}
/// @nodoc
class _$ApiResultDataCopyWithImpl<T,$Res>
    implements $ApiResultDataCopyWith<T, $Res> {
  _$ApiResultDataCopyWithImpl(this._self, this._then);

  final ApiResultData<T> _self;
  final $Res Function(ApiResultData<T>) _then;

/// Create a copy of ApiResultData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = freezed,Object? result = freezed,Object? resultType = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as T?,resultType: freezed == resultType ? _self.resultType : resultType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiResultData].
extension ApiResultDataPatterns<T> on ApiResultData<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiResultData<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiResultData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiResultData<T> value)  $default,){
final _that = this;
switch (_that) {
case _ApiResultData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiResultData<T> value)?  $default,){
final _that = this;
switch (_that) {
case _ApiResultData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'bSuccess')  bool success, @JsonKey(name: 'szMessage')  String? message, @JsonKey(name: 'oResult')  T? result, @JsonKey(name: 'oResultType')  String? resultType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiResultData() when $default != null:
return $default(_that.success,_that.message,_that.result,_that.resultType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'bSuccess')  bool success, @JsonKey(name: 'szMessage')  String? message, @JsonKey(name: 'oResult')  T? result, @JsonKey(name: 'oResultType')  String? resultType)  $default,) {final _that = this;
switch (_that) {
case _ApiResultData():
return $default(_that.success,_that.message,_that.result,_that.resultType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'bSuccess')  bool success, @JsonKey(name: 'szMessage')  String? message, @JsonKey(name: 'oResult')  T? result, @JsonKey(name: 'oResultType')  String? resultType)?  $default,) {final _that = this;
switch (_that) {
case _ApiResultData() when $default != null:
return $default(_that.success,_that.message,_that.result,_that.resultType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _ApiResultData<T> implements ApiResultData<T> {
  const _ApiResultData({@JsonKey(name: 'bSuccess') required this.success, @JsonKey(name: 'szMessage') this.message, @JsonKey(name: 'oResult') this.result, @JsonKey(name: 'oResultType') this.resultType});
  factory _ApiResultData.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$ApiResultDataFromJson(json,fromJsonT);

@override@JsonKey(name: 'bSuccess') final  bool success;
@override@JsonKey(name: 'szMessage') final  String? message;
@override@JsonKey(name: 'oResult') final  T? result;
@override@JsonKey(name: 'oResultType') final  String? resultType;

/// Create a copy of ApiResultData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiResultDataCopyWith<T, _ApiResultData<T>> get copyWith => __$ApiResultDataCopyWithImpl<T, _ApiResultData<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$ApiResultDataToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiResultData<T>&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.result, result)&&(identical(other.resultType, resultType) || other.resultType == resultType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(result),resultType);

@override
String toString() {
  return 'ApiResultData<$T>(success: $success, message: $message, result: $result, resultType: $resultType)';
}


}

/// @nodoc
abstract mixin class _$ApiResultDataCopyWith<T,$Res> implements $ApiResultDataCopyWith<T, $Res> {
  factory _$ApiResultDataCopyWith(_ApiResultData<T> value, $Res Function(_ApiResultData<T>) _then) = __$ApiResultDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'bSuccess') bool success,@JsonKey(name: 'szMessage') String? message,@JsonKey(name: 'oResult') T? result,@JsonKey(name: 'oResultType') String? resultType
});




}
/// @nodoc
class __$ApiResultDataCopyWithImpl<T,$Res>
    implements _$ApiResultDataCopyWith<T, $Res> {
  __$ApiResultDataCopyWithImpl(this._self, this._then);

  final _ApiResultData<T> _self;
  final $Res Function(_ApiResultData<T>) _then;

/// Create a copy of ApiResultData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = freezed,Object? result = freezed,Object? resultType = freezed,}) {
  return _then(_ApiResultData<T>(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as T?,resultType: freezed == resultType ? _self.resultType : resultType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
