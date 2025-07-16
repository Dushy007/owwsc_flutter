// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginResponse {

@JsonKey(name: "Status") String get status;@JsonKey(name: "StatusCode") int get statusCode;@JsonKey(name: "Data") UserData? get data;
/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginResponseCopyWith<LoginResponse> get copyWith => _$LoginResponseCopyWithImpl<LoginResponse>(this as LoginResponse, _$identity);

  /// Serializes this LoginResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,statusCode,data);

@override
String toString() {
  return 'LoginResponse(status: $status, statusCode: $statusCode, data: $data)';
}


}

/// @nodoc
abstract mixin class $LoginResponseCopyWith<$Res>  {
  factory $LoginResponseCopyWith(LoginResponse value, $Res Function(LoginResponse) _then) = _$LoginResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "Status") String status,@JsonKey(name: "StatusCode") int statusCode,@JsonKey(name: "Data") UserData? data
});


$UserDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$LoginResponseCopyWithImpl<$Res>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._self, this._then);

  final LoginResponse _self;
  final $Res Function(LoginResponse) _then;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? statusCode = null,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserData?,
  ));
}
/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $UserDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginResponse].
extension LoginResponsePatterns on LoginResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginResponse value)  $default,){
final _that = this;
switch (_that) {
case _LoginResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "Status")  String status, @JsonKey(name: "StatusCode")  int statusCode, @JsonKey(name: "Data")  UserData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
return $default(_that.status,_that.statusCode,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "Status")  String status, @JsonKey(name: "StatusCode")  int statusCode, @JsonKey(name: "Data")  UserData? data)  $default,) {final _that = this;
switch (_that) {
case _LoginResponse():
return $default(_that.status,_that.statusCode,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "Status")  String status, @JsonKey(name: "StatusCode")  int statusCode, @JsonKey(name: "Data")  UserData? data)?  $default,) {final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
return $default(_that.status,_that.statusCode,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginResponse implements LoginResponse {
  const _LoginResponse({@JsonKey(name: "Status") required this.status, @JsonKey(name: "StatusCode") required this.statusCode, @JsonKey(name: "Data") this.data});
  factory _LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

@override@JsonKey(name: "Status") final  String status;
@override@JsonKey(name: "StatusCode") final  int statusCode;
@override@JsonKey(name: "Data") final  UserData? data;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginResponseCopyWith<_LoginResponse> get copyWith => __$LoginResponseCopyWithImpl<_LoginResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,statusCode,data);

@override
String toString() {
  return 'LoginResponse(status: $status, statusCode: $statusCode, data: $data)';
}


}

/// @nodoc
abstract mixin class _$LoginResponseCopyWith<$Res> implements $LoginResponseCopyWith<$Res> {
  factory _$LoginResponseCopyWith(_LoginResponse value, $Res Function(_LoginResponse) _then) = __$LoginResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "Status") String status,@JsonKey(name: "StatusCode") int statusCode,@JsonKey(name: "Data") UserData? data
});


