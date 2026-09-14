// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_account_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserAccountData {

 String? get gdId; String get szName; String? get szDescription; String? get szEmail; String? get szPassword; bool? get bMustChangePassword; String? get szNik; bool get bOfficer; bool get bFinance; String? get szLangId; String? get szWelcomePage; DataStatus? get dataStatus; int? get intIndex; bool? get bUpdated;
/// Create a copy of UserAccountData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserAccountDataCopyWith<UserAccountData> get copyWith => _$UserAccountDataCopyWithImpl<UserAccountData>(this as UserAccountData, _$identity);

  /// Serializes this UserAccountData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserAccountData&&(identical(other.gdId, gdId) || other.gdId == gdId)&&(identical(other.szName, szName) || other.szName == szName)&&(identical(other.szDescription, szDescription) || other.szDescription == szDescription)&&(identical(other.szEmail, szEmail) || other.szEmail == szEmail)&&(identical(other.szPassword, szPassword) || other.szPassword == szPassword)&&(identical(other.bMustChangePassword, bMustChangePassword) || other.bMustChangePassword == bMustChangePassword)&&(identical(other.szNik, szNik) || other.szNik == szNik)&&(identical(other.bOfficer, bOfficer) || other.bOfficer == bOfficer)&&(identical(other.bFinance, bFinance) || other.bFinance == bFinance)&&(identical(other.szLangId, szLangId) || other.szLangId == szLangId)&&(identical(other.szWelcomePage, szWelcomePage) || other.szWelcomePage == szWelcomePage)&&(identical(other.dataStatus, dataStatus) || other.dataStatus == dataStatus)&&(identical(other.intIndex, intIndex) || other.intIndex == intIndex)&&(identical(other.bUpdated, bUpdated) || other.bUpdated == bUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gdId,szName,szDescription,szEmail,szPassword,bMustChangePassword,szNik,bOfficer,bFinance,szLangId,szWelcomePage,dataStatus,intIndex,bUpdated);

@override
String toString() {
  return 'UserAccountData(gdId: $gdId, szName: $szName, szDescription: $szDescription, szEmail: $szEmail, szPassword: $szPassword, bMustChangePassword: $bMustChangePassword, szNik: $szNik, bOfficer: $bOfficer, bFinance: $bFinance, szLangId: $szLangId, szWelcomePage: $szWelcomePage, dataStatus: $dataStatus, intIndex: $intIndex, bUpdated: $bUpdated)';
}


}

