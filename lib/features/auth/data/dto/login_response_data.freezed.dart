// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginResponseData {

 UserAccountData get user; String? get szWelcomePage; String get token;
/// Create a copy of LoginResponseData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginResponseDataCopyWith<LoginResponseData> get copyWith => _$LoginResponseDataCopyWithImpl<LoginResponseData>(this as LoginResponseData, _$identity);

  /// Serializes this LoginResponseData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginResponseData&&(identical(other.user, user) || other.user == user)&&(identical(other.szWelcomePage, szWelcomePage) || other.szWelcomePage == szWelcomePage)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,szWelcomePage,token);

@override
String toString() {
  return 'LoginResponseData(user: $user, szWelcomePage: $szWelcomePage, token: $token)';
}


}

/// @nodoc
abstract mixin class $LoginResponseDataCopyWith<$Res>  {
  factory $LoginResponseDataCopyWith(LoginResponseData value, $Res Function(LoginResponseData) _then) = _$LoginResponseDataCopyWithImpl;
@useResult
$Res call({
 UserAccountData user, String? szWelcomePage, String token
});


$UserAccountDataCopyWith<$Res> get user;

}
/// @nodoc
class _$LoginResponseDataCopyWithImpl<$Res>
    implements $LoginResponseDataCopyWith<$Res> {
  _$LoginResponseDataCopyWithImpl(this._self, this._then);

  final LoginResponseData _self;
  final $Res Function(LoginResponseData) _then;

/// Create a copy of LoginResponseData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? szWelcomePage = freezed,Object? token = null,}) {
  return _then(_self.copyWith(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserAccountData,szWelcomePage: freezed == szWelcomePage ? _self.szWelcomePage : szWelcomePage // ignore: cast_nullable_to_non_nullable
as String?,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of LoginResponseData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserAccountDataCopyWith<$Res> get user {
  
  return $UserAccountDataCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginResponseData].
extension LoginResponseDataPatterns on LoginResponseData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginResponseData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginResponseData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginResponseData value)  $default,){
final _that = this;
switch (_that) {
case _LoginResponseData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginResponseData value)?  $default,){
final _that = this;
switch (_that) {
case _LoginResponseData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserAccountData user,  String? szWelcomePage,  String token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginResponseData() when $default != null:
return $default(_that.user,_that.szWelcomePage,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserAccountData user,  String? szWelcomePage,  String token)  $default,) {final _that = this;
switch (_that) {
case _LoginResponseData():
return $default(_that.user,_that.szWelcomePage,_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserAccountData user,  String? szWelcomePage,  String token)?  $default,) {final _that = this;
switch (_that) {
case _LoginResponseData() when $default != null:
return $default(_that.user,_that.szWelcomePage,_that.token);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginResponseData implements LoginResponseData {
  const _LoginResponseData({required this.user, this.szWelcomePage, required this.token});
  factory _LoginResponseData.fromJson(Map<String, dynamic> json) => _$LoginResponseDataFromJson(json);

@override final  UserAccountData user;
@override final  String? szWelcomePage;
@override final  String token;

/// Create a copy of LoginResponseData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginResponseDataCopyWith<_LoginResponseData> get copyWith => __$LoginResponseDataCopyWithImpl<_LoginResponseData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginResponseDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginResponseData&&(identical(other.user, user) || other.user == user)&&(identical(other.szWelcomePage, szWelcomePage) || other.szWelcomePage == szWelcomePage)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,szWelcomePage,token);

@override
String toString() {
  return 'LoginResponseData(user: $user, szWelcomePage: $szWelcomePage, token: $token)';
}


}

/// @nodoc
abstract mixin class _$LoginResponseDataCopyWith<$Res> implements $LoginResponseDataCopyWith<$Res> {
  factory _$LoginResponseDataCopyWith(_LoginResponseData value, $Res Function(_LoginResponseData) _then) = __$LoginResponseDataCopyWithImpl;
@override @useResult
$Res call({
 UserAccountData user, String? szWelcomePage, String token
});


@override $UserAccountDataCopyWith<$Res> get user;

}
/// @nodoc
class __$LoginResponseDataCopyWithImpl<$Res>
    implements _$LoginResponseDataCopyWith<$Res> {
  __$LoginResponseDataCopyWithImpl(this._self, this._then);

  final _LoginResponseData _self;
  final $Res Function(_LoginResponseData) _then;

/// Create a copy of LoginResponseData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? szWelcomePage = freezed,Object? token = null,}) {
  return _then(_LoginResponseData(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserAccountData,szWelcomePage: freezed == szWelcomePage ? _self.szWelcomePage : szWelcomePage // ignore: cast_nullable_to_non_nullable
as String?,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of LoginResponseData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserAccountDataCopyWith<$Res> get user {
  
  return $UserAccountDataCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