@override $UserDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$LoginResponseCopyWithImpl<$Res>
    implements _$LoginResponseCopyWith<$Res> {
  __$LoginResponseCopyWithImpl(this._self, this._then);

  final _LoginResponse _self;
  final $Res Function(_LoginResponse) _then;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? statusCode = null,Object? data = freezed,}) {
  return _then(_LoginResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserData?,
  ));
}

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $UserDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$UserData {

@JsonKey(name: 'UserID') int get userId;@JsonKey(name: 'Outmessage') String get outMessage;@JsonKey(name: 'EmailOrMobile') String? get emailOrMobile;@JsonKey(name: 'Message') String? get message;@JsonKey(name: 'UserGuidID') String? get userGuidId;@JsonKey(name: 'Token') String get token;@JsonKey(name: 'AuraToken') String? get auraToken;@JsonKey(name: 'UserName') String get userName;@JsonKey(name: 'FullNameEn') String get fullNameEn;@JsonKey(name: 'FullNameAr') String get fullNameAr;@JsonKey(name: 'PersonType') String get personType;@JsonKey(name: 'EmailID') String get emailId;@JsonKey(name: 'MobileNumber') String get mobileNumber;@JsonKey(name: 'PreffredLang') String get preferredLang;@JsonKey(name: 'ProfileImg') String? get profileImg;@JsonKey(name: 'IsEmailVerified') bool get isEmailVerified;@JsonKey(name: 'IsMobileVerified') bool get isMobileVerified;@JsonKey(name: 'NationalID') String get nationalId;@JsonKey(name: 'CRNumber') String get crNumber;@JsonKey(name: 'ExpiryDate') String get expiryDate;@JsonKey(name: 'CustomerTypeName') String get customerTypeName;@JsonKey(name: 'IsSMSNTF') bool get isSmsNotification;@JsonKey(name: 'IsEmailNTF') bool get isEmailNotification;@JsonKey(name: 'IsEmailChanged') bool get isEmailChanged;@JsonKey(name: 'IsMobileChanged') bool get isMobileChanged;@JsonKey(name: 'IsPasswordVerified') bool get isPasswordVerified;@JsonKey(name: 'IsMigratedUser') bool get isMigratedUser;@JsonKey(name: 'FaceID') bool get faceId;@JsonKey(name: 'TouchID') bool get touchId;@JsonKey(name: 'Output') bool get output;@JsonKey(name: 'UserGuid') String get userGuid;@JsonKey(name: 'userData') String? get userData;@JsonKey(name: 'IsAlertinSMS') bool get isAlertInSms;@JsonKey(name: 'IsAlertinEMAIL') bool get isAlertInEmail;@JsonKey(name: 'IsAlertinWhatsapp') bool get isAlertInWhatsapp;@JsonKey(name: 'IsPrepaidActive') bool get isPrepaidActive;@JsonKey(name: 'IsERPCustomer') bool get isErpCustomer;@JsonKey(name: 'ERPCustomerId') String get erpCustomerId;@JsonKey(name: 'ERPCustomerName') String get erpCustomerName;@JsonKey(name: 'FirstNameEn') String get firstNameEn;@JsonKey(name: 'FirstNameAr') String get firstNameAr;@JsonKey(name: 'SecondNameEn') String get secondNameEn;@JsonKey(name: 'SecondNameAr') String get secondNameAr;@JsonKey(name: 'ThirdNameEn') String get thirdNameEn;@JsonKey(name: 'ThirdNameAr') String get thirdNameAr;@JsonKey(name: 'FamilyNameEn') String get familyNameEn;@JsonKey(name: 'FamilyNameAr') String get familyNameAr;@JsonKey(name: 'ROPValidation') String? get ropValidation;@JsonKey(name: 'ROPGsmNumber') String get ropGsmNumber;@JsonKey(name: 'IsROPValidationRequired') bool get isRopValidationRequired;@JsonKey(name: 'APUserData') String get apUserData;@JsonKey(name: 'IsResetPassword') int get isResetPassword;
/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDataCopyWith<UserData> get copyWith => _$UserDataCopyWithImpl<UserData>(this as UserData, _$identity);

  /// Serializes this UserData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserData&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.outMessage, outMessage) || other.outMessage == outMessage)&&(identical(other.emailOrMobile, emailOrMobile) || other.emailOrMobile == emailOrMobile)&&(identical(other.message, message) || other.message == message)&&(identical(other.userGuidId, userGuidId) || other.userGuidId == userGuidId)&&(identical(other.token, token) || other.token == token)&&(identical(other.auraToken, auraToken) || other.auraToken == auraToken)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.fullNameEn, fullNameEn) || other.fullNameEn == fullNameEn)&&(identical(other.fullNameAr, fullNameAr) || other.fullNameAr == fullNameAr)&&(identical(other.personType, personType) || other.personType == personType)&&(identical(other.emailId, emailId) || other.emailId == emailId)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.preferredLang, preferredLang) || other.preferredLang == preferredLang)&&(identical(other.profileImg, profileImg) || other.profileImg == profileImg)&&(identical(other.isEmailVerified, isEmailVerified) || other.isEmailVerified == isEmailVerified)&&(identical(other.isMobileVerified, isMobileVerified) || other.isMobileVerified == isMobileVerified)&&(identical(other.nationalId, nationalId) || other.nationalId == nationalId)&&(identical(other.crNumber, crNumber) || other.crNumber == crNumber)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.customerTypeName, customerTypeName) || other.customerTypeName == customerTypeName)&&(identical(other.isSmsNotification, isSmsNotification) || other.isSmsNotification == isSmsNotification)&&(identical(other.isEmailNotification, isEmailNotification) || other.isEmailNotification == isEmailNotification)&&(identical(other.isEmailChanged, isEmailChanged) || other.isEmailChanged == isEmailChanged)&&(identical(other.isMobileChanged, isMobileChanged) || other.isMobileChanged == isMobileChanged)&&(identical(other.isPasswordVerified, isPasswordVerified) || other.isPasswordVerified == isPasswordVerified)&&(identical(other.isMigratedUser, isMigratedUser) || other.isMigratedUser == isMigratedUser)&&(identical(other.faceId, faceId) || other.faceId == faceId)&&(identical(other.touchId, touchId) || other.touchId == touchId)&&(identical(other.output, output) || other.output == output)&&(identical(other.userGuid, userGuid) || other.userGuid == userGuid)&&(identical(other.userData, userData) || other.userData == userData)&&(identical(other.isAlertInSms, isAlertInSms) || other.isAlertInSms == isAlertInSms)&&(identical(other.isAlertInEmail, isAlertInEmail) || other.isAlertInEmail == isAlertInEmail)&&(identical(other.isAlertInWhatsapp, isAlertInWhatsapp) || other.isAlertInWhatsapp == isAlertInWhatsapp)&&(identical(other.isPrepaidActive, isPrepaidActive) || other.isPrepaidActive == isPrepaidActive)&&(identical(other.isErpCustomer, isErpCustomer) || other.isErpCustomer == isErpCustomer)&&(identical(other.erpCustomerId, erpCustomerId) || other.erpCustomerId == erpCustomerId)&&(identical(other.erpCustomerName, erpCustomerName) || other.erpCustomerName == erpCustomerName)&&(identical(other.firstNameEn, firstNameEn) || other.firstNameEn == firstNameEn)&&(identical(other.firstNameAr, firstNameAr) || other.firstNameAr == firstNameAr)&&(identical(other.secondNameEn, secondNameEn) || other.secondNameEn == secondNameEn)&&(identical(other.secondNameAr, secondNameAr) || other.secondNameAr == secondNameAr)&&(identical(other.thirdNameEn, thirdNameEn) || other.thirdNameEn == thirdNameEn)&&(identical(other.thirdNameAr, thirdNameAr) || other.thirdNameAr == thirdNameAr)&&(identical(other.familyNameEn, familyNameEn) || other.familyNameEn == familyNameEn)&&(identical(other.familyNameAr, familyNameAr) || other.familyNameAr == familyNameAr)&&(identical(other.ropValidation, ropValidation) || other.ropValidation == ropValidation)&&(identical(other.ropGsmNumber, ropGsmNumber) || other.ropGsmNumber == ropGsmNumber)&&(identical(other.isRopValidationRequired, isRopValidationRequired) || other.isRopValidationRequired == isRopValidationRequired)&&(identical(other.apUserData, apUserData) || other.apUserData == apUserData)&&(identical(other.isResetPassword, isResetPassword) || other.isResetPassword == isResetPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,userId,outMessage,emailOrMobile,message,userGuidId,token,auraToken,userName,fullNameEn,fullNameAr,personType,emailId,mobileNumber,preferredLang,profileImg,isEmailVerified,isMobileVerified,nationalId,crNumber,expiryDate,customerTypeName,isSmsNotification,isEmailNotification,isEmailChanged,isMobileChanged,isPasswordVerified,isMigratedUser,faceId,touchId,output,userGuid,userData,isAlertInSms,isAlertInEmail,isAlertInWhatsapp,isPrepaidActive,isErpCustomer,erpCustomerId,erpCustomerName,firstNameEn,firstNameAr,secondNameEn,secondNameAr,thirdNameEn,thirdNameAr,familyNameEn,familyNameAr,ropValidation,ropGsmNumber,isRopValidationRequired,apUserData,isResetPassword]);

@override
String toString() {
  return 'UserData(userId: $userId, outMessage: $outMessage, emailOrMobile: $emailOrMobile, message: $message, userGuidId: $userGuidId, token: $token, auraToken: $auraToken, userName: $userName, fullNameEn: $fullNameEn, fullNameAr: $fullNameAr, personType: $personType, emailId: $emailId, mobileNumber: $mobileNumber, preferredLang: $preferredLang, profileImg: $profileImg, isEmailVerified: $isEmailVerified, isMobileVerified: $isMobileVerified, nationalId: $nationalId, crNumber: $crNumber, expiryDate: $expiryDate, customerTypeName: $customerTypeName, isSmsNotification: $isSmsNotification, isEmailNotification: $isEmailNotification, isEmailChanged: $isEmailChanged, isMobileChanged: $isMobileChanged, isPasswordVerified: $isPasswordVerified, isMigratedUser: $isMigratedUser, faceId: $faceId, touchId: $touchId, output: $output, userGuid: $userGuid, userData: $userData, isAlertInSms: $isAlertInSms, isAlertInEmail: $isAlertInEmail, isAlertInWhatsapp: $isAlertInWhatsapp, isPrepaidActive: $isPrepaidActive, isErpCustomer: $isErpCustomer, erpCustomerId: $erpCustomerId, erpCustomerName: $erpCustomerName, firstNameEn: $firstNameEn, firstNameAr: $firstNameAr, secondNameEn: $secondNameEn, secondNameAr: $secondNameAr, thirdNameEn: $thirdNameEn, thirdNameAr: $thirdNameAr, familyNameEn: $familyNameEn, familyNameAr: $familyNameAr, ropValidation: $ropValidation, ropGsmNumber: $ropGsmNumber, isRopValidationRequired: $isRopValidationRequired, apUserData: $apUserData, isResetPassword: $isResetPassword)';
}


}