/// @nodoc
abstract mixin class $UserAccountDataCopyWith<$Res>  {
  factory $UserAccountDataCopyWith(UserAccountData value, $Res Function(UserAccountData) _then) = _$UserAccountDataCopyWithImpl;
@useResult
$Res call({
 String? gdId, String szName, String? szDescription, String? szEmail, String? szPassword, bool? bMustChangePassword, String? szNik, bool bOfficer, bool bFinance, String? szLangId, String? szWelcomePage, DataStatus? dataStatus, int? intIndex, bool? bUpdated
});


$DataStatusCopyWith<$Res>? get dataStatus;

}
/// @nodoc
class _$UserAccountDataCopyWithImpl<$Res>
    implements $UserAccountDataCopyWith<$Res> {
  _$UserAccountDataCopyWithImpl(this._self, this._then);

  final UserAccountData _self;
  final $Res Function(UserAccountData) _then;

/// Create a copy of UserAccountData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gdId = freezed,Object? szName = null,Object? szDescription = freezed,Object? szEmail = freezed,Object? szPassword = freezed,Object? bMustChangePassword = freezed,Object? szNik = freezed,Object? bOfficer = null,Object? bFinance = null,Object? szLangId = freezed,Object? szWelcomePage = freezed,Object? dataStatus = freezed,Object? intIndex = freezed,Object? bUpdated = freezed,}) {
  return _then(_self.copyWith(
gdId: freezed == gdId ? _self.gdId : gdId // ignore: cast_nullable_to_non_nullable
as String?,szName: null == szName ? _self.szName : szName // ignore: cast_nullable_to_non_nullable
as String,szDescription: freezed == szDescription ? _self.szDescription : szDescription // ignore: cast_nullable_to_non_nullable
as String?,szEmail: freezed == szEmail ? _self.szEmail : szEmail // ignore: cast_nullable_to_non_nullable
as String?,szPassword: freezed == szPassword ? _self.szPassword : szPassword // ignore: cast_nullable_to_non_nullable
as String?,bMustChangePassword: freezed == bMustChangePassword ? _self.bMustChangePassword : bMustChangePassword // ignore: cast_nullable_to_non_nullable
as bool?,szNik: freezed == szNik ? _self.szNik : szNik // ignore: cast_nullable_to_non_nullable
as String?,bOfficer: null == bOfficer ? _self.bOfficer : bOfficer // ignore: cast_nullable_to_non_nullable
as bool,bFinance: null == bFinance ? _self.bFinance : bFinance // ignore: cast_nullable_to_non_nullable
as bool,szLangId: freezed == szLangId ? _self.szLangId : szLangId // ignore: cast_nullable_to_non_nullable
as String?,szWelcomePage: freezed == szWelcomePage ? _self.szWelcomePage : szWelcomePage // ignore: cast_nullable_to_non_nullable
as String?,dataStatus: freezed == dataStatus ? _self.dataStatus : dataStatus // ignore: cast_nullable_to_non_nullable
as DataStatus?,intIndex: freezed == intIndex ? _self.intIndex : intIndex // ignore: cast_nullable_to_non_nullable
as int?,bUpdated: freezed == bUpdated ? _self.bUpdated : bUpdated // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of UserAccountData
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


/// Adds pattern-matching-related methods to [UserAccountData].
extension UserAccountDataPatterns on UserAccountData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserAccountData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserAccountData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserAccountData value)  $default,){
final _that = this;
switch (_that) {
case _UserAccountData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserAccountData value)?  $default,){
final _that = this;
switch (_that) {
case _UserAccountData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? gdId,  String szName,  String? szDescription,  String? szEmail,  String? szPassword,  bool? bMustChangePassword,  String? szNik,  bool bOfficer,  bool bFinance,  String? szLangId,  String? szWelcomePage,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserAccountData() when $default != null:
return $default(_that.gdId,_that.szName,_that.szDescription,_that.szEmail,_that.szPassword,_that.bMustChangePassword,_that.szNik,_that.bOfficer,_that.bFinance,_that.szLangId,_that.szWelcomePage,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? gdId,  String szName,  String? szDescription,  String? szEmail,  String? szPassword,  bool? bMustChangePassword,  String? szNik,  bool bOfficer,  bool bFinance,  String? szLangId,  String? szWelcomePage,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)  $default,) {final _that = this;
switch (_that) {
case _UserAccountData():
return $default(_that.gdId,_that.szName,_that.szDescription,_that.szEmail,_that.szPassword,_that.bMustChangePassword,_that.szNik,_that.bOfficer,_that.bFinance,_that.szLangId,_that.szWelcomePage,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? gdId,  String szName,  String? szDescription,  String? szEmail,  String? szPassword,  bool? bMustChangePassword,  String? szNik,  bool bOfficer,  bool bFinance,  String? szLangId,  String? szWelcomePage,  DataStatus? dataStatus,  int? intIndex,  bool? bUpdated)?  $default,) {final _that = this;
switch (_that) {
case _UserAccountData() when $default != null:
return $default(_that.gdId,_that.szName,_that.szDescription,_that.szEmail,_that.szPassword,_that.bMustChangePassword,_that.szNik,_that.bOfficer,_that.bFinance,_that.szLangId,_that.szWelcomePage,_that.dataStatus,_that.intIndex,_that.bUpdated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserAccountData implements UserAccountData {
  const _UserAccountData({this.gdId, required this.szName, this.szDescription, this.szEmail, this.szPassword, this.bMustChangePassword, this.szNik, this.bOfficer = false, this.bFinance = false, this.szLangId, this.szWelcomePage, this.dataStatus, this.intIndex, this.bUpdated});
  factory _UserAccountData.fromJson(Map<String, dynamic> json) => _$UserAccountDataFromJson(json);

@override final  String? gdId;
@override final  String szName;
@override final  String? szDescription;
@override final  String? szEmail;
@override final  String? szPassword;
@override final  bool? bMustChangePassword;
@override final  String? szNik;
@override@JsonKey() final  bool bOfficer;
@override@JsonKey() final  bool bFinance;
@override final  String? szLangId;
@override final  String? szWelcomePage;
@override final  DataStatus? dataStatus;
@override final  int? intIndex;
@override final  bool? bUpdated;

/// Create a copy of UserAccountData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserAccountDataCopyWith<_UserAccountData> get copyWith => __$UserAccountDataCopyWithImpl<_UserAccountData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserAccountDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserAccountData&&(identical(other.gdId, gdId) || other.gdId == gdId)&&(identical(other.szName, szName) || other.szName == szName)&&(identical(other.szDescription, szDescription) || other.szDescription == szDescription)&&(identical(other.szEmail, szEmail) || other.szEmail == szEmail)&&(identical(other.szPassword, szPassword) || other.szPassword == szPassword)&&(identical(other.bMustChangePassword, bMustChangePassword) || other.bMustChangePassword == bMustChangePassword)&&(identical(other.szNik, szNik) || other.szNik == szNik)&&(identical(other.bOfficer, bOfficer) || other.bOfficer == bOfficer)&&(identical(other.bFinance, bFinance) || other.bFinance == bFinance)&&(identical(other.szLangId, szLangId) || other.szLangId == szLangId)&&(identical(other.szWelcomePage, szWelcomePage) || other.szWelcomePage == szWelcomePage)&&(identical(other.dataStatus, dataStatus) || other.dataStatus == dataStatus)&&(identical(other.intIndex, intIndex) || other.intIndex == intIndex)&&(identical(other.bUpdated, bUpdated) || other.bUpdated == bUpdated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gdId,szName,szDescription,szEmail,szPassword,bMustChangePassword,szNik,bOfficer,bFinance,szLangId,szWelcomePage,dataStatus,intIndex,bUpdated);

@override
String toString() {
  return 'UserAccountData(gdId: $gdId, szName: $szName, szDescription: $szDescription, szEmail: $szEmail, szPassword: $szPassword, bMustChangePassword: $bMustChangePassword, szNik: $szNik, bOfficer: $bOfficer, bFinance: $bFinance, szLangId: $szLangId, szWelcomePage: $szWelcomePage, dataStatus: $dataStatus, intIndex: $intIndex, bUpdated: $bUpdated)';
}


}

/// @nodoc
abstract mixin class _$UserAccountDataCopyWith<$Res> implements $UserAccountDataCopyWith<$Res> {
  factory _$UserAccountDataCopyWith(_UserAccountData value, $Res Function(_UserAccountData) _then) = __$UserAccountDataCopyWithImpl;
@override @useResult
$Res call({
 String? gdId, String szName, String? szDescription, String? szEmail, String? szPassword, bool? bMustChangePassword, String? szNik, bool bOfficer, bool bFinance, String? szLangId, String? szWelcomePage, DataStatus? dataStatus, int? intIndex, bool? bUpdated
});


@override $DataStatusCopyWith<$Res>? get dataStatus;

}
/// @nodoc
class __$UserAccountDataCopyWithImpl<$Res>
    implements _$UserAccountDataCopyWith<$Res> {
  __$UserAccountDataCopyWithImpl(this._self, this._then);

  final _UserAccountData _self;
  final $Res Function(_UserAccountData) _then;

/// Create a copy of UserAccountData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gdId = freezed,Object? szName = null,Object? szDescription = freezed,Object? szEmail = freezed,Object? szPassword = freezed,Object? bMustChangePassword = freezed,Object? szNik = freezed,Object? bOfficer = null,Object? bFinance = null,Object? szLangId = freezed,Object? szWelcomePage = freezed,Object? dataStatus = freezed,Object? intIndex = freezed,Object? bUpdated = freezed,}) {
  return _then(_UserAccountData(
gdId: freezed == gdId ? _self.gdId : gdId // ignore: cast_nullable_to_non_nullable
as String?,szName: null == szName ? _self.szName : szName // ignore: cast_nullable_to_non_nullable
as String,szDescription: freezed == szDescription ? _self.szDescription : szDescription // ignore: cast_nullable_to_non_nullable
as String?,szEmail: freezed == szEmail ? _self.szEmail : szEmail // ignore: cast_nullable_to_non_nullable
as String?,szPassword: freezed == szPassword ? _self.szPassword : szPassword // ignore: cast_nullable_to_non_nullable
as String?,bMustChangePassword: freezed == bMustChangePassword ? _self.bMustChangePassword : bMustChangePassword // ignore: cast_nullable_to_non_nullable
as bool?,szNik: freezed == szNik ? _self.szNik : szNik // ignore: cast_nullable_to_non_nullable
as String?,bOfficer: null == bOfficer ? _self.bOfficer : bOfficer // ignore: cast_nullable_to_non_nullable
as bool,bFinance: null == bFinance ? _self.bFinance : bFinance // ignore: cast_nullable_to_non_nullable
as bool,szLangId: freezed == szLangId ? _self.szLangId : szLangId // ignore: cast_nullable_to_non_nullable
as String?,szWelcomePage: freezed == szWelcomePage ? _self.szWelcomePage : szWelcomePage // ignore: cast_nullable_to_non_nullable
as String?,dataStatus: freezed == dataStatus ? _self.dataStatus : dataStatus // ignore: cast_nullable_to_non_nullable
as DataStatus?,intIndex: freezed == intIndex ? _self.intIndex : intIndex // ignore: cast_nullable_to_non_nullable
as int?,bUpdated: freezed == bUpdated ? _self.bUpdated : bUpdated // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of UserAccountData
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