/// @nodoc
abstract mixin class $UserDataCopyWith<$Res>  {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) _then) = _$UserDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'UserID') int userId,@JsonKey(name: 'Outmessage') String outMessage,@JsonKey(name: 'EmailOrMobile') String? emailOrMobile,@JsonKey(name: 'Message') String? message,@JsonKey(name: 'UserGuidID') String? userGuidId,@JsonKey(name: 'Token') String token,@JsonKey(name: 'AuraToken') String? auraToken,@JsonKey(name: 'UserName') String userName,@JsonKey(name: 'FullNameEn') String fullNameEn,@JsonKey(name: 'FullNameAr') String fullNameAr,@JsonKey(name: 'PersonType') String personType,@JsonKey(name: 'EmailID') String emailId,@JsonKey(name: 'MobileNumber') String mobileNumber,@JsonKey(name: 'PreffredLang') String preferredLang,@JsonKey(name: 'ProfileImg') String? profileImg,@JsonKey(name: 'IsEmailVerified') bool isEmailVerified,@JsonKey(name: 'IsMobileVerified') bool isMobileVerified,@JsonKey(name: 'NationalID') String nationalId,@JsonKey(name: 'CRNumber') String crNumber,@JsonKey(name: 'ExpiryDate') String expiryDate,@JsonKey(name: 'CustomerTypeName') String customerTypeName,@JsonKey(name: 'IsSMSNTF') bool isSmsNotification,@JsonKey(name: 'IsEmailNTF') bool isEmailNotification,@JsonKey(name: 'IsEmailChanged') bool isEmailChanged,@JsonKey(name: 'IsMobileChanged') bool isMobileChanged,@JsonKey(name: 'IsPasswordVerified') bool isPasswordVerified,@JsonKey(name: 'IsMigratedUser') bool isMigratedUser,@JsonKey(name: 'FaceID') bool faceId,@JsonKey(name: 'TouchID') bool touchId,@JsonKey(name: 'Output') bool output,@JsonKey(name: 'UserGuid') String userGuid,@JsonKey(name: 'userData') String? userData,@JsonKey(name: 'IsAlertinSMS') bool isAlertInSms,@JsonKey(name: 'IsAlertinEMAIL') bool isAlertInEmail,@JsonKey(name: 'IsAlertinWhatsapp') bool isAlertInWhatsapp,@JsonKey(name: 'IsPrepaidActive') bool isPrepaidActive,@JsonKey(name: 'IsERPCustomer') bool isErpCustomer,@JsonKey(name: 'ERPCustomerId') String erpCustomerId,@JsonKey(name: 'ERPCustomerName') String erpCustomerName,@JsonKey(name: 'FirstNameEn') String firstNameEn,@JsonKey(name: 'FirstNameAr') String firstNameAr,@JsonKey(name: 'SecondNameEn') String secondNameEn,@JsonKey(name: 'SecondNameAr') String secondNameAr,@JsonKey(name: 'ThirdNameEn') String thirdNameEn,@JsonKey(name: 'ThirdNameAr') String thirdNameAr,@JsonKey(name: 'FamilyNameEn') String familyNameEn,@JsonKey(name: 'FamilyNameAr') String familyNameAr,@JsonKey(name: 'ROPValidation') String? ropValidation,@JsonKey(name: 'ROPGsmNumber') String ropGsmNumber,@JsonKey(name: 'IsROPValidationRequired') bool isRopValidationRequired,@JsonKey(name: 'APUserData') String apUserData,@JsonKey(name: 'IsResetPassword') int isResetPassword
});




}
/// @nodoc
class _$UserDataCopyWithImpl<$Res>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._self, this._then);

  final UserData _self;
  final $Res Function(UserData) _then;

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? outMessage = null,Object? emailOrMobile = freezed,Object? message = freezed,Object? userGuidId = freezed,Object? token = null,Object? auraToken = freezed,Object? userName = null,Object? fullNameEn = null,Object? fullNameAr = null,Object? personType = null,Object? emailId = null,Object? mobileNumber = null,Object? preferredLang = null,Object? profileImg = freezed,Object? isEmailVerified = null,Object? isMobileVerified = null,Object? nationalId = null,Object? crNumber = null,Object? expiryDate = null,Object? customerTypeName = null,Object? isSmsNotification = null,Object? isEmailNotification = null,Object? isEmailChanged = null,Object? isMobileChanged = null,Object? isPasswordVerified = null,Object? isMigratedUser = null,Object? faceId = null,Object? touchId = null,Object? output = null,Object? userGuid = null,Object? userData = freezed,Object? isAlertInSms = null,Object? isAlertInEmail = null,Object? isAlertInWhatsapp = null,Object? isPrepaidActive = null,Object? isErpCustomer = null,Object? erpCustomerId = null,Object? erpCustomerName = null,Object? firstNameEn = null,Object? firstNameAr = null,Object? secondNameEn = null,Object? secondNameAr = null,Object? thirdNameEn = null,Object? thirdNameAr = null,Object? familyNameEn = null,Object? familyNameAr = null,Object? ropValidation = freezed,Object? ropGsmNumber = null,Object? isRopValidationRequired = null,Object? apUserData = null,Object? isResetPassword = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,outMessage: null == outMessage ? _self.outMessage : outMessage // ignore: cast_nullable_to_non_nullable
as String,emailOrMobile: freezed == emailOrMobile ? _self.emailOrMobile : emailOrMobile // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,userGuidId: freezed == userGuidId ? _self.userGuidId : userGuidId // ignore: cast_nullable_to_non_nullable
as String?,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,auraToken: freezed == auraToken ? _self.auraToken : auraToken // ignore: cast_nullable_to_non_nullable
as String?,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,fullNameEn: null == fullNameEn ? _self.fullNameEn : fullNameEn // ignore: cast_nullable_to_non_nullable
as String,fullNameAr: null == fullNameAr ? _self.fullNameAr : fullNameAr // ignore: cast_nullable_to_non_nullable
as String,personType: null == personType ? _self.personType : personType // ignore: cast_nullable_to_non_nullable
as String,emailId: null == emailId ? _self.emailId : emailId // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,preferredLang: null == preferredLang ? _self.preferredLang : preferredLang // ignore: cast_nullable_to_non_nullable
as String,profileImg: freezed == profileImg ? _self.profileImg : profileImg // ignore: cast_nullable_to_non_nullable
as String?,isEmailVerified: null == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as bool,isMobileVerified: null == isMobileVerified ? _self.isMobileVerified : isMobileVerified // ignore: cast_nullable_to_non_nullable
as bool,nationalId: null == nationalId ? _self.nationalId : nationalId // ignore: cast_nullable_to_non_nullable
as String,crNumber: null == crNumber ? _self.crNumber : crNumber // ignore: cast_nullable_to_non_nullable
as String,expiryDate: null == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as String,customerTypeName: null == customerTypeName ? _self.customerTypeName : customerTypeName // ignore: cast_nullable_to_non_nullable
as String,isSmsNotification: null == isSmsNotification ? _self.isSmsNotification : isSmsNotification // ignore: cast_nullable_to_non_nullable
as bool,isEmailNotification: null == isEmailNotification ? _self.isEmailNotification : isEmailNotification // ignore: cast_nullable_to_non_nullable
as bool,isEmailChanged: null == isEmailChanged ? _self.isEmailChanged : isEmailChanged // ignore: cast_nullable_to_non_nullable
as bool,isMobileChanged: null == isMobileChanged ? _self.isMobileChanged : isMobileChanged // ignore: cast_nullable_to_non_nullable
as bool,isPasswordVerified: null == isPasswordVerified ? _self.isPasswordVerified : isPasswordVerified // ignore: cast_nullable_to_non_nullable
as bool,isMigratedUser: null == isMigratedUser ? _self.isMigratedUser : isMigratedUser // ignore: cast_nullable_to_non_nullable
as bool,faceId: null == faceId ? _self.faceId : faceId // ignore: cast_nullable_to_non_nullable
as bool,touchId: null == touchId ? _self.touchId : touchId // ignore: cast_nullable_to_non_nullable
as bool,output: null == output ? _self.output : output // ignore: cast_nullable_to_non_nullable
as bool,userGuid: null == userGuid ? _self.userGuid : userGuid // ignore: cast_nullable_to_non_nullable
as String,userData: freezed == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as String?,isAlertInSms: null == isAlertInSms ? _self.isAlertInSms : isAlertInSms // ignore: cast_nullable_to_non_nullable
as bool,isAlertInEmail: null == isAlertInEmail ? _self.isAlertInEmail : isAlertInEmail // ignore: cast_nullable_to_non_nullable
as bool,isAlertInWhatsapp: null == isAlertInWhatsapp ? _self.isAlertInWhatsapp : isAlertInWhatsapp // ignore: cast_nullable_to_non_nullable
as bool,isPrepaidActive: null == isPrepaidActive ? _self.isPrepaidActive : isPrepaidActive // ignore: cast_nullable_to_non_nullable
as bool,isErpCustomer: null == isErpCustomer ? _self.isErpCustomer : isErpCustomer // ignore: cast_nullable_to_non_nullable
as bool,erpCustomerId: null == erpCustomerId ? _self.erpCustomerId : erpCustomerId // ignore: cast_nullable_to_non_nullable
as String,erpCustomerName: null == erpCustomerName ? _self.erpCustomerName : erpCustomerName // ignore: cast_nullable_to_non_nullable
as String,firstNameEn: null == firstNameEn ? _self.firstNameEn : firstNameEn // ignore: cast_nullable_to_non_nullable
as String,firstNameAr: null == firstNameAr ? _self.firstNameAr : firstNameAr // ignore: cast_nullable_to_non_nullable
as String,secondNameEn: null == secondNameEn ? _self.secondNameEn : secondNameEn // ignore: cast_nullable_to_non_nullable
as String,secondNameAr: null == secondNameAr ? _self.secondNameAr : secondNameAr // ignore: cast_nullable_to_non_nullable
as String,thirdNameEn: null == thirdNameEn ? _self.thirdNameEn : thirdNameEn // ignore: cast_nullable_to_non_nullable
as String,thirdNameAr: null == thirdNameAr ? _self.thirdNameAr : thirdNameAr // ignore: cast_nullable_to_non_nullable
as String,familyNameEn: null == familyNameEn ? _self.familyNameEn : familyNameEn // ignore: cast_nullable_to_non_nullable
as String,familyNameAr: null == familyNameAr ? _self.familyNameAr : familyNameAr // ignore: cast_nullable_to_non_nullable
as String,ropValidation: freezed == ropValidation ? _self.ropValidation : ropValidation // ignore: cast_nullable_to_non_nullable
as String?,ropGsmNumber: null == ropGsmNumber ? _self.ropGsmNumber : ropGsmNumber // ignore: cast_nullable_to_non_nullable
as String,isRopValidationRequired: null == isRopValidationRequired ? _self.isRopValidationRequired : isRopValidationRequired // ignore: cast_nullable_to_non_nullable
as bool,apUserData: null == apUserData ? _self.apUserData : apUserData // ignore: cast_nullable_to_non_nullable
as String,isResetPassword: null == isResetPassword ? _self.isResetPassword : isResetPassword // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UserData].
extension UserDataPatterns on UserData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserData value)  $default,){
final _that = this;
switch (_that) {
case _UserData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserData value)?  $default,){
final _that = this;
switch (_that) {
case _UserData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'UserID')  int userId, @JsonKey(name: 'Outmessage')  String outMessage, @JsonKey(name: 'EmailOrMobile')  String? emailOrMobile, @JsonKey(name: 'Message')  String? message, @JsonKey(name: 'UserGuidID')  String? userGuidId, @JsonKey(name: 'Token')  String token, @JsonKey(name: 'AuraToken')  String? auraToken, @JsonKey(name: 'UserName')  String userName, @JsonKey(name: 'FullNameEn')  String fullNameEn, @JsonKey(name: 'FullNameAr')  String fullNameAr, @JsonKey(name: 'PersonType')  String personType, @JsonKey(name: 'EmailID')  String emailId, @JsonKey(name: 'MobileNumber')  String mobileNumber, @JsonKey(name: 'PreffredLang')  String preferredLang, @JsonKey(name: 'ProfileImg')  String? profileImg, @JsonKey(name: 'IsEmailVerified')  bool isEmailVerified, @JsonKey(name: 'IsMobileVerified')  bool isMobileVerified, @JsonKey(name: 'NationalID')  String nationalId, @JsonKey(name: 'CRNumber')  String crNumber, @JsonKey(name: 'ExpiryDate')  String expiryDate, @JsonKey(name: 'CustomerTypeName')  String customerTypeName, @JsonKey(name: 'IsSMSNTF')  bool isSmsNotification, @JsonKey(name: 'IsEmailNTF')  bool isEmailNotification, @JsonKey(name: 'IsEmailChanged')  bool isEmailChanged, @JsonKey(name: 'IsMobileChanged')  bool isMobileChanged, @JsonKey(name: 'IsPasswordVerified')  bool isPasswordVerified, @JsonKey(name: 'IsMigratedUser')  bool isMigratedUser, @JsonKey(name: 'FaceID')  bool faceId, @JsonKey(name: 'TouchID')  bool touchId, @JsonKey(name: 'Output')  bool output, @JsonKey(name: 'UserGuid')  String userGuid, @JsonKey(name: 'userData')  String? userData, @JsonKey(name: 'IsAlertinSMS')  bool isAlertInSms, @JsonKey(name: 'IsAlertinEMAIL')  bool isAlertInEmail, @JsonKey(name: 'IsAlertinWhatsapp')  bool isAlertInWhatsapp, @JsonKey(name: 'IsPrepaidActive')  bool isPrepaidActive, @JsonKey(name: 'IsERPCustomer')  bool isErpCustomer, @JsonKey(name: 'ERPCustomerId')  String erpCustomerId, @JsonKey(name: 'ERPCustomerName')  String erpCustomerName, @JsonKey(name: 'FirstNameEn')  String firstNameEn, @JsonKey(name: 'FirstNameAr')  String firstNameAr, @JsonKey(name: 'SecondNameEn')  String secondNameEn, @JsonKey(name: 'SecondNameAr')  String secondNameAr, @JsonKey(name: 'ThirdNameEn')  String thirdNameEn, @JsonKey(name: 'ThirdNameAr')  String thirdNameAr, @JsonKey(name: 'FamilyNameEn')  String familyNameEn, @JsonKey(name: 'FamilyNameAr')  String familyNameAr, @JsonKey(name: 'ROPValidation')  String? ropValidation, @JsonKey(name: 'ROPGsmNumber')  String ropGsmNumber, @JsonKey(name: 'IsROPValidationRequired')  bool isRopValidationRequired, @JsonKey(name: 'APUserData')  String apUserData, @JsonKey(name: 'IsResetPassword')  int isResetPassword)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserData() when $default != null:
return $default(_that.userId,_that.outMessage,_that.emailOrMobile,_that.message,_that.userGuidId,_that.token,_that.auraToken,_that.userName,_that.fullNameEn,_that.fullNameAr,_that.personType,_that.emailId,_that.mobileNumber,_that.preferredLang,_that.profileImg,_that.isEmailVerified,_that.isMobileVerified,_that.nationalId,_that.crNumber,_that.expiryDate,_that.customerTypeName,_that.isSmsNotification,_that.isEmailNotification,_that.isEmailChanged,_that.isMobileChanged,_that.isPasswordVerified,_that.isMigratedUser,_that.faceId,_that.touchId,_that.output,_that.userGuid,_that.userData,_that.isAlertInSms,_that.isAlertInEmail,_that.isAlertInWhatsapp,_that.isPrepaidActive,_that.isErpCustomer,_that.erpCustomerId,_that.erpCustomerName,_that.firstNameEn,_that.firstNameAr,_that.secondNameEn,_that.secondNameAr,_that.thirdNameEn,_that.thirdNameAr,_that.familyNameEn,_that.familyNameAr,_that.ropValidation,_that.ropGsmNumber,_that.isRopValidationRequired,_that.apUserData,_that.isResetPassword);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'UserID')  int userId, @JsonKey(name: 'Outmessage')  String outMessage, @JsonKey(name: 'EmailOrMobile')  String? emailOrMobile, @JsonKey(name: 'Message')  String? message, @JsonKey(name: 'UserGuidID')  String? userGuidId, @JsonKey(name: 'Token')  String token, @JsonKey(name: 'AuraToken')  String? auraToken, @JsonKey(name: 'UserName')  String userName, @JsonKey(name: 'FullNameEn')  String fullNameEn, @JsonKey(name: 'FullNameAr')  String fullNameAr, @JsonKey(name: 'PersonType')  String personType, @JsonKey(name: 'EmailID')  String emailId, @JsonKey(name: 'MobileNumber')  String mobileNumber, @JsonKey(name: 'PreffredLang')  String preferredLang, @JsonKey(name: 'ProfileImg')  String? profileImg, @JsonKey(name: 'IsEmailVerified')  bool isEmailVerified, @JsonKey(name: 'IsMobileVerified')  bool isMobileVerified, @JsonKey(name: 'NationalID')  String nationalId, @JsonKey(name: 'CRNumber')  String crNumber, @JsonKey(name: 'ExpiryDate')  String expiryDate, @JsonKey(name: 'CustomerTypeName')  String customerTypeName, @JsonKey(name: 'IsSMSNTF')  bool isSmsNotification, @JsonKey(name: 'IsEmailNTF')  bool isEmailNotification, @JsonKey(name: 'IsEmailChanged')  bool isEmailChanged, @JsonKey(name: 'IsMobileChanged')  bool isMobileChanged, @JsonKey(name: 'IsPasswordVerified')  bool isPasswordVerified, @JsonKey(name: 'IsMigratedUser')  bool isMigratedUser, @JsonKey(name: 'FaceID')  bool faceId, @JsonKey(name: 'TouchID')  bool touchId, @JsonKey(name: 'Output')  bool output, @JsonKey(name: 'UserGuid')  String userGuid, @JsonKey(name: 'userData')  String? userData, @JsonKey(name: 'IsAlertinSMS')  bool isAlertInSms, @JsonKey(name: 'IsAlertinEMAIL')  bool isAlertInEmail, @JsonKey(name: 'IsAlertinWhatsapp')  bool isAlertInWhatsapp, @JsonKey(name: 'IsPrepaidActive')  bool isPrepaidActive, @JsonKey(name: 'IsERPCustomer')  bool isErpCustomer, @JsonKey(name: 'ERPCustomerId')  String erpCustomerId, @JsonKey(name: 'ERPCustomerName')  String erpCustomerName, @JsonKey(name: 'FirstNameEn')  String firstNameEn, @JsonKey(name: 'FirstNameAr')  String firstNameAr, @JsonKey(name: 'SecondNameEn')  String secondNameEn, @JsonKey(name: 'SecondNameAr')  String secondNameAr, @JsonKey(name: 'ThirdNameEn')  String thirdNameEn, @JsonKey(name: 'ThirdNameAr')  String thirdNameAr, @JsonKey(name: 'FamilyNameEn')  String familyNameEn, @JsonKey(name: 'FamilyNameAr')  String familyNameAr, @JsonKey(name: 'ROPValidation')  String? ropValidation, @JsonKey(name: 'ROPGsmNumber')  String ropGsmNumber, @JsonKey(name: 'IsROPValidationRequired')  bool isRopValidationRequired, @JsonKey(name: 'APUserData')  String apUserData, @JsonKey(name: 'IsResetPassword')  int isResetPassword)  $default,) {final _that = this;
switch (_that) {
case _UserData():
return $default(_that.userId,_that.outMessage,_that.emailOrMobile,_that.message,_that.userGuidId,_that.token,_that.auraToken,_that.userName,_that.fullNameEn,_that.fullNameAr,_that.personType,_that.emailId,_that.mobileNumber,_that.preferredLang,_that.profileImg,_that.isEmailVerified,_that.isMobileVerified,_that.nationalId,_that.crNumber,_that.expiryDate,_that.customerTypeName,_that.isSmsNotification,_that.isEmailNotification,_that.isEmailChanged,_that.isMobileChanged,_that.isPasswordVerified,_that.isMigratedUser,_that.faceId,_that.touchId,_that.output,_that.userGuid,_that.userData,_that.isAlertInSms,_that.isAlertInEmail,_that.isAlertInWhatsapp,_that.isPrepaidActive,_that.isErpCustomer,_that.erpCustomerId,_that.erpCustomerName,_that.firstNameEn,_that.firstNameAr,_that.secondNameEn,_that.secondNameAr,_that.thirdNameEn,_that.thirdNameAr,_that.familyNameEn,_that.familyNameAr,_that.ropValidation,_that.ropGsmNumber,_that.isRopValidationRequired,_that.apUserData,_that.isResetPassword);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'UserID')  int userId, @JsonKey(name: 'Outmessage')  String outMessage, @JsonKey(name: 'EmailOrMobile')  String? emailOrMobile, @JsonKey(name: 'Message')  String? message, @JsonKey(name: 'UserGuidID')  String? userGuidId, @JsonKey(name: 'Token')  String token, @JsonKey(name: 'AuraToken')  String? auraToken, @JsonKey(name: 'UserName')  String userName, @JsonKey(name: 'FullNameEn')  String fullNameEn, @JsonKey(name: 'FullNameAr')  String fullNameAr, @JsonKey(name: 'PersonType')  String personType, @JsonKey(name: 'EmailID')  String emailId, @JsonKey(name: 'MobileNumber')  String mobileNumber, @JsonKey(name: 'PreffredLang')  String preferredLang, @JsonKey(name: 'ProfileImg')  String? profileImg, @JsonKey(name: 'IsEmailVerified')  bool isEmailVerified, @JsonKey(name: 'IsMobileVerified')  bool isMobileVerified, @JsonKey(name: 'NationalID')  String nationalId, @JsonKey(name: 'CRNumber')  String crNumber, @JsonKey(name: 'ExpiryDate')  String expiryDate, @JsonKey(name: 'CustomerTypeName')  String customerTypeName, @JsonKey(name: 'IsSMSNTF')  bool isSmsNotification, @JsonKey(name: 'IsEmailNTF')  bool isEmailNotification, @JsonKey(name: 'IsEmailChanged')  bool isEmailChanged, @JsonKey(name: 'IsMobileChanged')  bool isMobileChanged, @JsonKey(name: 'IsPasswordVerified')  bool isPasswordVerified, @JsonKey(name: 'IsMigratedUser')  bool isMigratedUser, @JsonKey(name: 'FaceID')  bool faceId, @JsonKey(name: 'TouchID')  bool touchId, @JsonKey(name: 'Output')  bool output, @JsonKey(name: 'UserGuid')  String userGuid, @JsonKey(name: 'userData')  String? userData, @JsonKey(name: 'IsAlertinSMS')  bool isAlertInSms, @JsonKey(name: 'IsAlertinEMAIL')  bool isAlertInEmail, @JsonKey(name: 'IsAlertinWhatsapp')  bool isAlertInWhatsapp, @JsonKey(name: 'IsPrepaidActive')  bool isPrepaidActive, @JsonKey(name: 'IsERPCustomer')  bool isErpCustomer, @JsonKey(name: 'ERPCustomerId')  String erpCustomerId, @JsonKey(name: 'ERPCustomerName')  String erpCustomerName, @JsonKey(name: 'FirstNameEn')  String firstNameEn, @JsonKey(name: 'FirstNameAr')  String firstNameAr, @JsonKey(name: 'SecondNameEn')  String secondNameEn, @JsonKey(name: 'SecondNameAr')  String secondNameAr, @JsonKey(name: 'ThirdNameEn')  String thirdNameEn, @JsonKey(name: 'ThirdNameAr')  String thirdNameAr, @JsonKey(name: 'FamilyNameEn')  String familyNameEn, @JsonKey(name: 'FamilyNameAr')  String familyNameAr, @JsonKey(name: 'ROPValidation')  String? ropValidation, @JsonKey(name: 'ROPGsmNumber')  String ropGsmNumber, @JsonKey(name: 'IsROPValidationRequired')  bool isRopValidationRequired, @JsonKey(name: 'APUserData')  String apUserData, @JsonKey(name: 'IsResetPassword')  int isResetPassword)?  $default,) {final _that = this;
switch (_that) {
case _UserData() when $default != null:
return $default(_that.userId,_that.outMessage,_that.emailOrMobile,_that.message,_that.userGuidId,_that.token,_that.auraToken,_that.userName,_that.fullNameEn,_that.fullNameAr,_that.personType,_that.emailId,_that.mobileNumber,_that.preferredLang,_that.profileImg,_that.isEmailVerified,_that.isMobileVerified,_that.nationalId,_that.crNumber,_that.expiryDate,_that.customerTypeName,_that.isSmsNotification,_that.isEmailNotification,_that.isEmailChanged,_that.isMobileChanged,_that.isPasswordVerified,_that.isMigratedUser,_that.faceId,_that.touchId,_that.output,_that.userGuid,_that.userData,_that.isAlertInSms,_that.isAlertInEmail,_that.isAlertInWhatsapp,_that.isPrepaidActive,_that.isErpCustomer,_that.erpCustomerId,_that.erpCustomerName,_that.firstNameEn,_that.firstNameAr,_that.secondNameEn,_that.secondNameAr,_that.thirdNameEn,_that.thirdNameAr,_that.familyNameEn,_that.familyNameAr,_that.ropValidation,_that.ropGsmNumber,_that.isRopValidationRequired,_that.apUserData,_that.isResetPassword);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserData extends UserData {
  const _UserData({@JsonKey(name: 'UserID') required this.userId, @JsonKey(name: 'Outmessage') this.outMessage = '', @JsonKey(name: 'EmailOrMobile') this.emailOrMobile, @JsonKey(name: 'Message') this.message, @JsonKey(name: 'UserGuidID') this.userGuidId, @JsonKey(name: 'Token') required this.token, @JsonKey(name: 'AuraToken') this.auraToken, @JsonKey(name: 'UserName') required this.userName, @JsonKey(name: 'FullNameEn') required this.fullNameEn, @JsonKey(name: 'FullNameAr') required this.fullNameAr, @JsonKey(name: 'PersonType') required this.personType, @JsonKey(name: 'EmailID') required this.emailId, @JsonKey(name: 'MobileNumber') required this.mobileNumber, @JsonKey(name: 'PreffredLang') required this.preferredLang, @JsonKey(name: 'ProfileImg') this.profileImg, @JsonKey(name: 'IsEmailVerified') this.isEmailVerified = false, @JsonKey(name: 'IsMobileVerified') this.isMobileVerified = false, @JsonKey(name: 'NationalID') required this.nationalId, @JsonKey(name: 'CRNumber') required this.crNumber, @JsonKey(name: 'ExpiryDate') required this.expiryDate, @JsonKey(name: 'CustomerTypeName') required this.customerTypeName, @JsonKey(name: 'IsSMSNTF') this.isSmsNotification = false, @JsonKey(name: 'IsEmailNTF') this.isEmailNotification = false, @JsonKey(name: 'IsEmailChanged') this.isEmailChanged = false, @JsonKey(name: 'IsMobileChanged') this.isMobileChanged = false, @JsonKey(name: 'IsPasswordVerified') this.isPasswordVerified = false, @JsonKey(name: 'IsMigratedUser') this.isMigratedUser = false, @JsonKey(name: 'FaceID') this.faceId = false, @JsonKey(name: 'TouchID') this.touchId = false, @JsonKey(name: 'Output') this.output = false, @JsonKey(name: 'UserGuid') required this.userGuid, @JsonKey(name: 'userData') this.userData, @JsonKey(name: 'IsAlertinSMS') this.isAlertInSms = false, @JsonKey(name: 'IsAlertinEMAIL') this.isAlertInEmail = false, @JsonKey(name: 'IsAlertinWhatsapp') this.isAlertInWhatsapp = false, @JsonKey(name: 'IsPrepaidActive') this.isPrepaidActive = false, @JsonKey(name: 'IsERPCustomer') this.isErpCustomer = false, @JsonKey(name: 'ERPCustomerId') required this.erpCustomerId, @JsonKey(name: 'ERPCustomerName') required this.erpCustomerName, @JsonKey(name: 'FirstNameEn') this.firstNameEn = '', @JsonKey(name: 'FirstNameAr') this.firstNameAr = '', @JsonKey(name: 'SecondNameEn') this.secondNameEn = '', @JsonKey(name: 'SecondNameAr') this.secondNameAr = '', @JsonKey(name: 'ThirdNameEn') this.thirdNameEn = '', @JsonKey(name: 'ThirdNameAr') this.thirdNameAr = '', @JsonKey(name: 'FamilyNameEn') this.familyNameEn = '', @JsonKey(name: 'FamilyNameAr') this.familyNameAr = '', @JsonKey(name: 'ROPValidation') this.ropValidation, @JsonKey(name: 'ROPGsmNumber') this.ropGsmNumber = '', @JsonKey(name: 'IsROPValidationRequired') this.isRopValidationRequired = false, @JsonKey(name: 'APUserData') required this.apUserData, @JsonKey(name: 'IsResetPassword') this.isResetPassword = 0}): super._();
  factory _UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);

@override@JsonKey(name: 'UserID') final  int userId;
@override@JsonKey(name: 'Outmessage') final  String outMessage;
@override@JsonKey(name: 'EmailOrMobile') final  String? emailOrMobile;
@override@JsonKey(name: 'Message') final  String? message;
@override@JsonKey(name: 'UserGuidID') final  String? userGuidId;
@override@JsonKey(name: 'Token') final  String token;
@override@JsonKey(name: 'AuraToken') final  String? auraToken;
@override@JsonKey(name: 'UserName') final  String userName;
@override@JsonKey(name: 'FullNameEn') final  String fullNameEn;
@override@JsonKey(name: 'FullNameAr') final  String fullNameAr;
@override@JsonKey(name: 'PersonType') final  String personType;
@override@JsonKey(name: 'EmailID') final  String emailId;
@override@JsonKey(name: 'MobileNumber') final  String mobileNumber;
@override@JsonKey(name: 'PreffredLang') final  String preferredLang;
@override@JsonKey(name: 'ProfileImg') final  String? profileImg;
@override@JsonKey(name: 'IsEmailVerified') final  bool isEmailVerified;
@override@JsonKey(name: 'IsMobileVerified') final  bool isMobileVerified;
@override@JsonKey(name: 'NationalID') final  String nationalId;
@override@JsonKey(name: 'CRNumber') final  String crNumber;
@override@JsonKey(name: 'ExpiryDate') final  String expiryDate;
@override@JsonKey(name: 'CustomerTypeName') final  String customerTypeName;
@override@JsonKey(name: 'IsSMSNTF') final  bool isSmsNotification;
@override@JsonKey(name: 'IsEmailNTF') final  bool isEmailNotification;
@override@JsonKey(name: 'IsEmailChanged') final  bool isEmailChanged;
@override@JsonKey(name: 'IsMobileChanged') final  bool isMobileChanged;
@override@JsonKey(name: 'IsPasswordVerified') final  bool isPasswordVerified;
@override@JsonKey(name: 'IsMigratedUser') final  bool isMigratedUser;
@override@JsonKey(name: 'FaceID') final  bool faceId;
@override@JsonKey(name: 'TouchID') final  bool touchId;
@override@JsonKey(name: 'Output') final  bool output;
@override@JsonKey(name: 'UserGuid') final  String userGuid;
@override@JsonKey(name: 'userData') final  String? userData;
@override@JsonKey(name: 'IsAlertinSMS') final  bool isAlertInSms;
@override@JsonKey(name: 'IsAlertinEMAIL') final  bool isAlertInEmail;
@override@JsonKey(name: 'IsAlertinWhatsapp') final  bool isAlertInWhatsapp;
@override@JsonKey(name: 'IsPrepaidActive') final  bool isPrepaidActive;
@override@JsonKey(name: 'IsERPCustomer') final  bool isErpCustomer;
@override@JsonKey(name: 'ERPCustomerId') final  String erpCustomerId;
@override@JsonKey(name: 'ERPCustomerName') final  String erpCustomerName;
@override@JsonKey(name: 'FirstNameEn') final  String firstNameEn;
@override@JsonKey(name: 'FirstNameAr') final  String firstNameAr;
@override@JsonKey(name: 'SecondNameEn') final  String secondNameEn;
@override@JsonKey(name: 'SecondNameAr') final  String secondNameAr;
@override@JsonKey(name: 'ThirdNameEn') final  String thirdNameEn;
@override@JsonKey(name: 'ThirdNameAr') final  String thirdNameAr;
@override@JsonKey(name: 'FamilyNameEn') final  String familyNameEn;
@override@JsonKey(name: 'FamilyNameAr') final  String familyNameAr;
@override@JsonKey(name: 'ROPValidation') final  String? ropValidation;
@override@JsonKey(name: 'ROPGsmNumber') final  String ropGsmNumber;
@override@JsonKey(name: 'IsROPValidationRequired') final  bool isRopValidationRequired;
@override@JsonKey(name: 'APUserData') final  String apUserData;
@override@JsonKey(name: 'IsResetPassword') final  int isResetPassword;

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDataCopyWith<_UserData> get copyWith => __$UserDataCopyWithImpl<_UserData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserData&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.outMessage, outMessage) || other.outMessage == outMessage)&&(identical(other.emailOrMobile, emailOrMobile) || other.emailOrMobile == emailOrMobile)&&(identical(other.message, message) || other.message == message)&&(identical(other.userGuidId, userGuidId) || other.userGuidId == userGuidId)&&(identical(other.token, token) || other.token == token)&&(identical(other.auraToken, auraToken) || other.auraToken == auraToken)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.fullNameEn, fullNameEn) || other.fullNameEn == fullNameEn)&&(identical(other.fullNameAr, fullNameAr) || other.fullNameAr == fullNameAr)&&(identical(other.personType, personType) || other.personType == personType)&&(identical(other.emailId, emailId) || other.emailId == emailId)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.preferredLang, preferredLang) || other.preferredLang == preferredLang)&&(identical(other.profileImg, profileImg) || other.profileImg == profileImg)&&(identical(other.isEmailVerified, isEmailVerified) || other.isEmailVerified == isEmailVerified)&&(identical(other.isMobileVerified, isMobileVerified) || other.isMobileVerified == isMobileVerified)&&(identical(other.nationalId, nationalId) || other.nationalId == nationalId)&&(identical(other.crNumber, crNumber) || other.crNumber == crNumber)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.customerTypeName, customerTypeName) || other.customerTypeName == customerTypeName)&&(identical(other.isSmsNotification, isSmsNotification) || other.isSmsNotification == isSmsNotification)&&(identical(other.isEmailNotification, isEmailNotification) || other.isEmailNotification == isEmailNotification)&&(identical(other.isEmailChanged, isEmailChanged) || other.isEmailChanged == isEmailChanged)&&(identical(other.isMobileChanged, isMobileChanged) || other.isMobileChanged == isMobileChanged)&&(identical(other.isPasswordVerified, isPasswordVerified) || other.isPasswordVerified == isPasswordVerified)&&(identical(other.isMigratedUser, isMigratedUser) || other.isMigratedUser == isMigratedUser)&&(identical(other.faceId, faceId) || other.faceId == faceId)&&(identical(other.touchId, touchId) || other.touchId == touchId)&&(identical(other.output, output) || other.output == output)&&(identical(other.userGuid, userGuid) || other.userGuid == userGuid)&&(identical(other.userData, userData) || other.userData == userData)&&(identical(other.isAlertInSms, isAlertInSms) || other.isAlertInSms == isAlertInSms)&&(identical(other.isAlertInEmail, isAlertInEmail) || other.isAlertInEmail == isAlertInEmail)&&(identical(other.isAlertInWhatsapp, isAlertInWhatsapp) || other.isAlertInWhatsapp == isAlertInWhatsapp)&&(identical(other.isPrepaidActive, isPrepaidActive) || other.isPrepaidActive == isPrepaidActive)&&(identical(other.isErpCustomer, isErpCustomer) || other.isErpCustomer == isErpCustomer)&&(identical(other.erpCustomerId, erpCustomerId) || other.erpCustomerId == erpCustomerId)&&(identical(other.erpCustomerName, erpCustomerName) || other.erpCustomerName == erpCustomerName)&&(identical(other.firstNameEn, firstNameEn) || other.firstNameEn == firstNameEn)&&(identical(other.firstNameAr, firstNameAr) || other.firstNameAr == firstNameAr)&&(identical(other.secondNameEn, secondNameEn) || other.secondNameEn == secondNameEn)&&(identical(other.secondNameAr, secondNameAr) || other.secondNameAr == secondNameAr)&&(identical(other.thirdNameEn, thirdNameEn) || other.thirdNameEn == thirdNameEn)&&(identical(other.thirdNameAr, thirdNameAr) || other.thirdNameAr == thirdNameAr)&&(identical(other.familyNameEn, familyNameEn) || other.familyNameEn == familyNameEn)&&(identical(other.familyNameAr, familyNameAr) || other.familyNameAr == familyNameAr)&&(identical(other.ropValidation, ropValidation) || other.ropValidation == ropValidation)&&(identical(other.ropGsmNumber, ropGsmNumber) || other.ropGsmNumber == ropGsmNumber)&&(identical(other.isRopValidationRequired, isRopValidationRequired) || other.isRopValidationRequired == isRopValidationRequired)&&(identical(other.apUserData, apUserData) || other.apUserData == apUserData)&&(identical(other.isResetPassword, isResetPassword) || other.isResetPassword == isResetPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,userId,outMessage,emailOrMobile,message,userGuidId,token,auraToken,userName,fullNameEn,fullNameAr,personType,emailId,mobileNumber,preferredLang,profileImg,isEmailVerified,isMobileVerified,nationalId,crNumber,expiryDate,customerTypeName,isSmsNotification,isEmailNotification,isEmailChanged,isMobileChanged,isPasswordVerified,isMigratedUser,faceId,touchId,output,userGuid,userData,isAlertInSms,isAlertInEmail,isAlertInWhatsapp,isPrepaidActive,isErpCustomer,erpCustomerId,erpCustomerName,firstNameEn,firstNameAr,secondNameEn,secondNameAr,thirdNameEn,thirdNameAr,familyNameEn,familyNameAr,ropValidation,ropGsmNumber,isRopValidationRequired,apUserData,isResetPassword]);

@override
String toString() {
  return 'UserData(userId: $userId, outMessage: $outMessage, emailOrMobile: $emailOrMobile, message: $message, userGuidId: $userGuidId, token: $token, auraToken: $auraToken, userName: $userName, fullNameEn: $fullNameEn, fullNameAr: $fullNameAr, personType: $personType, emailId: $emailId, mobileNumber: $mobileNumber, preferredLang: $preferredLang, profileImg: $profileImg, isEmailVerified: $isEmailVerified, isMobileVerified: $isMobileVerified, nationalId: $nationalId, crNumber: $crNumber, expiryDate: $expiryDate, customerTypeName: $customerTypeName, isSmsNotification: $isSmsNotification, isEmailNotification: $isEmailNotification, isEmailChanged: $isEmailChanged, isMobileChanged: $isMobileChanged, isPasswordVerified: $isPasswordVerified, isMigratedUser: $isMigratedUser, faceId: $faceId, touchId: $touchId, output: $output, userGuid: $userGuid, userData: $userData, isAlertInSms: $isAlertInSms, isAlertInEmail: $isAlertInEmail, isAlertInWhatsapp: $isAlertInWhatsapp, isPrepaidActive: $isPrepaidActive, isErpCustomer: $isErpCustomer, erpCustomerId: $erpCustomerId, erpCustomerName: $erpCustomerName, firstNameEn: $firstNameEn, firstNameAr: $firstNameAr, secondNameEn: $secondNameEn, secondNameAr: $secondNameAr, thirdNameEn: $thirdNameEn, thirdNameAr: $thirdNameAr, familyNameEn: $familyNameEn, familyNameAr: $familyNameAr, ropValidation: $ropValidation, ropGsmNumber: $ropGsmNumber, isRopValidationRequired: $isRopValidationRequired, apUserData: $apUserData, isResetPassword: $isResetPassword)';
}


}

/// @nodoc
abstract mixin class _$UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$UserDataCopyWith(_UserData value, $Res Function(_UserData) _then) = __$UserDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'UserID') int userId,@JsonKey(name: 'Outmessage') String outMessage,@JsonKey(name: 'EmailOrMobile') String? emailOrMobile,@JsonKey(name: 'Message') String? message,@JsonKey(name: 'UserGuidID') String? userGuidId,@JsonKey(name: 'Token') String token,@JsonKey(name: 'AuraToken') String? auraToken,@JsonKey(name: 'UserName') String userName,@JsonKey(name: 'FullNameEn') String fullNameEn,@JsonKey(name: 'FullNameAr') String fullNameAr,@JsonKey(name: 'PersonType') String personType,@JsonKey(name: 'EmailID') String emailId,@JsonKey(name: 'MobileNumber') String mobileNumber,@JsonKey(name: 'PreffredLang') String preferredLang,@JsonKey(name: 'ProfileImg') String? profileImg,@JsonKey(name: 'IsEmailVerified') bool isEmailVerified,@JsonKey(name: 'IsMobileVerified') bool isMobileVerified,@JsonKey(name: 'NationalID') String nationalId,@JsonKey(name: 'CRNumber') String crNumber,@JsonKey(name: 'ExpiryDate') String expiryDate,@JsonKey(name: 'CustomerTypeName') String customerTypeName,@JsonKey(name: 'IsSMSNTF') bool isSmsNotification,@JsonKey(name: 'IsEmailNTF') bool isEmailNotification,@JsonKey(name: 'IsEmailChanged') bool isEmailChanged,@JsonKey(name: 'IsMobileChanged') bool isMobileChanged,@JsonKey(name: 'IsPasswordVerified') bool isPasswordVerified,@JsonKey(name: 'IsMigratedUser') bool isMigratedUser,@JsonKey(name: 'FaceID') bool faceId,@JsonKey(name: 'TouchID') bool touchId,@JsonKey(name: 'Output') bool output,@JsonKey(name: 'UserGuid') String userGuid,@JsonKey(name: 'userData') String? userData,@JsonKey(name: 'IsAlertinSMS') bool isAlertInSms,@JsonKey(name: 'IsAlertinEMAIL') bool isAlertInEmail,@JsonKey(name: 'IsAlertinWhatsapp') bool isAlertInWhatsapp,@JsonKey(name: 'IsPrepaidActive') bool isPrepaidActive,@JsonKey(name: 'IsERPCustomer') bool isErpCustomer,@JsonKey(name: 'ERPCustomerId') String erpCustomerId,@JsonKey(name: 'ERPCustomerName') String erpCustomerName,@JsonKey(name: 'FirstNameEn') String firstNameEn,@JsonKey(name: 'FirstNameAr') String firstNameAr,@JsonKey(name: 'SecondNameEn') String secondNameEn,@JsonKey(name: 'SecondNameAr') String secondNameAr,@JsonKey(name: 'ThirdNameEn') String thirdNameEn,@JsonKey(name: 'ThirdNameAr') String thirdNameAr,@JsonKey(name: 'FamilyNameEn') String familyNameEn,@JsonKey(name: 'FamilyNameAr') String familyNameAr,@JsonKey(name: 'ROPValidation') String? ropValidation,@JsonKey(name: 'ROPGsmNumber') String ropGsmNumber,@JsonKey(name: 'IsROPValidationRequired') bool isRopValidationRequired,@JsonKey(name: 'APUserData') String apUserData,@JsonKey(name: 'IsResetPassword') int isResetPassword
});




}
/// @nodoc
class __$UserDataCopyWithImpl<$Res>
    implements _$UserDataCopyWith<$Res> {
  __$UserDataCopyWithImpl(this._self, this._then);

  final _UserData _self;
  final $Res Function(_UserData) _then;

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? outMessage = null,Object? emailOrMobile = freezed,Object? message = freezed,Object? userGuidId = freezed,Object? token = null,Object? auraToken = freezed,Object? userName = null,Object? fullNameEn = null,Object? fullNameAr = null,Object? personType = null,Object? emailId = null,Object? mobileNumber = null,Object? preferredLang = null,Object? profileImg = freezed,Object? isEmailVerified = null,Object? isMobileVerified = null,Object? nationalId = null,Object? crNumber = null,Object? expiryDate = null,Object? customerTypeName = null,Object? isSmsNotification = null,Object? isEmailNotification = null,Object? isEmailChanged = null,Object? isMobileChanged = null,Object? isPasswordVerified = null,Object? isMigratedUser = null,Object? faceId = null,Object? touchId = null,Object? output = null,Object? userGuid = null,Object? userData = freezed,Object? isAlertInSms = null,Object? isAlertInEmail = null,Object? isAlertInWhatsapp = null,Object? isPrepaidActive = null,Object? isErpCustomer = null,Object? erpCustomerId = null,Object? erpCustomerName = null,Object? firstNameEn = null,Object? firstNameAr = null,Object? secondNameEn = null,Object? secondNameAr = null,Object? thirdNameEn = null,Object? thirdNameAr = null,Object? familyNameEn = null,Object? familyNameAr = null,Object? ropValidation = freezed,Object? ropGsmNumber = null,Object? isRopValidationRequired = null,Object? apUserData = null,Object? isResetPassword = null,}) {
  return _then(_UserData(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,outMessage: null == outMessage ? _self.outMessage : outMessage // ignore: cast_nullable_to_non_nullable
as String,emailOrMobile: freezed == emailOrMobile ? _self.emailOrMobile : emailOrMobile // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,userGuidId: freezed == userGuidId ? _self.userGuidId : userGuidId // ignore: cast_nullable_to_non_nullable
as String?,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,auraToken: freezed == auraToken ? _self.auraToken : auraToken // ignore: cast_nullable_to_non_nullable
as String?,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,fullNameEn: null == fullNameEn ? _self.fullNameEn : fullNameEn // ignore: cast_nullable_to_non_nullable
as String,fullNameAr: null == fullNameAr ? _self.fullNameAr : fullNameAr // ignore: cast_nullable_to_non_nullable
as String,personType: null == personType ? _self.personType : personType // ignore: cast_nullable_to_non_nullable
as String,emailId: null == emailId ? _self.emailId : emailId // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,preferredLang: null == preferredLang ? _self.preferredLang : preferredLang // ignore: cast_nullable_to_non_nullable
as String,profileImg: freezed == profileImg ? _self.profileImg : profileImg // ignore: cast_nullable_to_non_nullable
as String?,isEmailVerified: null == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as bool,isMobileVerified: null == isMobileVerified ? _self.isMobileVerified : isMobileVerified // ignore: cast_nullable_to_non_nullable
as bool,nationalId: null == nationalId ? _self.nationalId : nationalId // ignore: cast_nullable_to_non_nullable
as String,crNumber: null == crNumber ? _self.crNumber : crNumber // ignore: cast_nullable_to_non_nullable
as String,expiryDate: null == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as String,customerTypeName: null == customerTypeName ? _self.customerTypeName : customerTypeName // ignore: cast_nullable_to_non_nullable
as String,isSmsNotification: null == isSmsNotification ? _self.isSmsNotification : isSmsNotification // ignore: cast_nullable_to_non_nullable
as bool,isEmailNotification: null == isEmailNotification ? _self.isEmailNotification : isEmailNotification // ignore: cast_nullable_to_non_nullable
as bool,isEmailChanged: null == isEmailChanged ? _self.isEmailChanged : isEmailChanged // ignore: cast_nullable_to_non_nullable
as bool,isMobileChanged: null == isMobileChanged ? _self.isMobileChanged : isMobileChanged // ignore: cast_nullable_to_non_nullable
as bool,isPasswordVerified: null == isPasswordVerified ? _self.isPasswordVerified : isPasswordVerified // ignore: cast_nullable_to_non_nullable
as bool,isMigratedUser: null == isMigratedUser ? _self.isMigratedUser : isMigratedUser // ignore: cast_nullable_to_non_nullable
as bool,faceId: null == faceId ? _self.faceId : faceId // ignore: cast_nullable_to_non_nullable
as bool,touchId: null == touchId ? _self.touchId : touchId // ignore: cast_nullable_to_non_nullable
as bool,output: null == output ? _self.output : output // ignore: cast_nullable_to_non_nullable
as bool,userGuid: null == userGuid ? _self.userGuid : userGuid // ignore: cast_nullable_to_non_nullable
as String,userData: freezed == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as String?,isAlertInSms: null == isAlertInSms ? _self.isAlertInSms : isAlertInSms // ignore: cast_nullable_to_non_nullable
as bool,isAlertInEmail: null == isAlertInEmail ? _self.isAlertInEmail : isAlertInEmail // ignore: cast_nullable_to_non_nullable
as bool,isAlertInWhatsapp: null == isAlertInWhatsapp ? _self.isAlertInWhatsapp : isAlertInWhatsapp // ignore: cast_nullable_to_non_nullable
as bool,isPrepaidActive: null == isPrepaidActive ? _self.isPrepaidActive : isPrepaidActive // ignore: cast_nullable_to_non_nullable
as bool,isErpCustomer: null == isErpCustomer ? _self.isErpCustomer : isErpCustomer // ignore: cast_nullable_to_non_nullable
as bool,erpCustomerId: null == erpCustomerId ? _self.erpCustomerId : erpCustomerId // ignore: cast_nullable_to_non_nullable
as String,erpCustomerName: null == erpCustomerName ? _self.erpCustomerName : erpCustomerName // ignore: cast_nullable_to_non_nullable
as String,firstNameEn: null == firstNameEn ? _self.firstNameEn : firstNameEn // ignore: cast_nullable_to_non_nullable
as String,firstNameAr: null == firstNameAr ? _self.firstNameAr : firstNameAr // ignore: cast_nullable_to_non_nullable
as String,secondNameEn: null == secondNameEn ? _self.secondNameEn : secondNameEn // ignore: cast_nullable_to_non_nullable
as String,secondNameAr: null == secondNameAr ? _self.secondNameAr : secondNameAr // ignore: cast_nullable_to_non_nullable
as String,thirdNameEn: null == thirdNameEn ? _self.thirdNameEn : thirdNameEn // ignore: cast_nullable_to_non_nullable
as String,thirdNameAr: null == thirdNameAr ? _self.thirdNameAr : thirdNameAr // ignore: cast_nullable_to_non_nullable
as String,familyNameEn: null == familyNameEn ? _self.familyNameEn : familyNameEn // ignore: cast_nullable_to_non_nullable
as String,familyNameAr: null == familyNameAr ? _self.familyNameAr : familyNameAr // ignore: cast_nullable_to_non_nullable
as String,ropValidation: freezed == ropValidation ? _self.ropValidation : ropValidation // ignore: cast_nullable_to_non_nullable
as String?,ropGsmNumber: null == ropGsmNumber ? _self.ropGsmNumber : ropGsmNumber // ignore: cast_nullable_to_non_nullable
as String,isRopValidationRequired: null == isRopValidationRequired ? _self.isRopValidationRequired : isRopValidationRequired // ignore: cast_nullable_to_non_nullable
as bool,apUserData: null == apUserData ? _self.apUserData : apUserData // ignore: cast_nullable_to_non_nullable
as String,isResetPassword: null == isResetPassword ? _self.isResetPassword : isResetPassword // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
