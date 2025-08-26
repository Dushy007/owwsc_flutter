// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_profile_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateUserProfileResponse {

@JsonKey(name: 'Status') String get status;@JsonKey(name: 'StatusCode') int get statusCode;@JsonKey(name: 'Data') UserData get data;
/// Create a copy of UpdateUserProfileResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateUserProfileResponseCopyWith<UpdateUserProfileResponse> get copyWith => _$UpdateUserProfileResponseCopyWithImpl<UpdateUserProfileResponse>(this as UpdateUserProfileResponse, _$identity);

  /// Serializes this UpdateUserProfileResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateUserProfileResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,statusCode,data);

@override
String toString() {
  return 'UpdateUserProfileResponse(status: $status, statusCode: $statusCode, data: $data)';
}


}

/// @nodoc
abstract mixin class $UpdateUserProfileResponseCopyWith<$Res>  {
  factory $UpdateUserProfileResponseCopyWith(UpdateUserProfileResponse value, $Res Function(UpdateUserProfileResponse) _then) = _$UpdateUserProfileResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Status') String status,@JsonKey(name: 'StatusCode') int statusCode,@JsonKey(name: 'Data') UserData data
});


$UserDataCopyWith<$Res> get data;

}
/// @nodoc
class _$UpdateUserProfileResponseCopyWithImpl<$Res>
    implements $UpdateUserProfileResponseCopyWith<$Res> {
  _$UpdateUserProfileResponseCopyWithImpl(this._self, this._then);

  final UpdateUserProfileResponse _self;
  final $Res Function(UpdateUserProfileResponse) _then;

/// Create a copy of UpdateUserProfileResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? statusCode = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserData,
  ));
}
/// Create a copy of UpdateUserProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataCopyWith<$Res> get data {
  
  return $UserDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [UpdateUserProfileResponse].
extension UpdateUserProfileResponsePatterns on UpdateUserProfileResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateUserProfileResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateUserProfileResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateUserProfileResponse value)  $default,){
final _that = this;
switch (_that) {
case _UpdateUserProfileResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateUserProfileResponse value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateUserProfileResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Status')  String status, @JsonKey(name: 'StatusCode')  int statusCode, @JsonKey(name: 'Data')  UserData data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateUserProfileResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Status')  String status, @JsonKey(name: 'StatusCode')  int statusCode, @JsonKey(name: 'Data')  UserData data)  $default,) {final _that = this;
switch (_that) {
case _UpdateUserProfileResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Status')  String status, @JsonKey(name: 'StatusCode')  int statusCode, @JsonKey(name: 'Data')  UserData data)?  $default,) {final _that = this;
switch (_that) {
case _UpdateUserProfileResponse() when $default != null:
return $default(_that.status,_that.statusCode,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateUserProfileResponse implements UpdateUserProfileResponse {
  const _UpdateUserProfileResponse({@JsonKey(name: 'Status') required this.status, @JsonKey(name: 'StatusCode') required this.statusCode, @JsonKey(name: 'Data') required this.data});
  factory _UpdateUserProfileResponse.fromJson(Map<String, dynamic> json) => _$UpdateUserProfileResponseFromJson(json);

@override@JsonKey(name: 'Status') final  String status;
@override@JsonKey(name: 'StatusCode') final  int statusCode;
@override@JsonKey(name: 'Data') final  UserData data;

/// Create a copy of UpdateUserProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateUserProfileResponseCopyWith<_UpdateUserProfileResponse> get copyWith => __$UpdateUserProfileResponseCopyWithImpl<_UpdateUserProfileResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateUserProfileResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateUserProfileResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,statusCode,data);

@override
String toString() {
  return 'UpdateUserProfileResponse(status: $status, statusCode: $statusCode, data: $data)';
}


}

/// @nodoc
abstract mixin class _$UpdateUserProfileResponseCopyWith<$Res> implements $UpdateUserProfileResponseCopyWith<$Res> {
  factory _$UpdateUserProfileResponseCopyWith(_UpdateUserProfileResponse value, $Res Function(_UpdateUserProfileResponse) _then) = __$UpdateUserProfileResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Status') String status,@JsonKey(name: 'StatusCode') int statusCode,@JsonKey(name: 'Data') UserData data
});


@override $UserDataCopyWith<$Res> get data;

}
/// @nodoc
class __$UpdateUserProfileResponseCopyWithImpl<$Res>
    implements _$UpdateUserProfileResponseCopyWith<$Res> {
  __$UpdateUserProfileResponseCopyWithImpl(this._self, this._then);

  final _UpdateUserProfileResponse _self;
  final $Res Function(_UpdateUserProfileResponse) _then;

/// Create a copy of UpdateUserProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? statusCode = null,Object? data = null,}) {
  return _then(_UpdateUserProfileResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserData,
  ));
}

/// Create a copy of UpdateUserProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataCopyWith<$Res> get data {
  
  return $UserDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$UserData {

@JsonKey(name: 'UserID') int get userID;@JsonKey(name: 'Outmessage') String? get outmessage;@JsonKey(name: 'EmailOrMobile') String? get emailOrMobile;@JsonKey(name: 'Message') String? get message;@JsonKey(name: 'UserGuidID') String? get userGuidID;@JsonKey(name: 'Token') String get token;@JsonKey(name: 'AuraToken') String? get auraToken;@JsonKey(name: 'UserName') String get userName;@JsonKey(name: 'FullNameEn') String get fullNameEn;@JsonKey(name: 'FullNameAr') String get fullNameAr;@JsonKey(name: 'PersonType') String get personType;@JsonKey(name: 'EmailID') String get emailID;@JsonKey(name: 'MobileNumber') String get mobileNumber;@JsonKey(name: 'PreffredLang') String get preferredLang;@JsonKey(name: 'ProfileImg') String? get profileImg;@JsonKey(name: 'IsEmailVerified') bool get isEmailVerified;@JsonKey(name: 'IsMobileVerified') bool get isMobileVerified;@JsonKey(name: 'NationalID') String get nationalID;@JsonKey(name: 'CRNumber') String get crNumber;@JsonKey(name: 'ExpiryDate') String get expiryDate;@JsonKey(name: 'CustomerTypeName') String get customerTypeName;@JsonKey(name: 'IsSMSNTF') bool get isSMSNTF;@JsonKey(name: 'IsEmailNTF') bool get isEmailNTF;@JsonKey(name: 'IsEmailChanged') bool get isEmailChanged;@JsonKey(name: 'IsMobileChanged') bool get isMobileChanged;@JsonKey(name: 'IsPasswordVerified') bool get isPasswordVerified;@JsonKey(name: 'IsMigratedUser') bool get isMigratedUser;@JsonKey(name: 'FaceID') bool get faceID;@JsonKey(name: 'TouchID') bool get touchID;@JsonKey(name: 'Output') bool get output;@JsonKey(name: 'UserGuid') String get userGuid;@JsonKey(name: 'userData') String? get userData;@JsonKey(name: 'IsAlertinSMS') bool get isAlertinSMS;@JsonKey(name: 'IsAlertinEMAIL') bool get isAlertinEMAIL;@JsonKey(name: 'IsAlertinWhatsapp') bool get isAlertinWhatsapp;@JsonKey(name: 'IsPrepaidActive') bool get isPrepaidActive;@JsonKey(name: 'IsERPCustomer') bool get isERPCustomer;@JsonKey(name: 'ERPCustomerId') String? get erpCustomerId;@JsonKey(name: 'ERPCustomerName') String? get erpCustomerName;@JsonKey(name: 'FirstNameEn') String get firstNameEn;@JsonKey(name: 'FirstNameAr') String get firstNameAr;@JsonKey(name: 'SecondNameEn') String get secondNameEn;@JsonKey(name: 'SecondNameAr') String get secondNameAr;@JsonKey(name: 'ThirdNameEn') String get thirdNameEn;@JsonKey(name: 'ThirdNameAr') String get thirdNameAr;@JsonKey(name: 'FamilyNameEn') String get familyNameEn;@JsonKey(name: 'FamilyNameAr') String get familyNameAr;@JsonKey(name: 'ROPValidation') String? get ropValidation;@JsonKey(name: 'ROPGsmNumber') String get ropGsmNumber;@JsonKey(name: 'IsROPValidationRequired') bool get isROPValidationRequired;@JsonKey(name: 'APUserData') String get apUserData;@JsonKey(name: 'IsResetPassword') int get isResetPassword;@JsonKey(name: 'NtfReqFlag') bool get ntfReqFlag;
/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDataCopyWith<UserData> get copyWith => _$UserDataCopyWithImpl<UserData>(this as UserData, _$identity);

  /// Serializes this UserData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserData&&(identical(other.userID, userID) || other.userID == userID)&&(identical(other.outmessage, outmessage) || other.outmessage == outmessage)&&(identical(other.emailOrMobile, emailOrMobile) || other.emailOrMobile == emailOrMobile)&&(identical(other.message, message) || other.message == message)&&(identical(other.userGuidID, userGuidID) || other.userGuidID == userGuidID)&&(identical(other.token, token) || other.token == token)&&(identical(other.auraToken, auraToken) || other.auraToken == auraToken)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.fullNameEn, fullNameEn) || other.fullNameEn == fullNameEn)&&(identical(other.fullNameAr, fullNameAr) || other.fullNameAr == fullNameAr)&&(identical(other.personType, personType) || other.personType == personType)&&(identical(other.emailID, emailID) || other.emailID == emailID)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.preferredLang, preferredLang) || other.preferredLang == preferredLang)&&(identical(other.profileImg, profileImg) || other.profileImg == profileImg)&&(identical(other.isEmailVerified, isEmailVerified) || other.isEmailVerified == isEmailVerified)&&(identical(other.isMobileVerified, isMobileVerified) || other.isMobileVerified == isMobileVerified)&&(identical(other.nationalID, nationalID) || other.nationalID == nationalID)&&(identical(other.crNumber, crNumber) || other.crNumber == crNumber)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.customerTypeName, customerTypeName) || other.customerTypeName == customerTypeName)&&(identical(other.isSMSNTF, isSMSNTF) || other.isSMSNTF == isSMSNTF)&&(identical(other.isEmailNTF, isEmailNTF) || other.isEmailNTF == isEmailNTF)&&(identical(other.isEmailChanged, isEmailChanged) || other.isEmailChanged == isEmailChanged)&&(identical(other.isMobileChanged, isMobileChanged) || other.isMobileChanged == isMobileChanged)&&(identical(other.isPasswordVerified, isPasswordVerified) || other.isPasswordVerified == isPasswordVerified)&&(identical(other.isMigratedUser, isMigratedUser) || other.isMigratedUser == isMigratedUser)&&(identical(other.faceID, faceID) || other.faceID == faceID)&&(identical(other.touchID, touchID) || other.touchID == touchID)&&(identical(other.output, output) || other.output == output)&&(identical(other.userGuid, userGuid) || other.userGuid == userGuid)&&(identical(other.userData, userData) || other.userData == userData)&&(identical(other.isAlertinSMS, isAlertinSMS) || other.isAlertinSMS == isAlertinSMS)&&(identical(other.isAlertinEMAIL, isAlertinEMAIL) || other.isAlertinEMAIL == isAlertinEMAIL)&&(identical(other.isAlertinWhatsapp, isAlertinWhatsapp) || other.isAlertinWhatsapp == isAlertinWhatsapp)&&(identical(other.isPrepaidActive, isPrepaidActive) || other.isPrepaidActive == isPrepaidActive)&&(identical(other.isERPCustomer, isERPCustomer) || other.isERPCustomer == isERPCustomer)&&(identical(other.erpCustomerId, erpCustomerId) || other.erpCustomerId == erpCustomerId)&&(identical(other.erpCustomerName, erpCustomerName) || other.erpCustomerName == erpCustomerName)&&(identical(other.firstNameEn, firstNameEn) || other.firstNameEn == firstNameEn)&&(identical(other.firstNameAr, firstNameAr) || other.firstNameAr == firstNameAr)&&(identical(other.secondNameEn, secondNameEn) || other.secondNameEn == secondNameEn)&&(identical(other.secondNameAr, secondNameAr) || other.secondNameAr == secondNameAr)&&(identical(other.thirdNameEn, thirdNameEn) || other.thirdNameEn == thirdNameEn)&&(identical(other.thirdNameAr, thirdNameAr) || other.thirdNameAr == thirdNameAr)&&(identical(other.familyNameEn, familyNameEn) || other.familyNameEn == familyNameEn)&&(identical(other.familyNameAr, familyNameAr) || other.familyNameAr == familyNameAr)&&(identical(other.ropValidation, ropValidation) || other.ropValidation == ropValidation)&&(identical(other.ropGsmNumber, ropGsmNumber) || other.ropGsmNumber == ropGsmNumber)&&(identical(other.isROPValidationRequired, isROPValidationRequired) || other.isROPValidationRequired == isROPValidationRequired)&&(identical(other.apUserData, apUserData) || other.apUserData == apUserData)&&(identical(other.isResetPassword, isResetPassword) || other.isResetPassword == isResetPassword)&&(identical(other.ntfReqFlag, ntfReqFlag) || other.ntfReqFlag == ntfReqFlag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,userID,outmessage,emailOrMobile,message,userGuidID,token,auraToken,userName,fullNameEn,fullNameAr,personType,emailID,mobileNumber,preferredLang,profileImg,isEmailVerified,isMobileVerified,nationalID,crNumber,expiryDate,customerTypeName,isSMSNTF,isEmailNTF,isEmailChanged,isMobileChanged,isPasswordVerified,isMigratedUser,faceID,touchID,output,userGuid,userData,isAlertinSMS,isAlertinEMAIL,isAlertinWhatsapp,isPrepaidActive,isERPCustomer,erpCustomerId,erpCustomerName,firstNameEn,firstNameAr,secondNameEn,secondNameAr,thirdNameEn,thirdNameAr,familyNameEn,familyNameAr,ropValidation,ropGsmNumber,isROPValidationRequired,apUserData,isResetPassword,ntfReqFlag]);

@override
String toString() {
  return 'UserData(userID: $userID, outmessage: $outmessage, emailOrMobile: $emailOrMobile, message: $message, userGuidID: $userGuidID, token: $token, auraToken: $auraToken, userName: $userName, fullNameEn: $fullNameEn, fullNameAr: $fullNameAr, personType: $personType, emailID: $emailID, mobileNumber: $mobileNumber, preferredLang: $preferredLang, profileImg: $profileImg, isEmailVerified: $isEmailVerified, isMobileVerified: $isMobileVerified, nationalID: $nationalID, crNumber: $crNumber, expiryDate: $expiryDate, customerTypeName: $customerTypeName, isSMSNTF: $isSMSNTF, isEmailNTF: $isEmailNTF, isEmailChanged: $isEmailChanged, isMobileChanged: $isMobileChanged, isPasswordVerified: $isPasswordVerified, isMigratedUser: $isMigratedUser, faceID: $faceID, touchID: $touchID, output: $output, userGuid: $userGuid, userData: $userData, isAlertinSMS: $isAlertinSMS, isAlertinEMAIL: $isAlertinEMAIL, isAlertinWhatsapp: $isAlertinWhatsapp, isPrepaidActive: $isPrepaidActive, isERPCustomer: $isERPCustomer, erpCustomerId: $erpCustomerId, erpCustomerName: $erpCustomerName, firstNameEn: $firstNameEn, firstNameAr: $firstNameAr, secondNameEn: $secondNameEn, secondNameAr: $secondNameAr, thirdNameEn: $thirdNameEn, thirdNameAr: $thirdNameAr, familyNameEn: $familyNameEn, familyNameAr: $familyNameAr, ropValidation: $ropValidation, ropGsmNumber: $ropGsmNumber, isROPValidationRequired: $isROPValidationRequired, apUserData: $apUserData, isResetPassword: $isResetPassword, ntfReqFlag: $ntfReqFlag)';
}


}

/// @nodoc
abstract mixin class $UserDataCopyWith<$Res>  {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) _then) = _$UserDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'UserID') int userID,@JsonKey(name: 'Outmessage') String? outmessage,@JsonKey(name: 'EmailOrMobile') String? emailOrMobile,@JsonKey(name: 'Message') String? message,@JsonKey(name: 'UserGuidID') String? userGuidID,@JsonKey(name: 'Token') String token,@JsonKey(name: 'AuraToken') String? auraToken,@JsonKey(name: 'UserName') String userName,@JsonKey(name: 'FullNameEn') String fullNameEn,@JsonKey(name: 'FullNameAr') String fullNameAr,@JsonKey(name: 'PersonType') String personType,@JsonKey(name: 'EmailID') String emailID,@JsonKey(name: 'MobileNumber') String mobileNumber,@JsonKey(name: 'PreffredLang') String preferredLang,@JsonKey(name: 'ProfileImg') String? profileImg,@JsonKey(name: 'IsEmailVerified') bool isEmailVerified,@JsonKey(name: 'IsMobileVerified') bool isMobileVerified,@JsonKey(name: 'NationalID') String nationalID,@JsonKey(name: 'CRNumber') String crNumber,@JsonKey(name: 'ExpiryDate') String expiryDate,@JsonKey(name: 'CustomerTypeName') String customerTypeName,@JsonKey(name: 'IsSMSNTF') bool isSMSNTF,@JsonKey(name: 'IsEmailNTF') bool isEmailNTF,@JsonKey(name: 'IsEmailChanged') bool isEmailChanged,@JsonKey(name: 'IsMobileChanged') bool isMobileChanged,@JsonKey(name: 'IsPasswordVerified') bool isPasswordVerified,@JsonKey(name: 'IsMigratedUser') bool isMigratedUser,@JsonKey(name: 'FaceID') bool faceID,@JsonKey(name: 'TouchID') bool touchID,@JsonKey(name: 'Output') bool output,@JsonKey(name: 'UserGuid') String userGuid,@JsonKey(name: 'userData') String? userData,@JsonKey(name: 'IsAlertinSMS') bool isAlertinSMS,@JsonKey(name: 'IsAlertinEMAIL') bool isAlertinEMAIL,@JsonKey(name: 'IsAlertinWhatsapp') bool isAlertinWhatsapp,@JsonKey(name: 'IsPrepaidActive') bool isPrepaidActive,@JsonKey(name: 'IsERPCustomer') bool isERPCustomer,@JsonKey(name: 'ERPCustomerId') String? erpCustomerId,@JsonKey(name: 'ERPCustomerName') String? erpCustomerName,@JsonKey(name: 'FirstNameEn') String firstNameEn,@JsonKey(name: 'FirstNameAr') String firstNameAr,@JsonKey(name: 'SecondNameEn') String secondNameEn,@JsonKey(name: 'SecondNameAr') String secondNameAr,@JsonKey(name: 'ThirdNameEn') String thirdNameEn,@JsonKey(name: 'ThirdNameAr') String thirdNameAr,@JsonKey(name: 'FamilyNameEn') String familyNameEn,@JsonKey(name: 'FamilyNameAr') String familyNameAr,@JsonKey(name: 'ROPValidation') String? ropValidation,@JsonKey(name: 'ROPGsmNumber') String ropGsmNumber,@JsonKey(name: 'IsROPValidationRequired') bool isROPValidationRequired,@JsonKey(name: 'APUserData') String apUserData,@JsonKey(name: 'IsResetPassword') int isResetPassword,@JsonKey(name: 'NtfReqFlag') bool ntfReqFlag
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
@pragma('vm:prefer-inline') @override $Res call({Object? userID = null,Object? outmessage = freezed,Object? emailOrMobile = freezed,Object? message = freezed,Object? userGuidID = freezed,Object? token = null,Object? auraToken = freezed,Object? userName = null,Object? fullNameEn = null,Object? fullNameAr = null,Object? personType = null,Object? emailID = null,Object? mobileNumber = null,Object? preferredLang = null,Object? profileImg = freezed,Object? isEmailVerified = null,Object? isMobileVerified = null,Object? nationalID = null,Object? crNumber = null,Object? expiryDate = null,Object? customerTypeName = null,Object? isSMSNTF = null,Object? isEmailNTF = null,Object? isEmailChanged = null,Object? isMobileChanged = null,Object? isPasswordVerified = null,Object? isMigratedUser = null,Object? faceID = null,Object? touchID = null,Object? output = null,Object? userGuid = null,Object? userData = freezed,Object? isAlertinSMS = null,Object? isAlertinEMAIL = null,Object? isAlertinWhatsapp = null,Object? isPrepaidActive = null,Object? isERPCustomer = null,Object? erpCustomerId = freezed,Object? erpCustomerName = freezed,Object? firstNameEn = null,Object? firstNameAr = null,Object? secondNameEn = null,Object? secondNameAr = null,Object? thirdNameEn = null,Object? thirdNameAr = null,Object? familyNameEn = null,Object? familyNameAr = null,Object? ropValidation = freezed,Object? ropGsmNumber = null,Object? isROPValidationRequired = null,Object? apUserData = null,Object? isResetPassword = null,Object? ntfReqFlag = null,}) {
  return _then(_self.copyWith(
userID: null == userID ? _self.userID : userID // ignore: cast_nullable_to_non_nullable
as int,outmessage: freezed == outmessage ? _self.outmessage : outmessage // ignore: cast_nullable_to_non_nullable
as String?,emailOrMobile: freezed == emailOrMobile ? _self.emailOrMobile : emailOrMobile // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,userGuidID: freezed == userGuidID ? _self.userGuidID : userGuidID // ignore: cast_nullable_to_non_nullable
as String?,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,auraToken: freezed == auraToken ? _self.auraToken : auraToken // ignore: cast_nullable_to_non_nullable
as String?,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,fullNameEn: null == fullNameEn ? _self.fullNameEn : fullNameEn // ignore: cast_nullable_to_non_nullable
as String,fullNameAr: null == fullNameAr ? _self.fullNameAr : fullNameAr // ignore: cast_nullable_to_non_nullable
as String,personType: null == personType ? _self.personType : personType // ignore: cast_nullable_to_non_nullable
as String,emailID: null == emailID ? _self.emailID : emailID // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,preferredLang: null == preferredLang ? _self.preferredLang : preferredLang // ignore: cast_nullable_to_non_nullable
as String,profileImg: freezed == profileImg ? _self.profileImg : profileImg // ignore: cast_nullable_to_non_nullable
as String?,isEmailVerified: null == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as bool,isMobileVerified: null == isMobileVerified ? _self.isMobileVerified : isMobileVerified // ignore: cast_nullable_to_non_nullable
as bool,nationalID: null == nationalID ? _self.nationalID : nationalID // ignore: cast_nullable_to_non_nullable
as String,crNumber: null == crNumber ? _self.crNumber : crNumber // ignore: cast_nullable_to_non_nullable
as String,expiryDate: null == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as String,customerTypeName: null == customerTypeName ? _self.customerTypeName : customerTypeName // ignore: cast_nullable_to_non_nullable
as String,isSMSNTF: null == isSMSNTF ? _self.isSMSNTF : isSMSNTF // ignore: cast_nullable_to_non_nullable
as bool,isEmailNTF: null == isEmailNTF ? _self.isEmailNTF : isEmailNTF // ignore: cast_nullable_to_non_nullable
as bool,isEmailChanged: null == isEmailChanged ? _self.isEmailChanged : isEmailChanged // ignore: cast_nullable_to_non_nullable
as bool,isMobileChanged: null == isMobileChanged ? _self.isMobileChanged : isMobileChanged // ignore: cast_nullable_to_non_nullable
as bool,isPasswordVerified: null == isPasswordVerified ? _self.isPasswordVerified : isPasswordVerified // ignore: cast_nullable_to_non_nullable
as bool,isMigratedUser: null == isMigratedUser ? _self.isMigratedUser : isMigratedUser // ignore: cast_nullable_to_non_nullable
as bool,faceID: null == faceID ? _self.faceID : faceID // ignore: cast_nullable_to_non_nullable
as bool,touchID: null == touchID ? _self.touchID : touchID // ignore: cast_nullable_to_non_nullable
as bool,output: null == output ? _self.output : output // ignore: cast_nullable_to_non_nullable
as bool,userGuid: null == userGuid ? _self.userGuid : userGuid // ignore: cast_nullable_to_non_nullable
as String,userData: freezed == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as String?,isAlertinSMS: null == isAlertinSMS ? _self.isAlertinSMS : isAlertinSMS // ignore: cast_nullable_to_non_nullable
as bool,isAlertinEMAIL: null == isAlertinEMAIL ? _self.isAlertinEMAIL : isAlertinEMAIL // ignore: cast_nullable_to_non_nullable
as bool,isAlertinWhatsapp: null == isAlertinWhatsapp ? _self.isAlertinWhatsapp : isAlertinWhatsapp // ignore: cast_nullable_to_non_nullable
as bool,isPrepaidActive: null == isPrepaidActive ? _self.isPrepaidActive : isPrepaidActive // ignore: cast_nullable_to_non_nullable
as bool,isERPCustomer: null == isERPCustomer ? _self.isERPCustomer : isERPCustomer // ignore: cast_nullable_to_non_nullable
as bool,erpCustomerId: freezed == erpCustomerId ? _self.erpCustomerId : erpCustomerId // ignore: cast_nullable_to_non_nullable
as String?,erpCustomerName: freezed == erpCustomerName ? _self.erpCustomerName : erpCustomerName // ignore: cast_nullable_to_non_nullable
as String?,firstNameEn: null == firstNameEn ? _self.firstNameEn : firstNameEn // ignore: cast_nullable_to_non_nullable
as String,firstNameAr: null == firstNameAr ? _self.firstNameAr : firstNameAr // ignore: cast_nullable_to_non_nullable
as String,secondNameEn: null == secondNameEn ? _self.secondNameEn : secondNameEn // ignore: cast_nullable_to_non_nullable
as String,secondNameAr: null == secondNameAr ? _self.secondNameAr : secondNameAr // ignore: cast_nullable_to_non_nullable
as String,thirdNameEn: null == thirdNameEn ? _self.thirdNameEn : thirdNameEn // ignore: cast_nullable_to_non_nullable
as String,thirdNameAr: null == thirdNameAr ? _self.thirdNameAr : thirdNameAr // ignore: cast_nullable_to_non_nullable
as String,familyNameEn: null == familyNameEn ? _self.familyNameEn : familyNameEn // ignore: cast_nullable_to_non_nullable
as String,familyNameAr: null == familyNameAr ? _self.familyNameAr : familyNameAr // ignore: cast_nullable_to_non_nullable
as String,ropValidation: freezed == ropValidation ? _self.ropValidation : ropValidation // ignore: cast_nullable_to_non_nullable
as String?,ropGsmNumber: null == ropGsmNumber ? _self.ropGsmNumber : ropGsmNumber // ignore: cast_nullable_to_non_nullable
as String,isROPValidationRequired: null == isROPValidationRequired ? _self.isROPValidationRequired : isROPValidationRequired // ignore: cast_nullable_to_non_nullable
as bool,apUserData: null == apUserData ? _self.apUserData : apUserData // ignore: cast_nullable_to_non_nullable
as String,isResetPassword: null == isResetPassword ? _self.isResetPassword : isResetPassword // ignore: cast_nullable_to_non_nullable
as int,ntfReqFlag: null == ntfReqFlag ? _self.ntfReqFlag : ntfReqFlag // ignore: cast_nullable_to_non_nullable
as bool,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'UserID')  int userID, @JsonKey(name: 'Outmessage')  String? outmessage, @JsonKey(name: 'EmailOrMobile')  String? emailOrMobile, @JsonKey(name: 'Message')  String? message, @JsonKey(name: 'UserGuidID')  String? userGuidID, @JsonKey(name: 'Token')  String token, @JsonKey(name: 'AuraToken')  String? auraToken, @JsonKey(name: 'UserName')  String userName, @JsonKey(name: 'FullNameEn')  String fullNameEn, @JsonKey(name: 'FullNameAr')  String fullNameAr, @JsonKey(name: 'PersonType')  String personType, @JsonKey(name: 'EmailID')  String emailID, @JsonKey(name: 'MobileNumber')  String mobileNumber, @JsonKey(name: 'PreffredLang')  String preferredLang, @JsonKey(name: 'ProfileImg')  String? profileImg, @JsonKey(name: 'IsEmailVerified')  bool isEmailVerified, @JsonKey(name: 'IsMobileVerified')  bool isMobileVerified, @JsonKey(name: 'NationalID')  String nationalID, @JsonKey(name: 'CRNumber')  String crNumber, @JsonKey(name: 'ExpiryDate')  String expiryDate, @JsonKey(name: 'CustomerTypeName')  String customerTypeName, @JsonKey(name: 'IsSMSNTF')  bool isSMSNTF, @JsonKey(name: 'IsEmailNTF')  bool isEmailNTF, @JsonKey(name: 'IsEmailChanged')  bool isEmailChanged, @JsonKey(name: 'IsMobileChanged')  bool isMobileChanged, @JsonKey(name: 'IsPasswordVerified')  bool isPasswordVerified, @JsonKey(name: 'IsMigratedUser')  bool isMigratedUser, @JsonKey(name: 'FaceID')  bool faceID, @JsonKey(name: 'TouchID')  bool touchID, @JsonKey(name: 'Output')  bool output, @JsonKey(name: 'UserGuid')  String userGuid, @JsonKey(name: 'userData')  String? userData, @JsonKey(name: 'IsAlertinSMS')  bool isAlertinSMS, @JsonKey(name: 'IsAlertinEMAIL')  bool isAlertinEMAIL, @JsonKey(name: 'IsAlertinWhatsapp')  bool isAlertinWhatsapp, @JsonKey(name: 'IsPrepaidActive')  bool isPrepaidActive, @JsonKey(name: 'IsERPCustomer')  bool isERPCustomer, @JsonKey(name: 'ERPCustomerId')  String? erpCustomerId, @JsonKey(name: 'ERPCustomerName')  String? erpCustomerName, @JsonKey(name: 'FirstNameEn')  String firstNameEn, @JsonKey(name: 'FirstNameAr')  String firstNameAr, @JsonKey(name: 'SecondNameEn')  String secondNameEn, @JsonKey(name: 'SecondNameAr')  String secondNameAr, @JsonKey(name: 'ThirdNameEn')  String thirdNameEn, @JsonKey(name: 'ThirdNameAr')  String thirdNameAr, @JsonKey(name: 'FamilyNameEn')  String familyNameEn, @JsonKey(name: 'FamilyNameAr')  String familyNameAr, @JsonKey(name: 'ROPValidation')  String? ropValidation, @JsonKey(name: 'ROPGsmNumber')  String ropGsmNumber, @JsonKey(name: 'IsROPValidationRequired')  bool isROPValidationRequired, @JsonKey(name: 'APUserData')  String apUserData, @JsonKey(name: 'IsResetPassword')  int isResetPassword, @JsonKey(name: 'NtfReqFlag')  bool ntfReqFlag)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserData() when $default != null:
return $default(_that.userID,_that.outmessage,_that.emailOrMobile,_that.message,_that.userGuidID,_that.token,_that.auraToken,_that.userName,_that.fullNameEn,_that.fullNameAr,_that.personType,_that.emailID,_that.mobileNumber,_that.preferredLang,_that.profileImg,_that.isEmailVerified,_that.isMobileVerified,_that.nationalID,_that.crNumber,_that.expiryDate,_that.customerTypeName,_that.isSMSNTF,_that.isEmailNTF,_that.isEmailChanged,_that.isMobileChanged,_that.isPasswordVerified,_that.isMigratedUser,_that.faceID,_that.touchID,_that.output,_that.userGuid,_that.userData,_that.isAlertinSMS,_that.isAlertinEMAIL,_that.isAlertinWhatsapp,_that.isPrepaidActive,_that.isERPCustomer,_that.erpCustomerId,_that.erpCustomerName,_that.firstNameEn,_that.firstNameAr,_that.secondNameEn,_that.secondNameAr,_that.thirdNameEn,_that.thirdNameAr,_that.familyNameEn,_that.familyNameAr,_that.ropValidation,_that.ropGsmNumber,_that.isROPValidationRequired,_that.apUserData,_that.isResetPassword,_that.ntfReqFlag);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'UserID')  int userID, @JsonKey(name: 'Outmessage')  String? outmessage, @JsonKey(name: 'EmailOrMobile')  String? emailOrMobile, @JsonKey(name: 'Message')  String? message, @JsonKey(name: 'UserGuidID')  String? userGuidID, @JsonKey(name: 'Token')  String token, @JsonKey(name: 'AuraToken')  String? auraToken, @JsonKey(name: 'UserName')  String userName, @JsonKey(name: 'FullNameEn')  String fullNameEn, @JsonKey(name: 'FullNameAr')  String fullNameAr, @JsonKey(name: 'PersonType')  String personType, @JsonKey(name: 'EmailID')  String emailID, @JsonKey(name: 'MobileNumber')  String mobileNumber, @JsonKey(name: 'PreffredLang')  String preferredLang, @JsonKey(name: 'ProfileImg')  String? profileImg, @JsonKey(name: 'IsEmailVerified')  bool isEmailVerified, @JsonKey(name: 'IsMobileVerified')  bool isMobileVerified, @JsonKey(name: 'NationalID')  String nationalID, @JsonKey(name: 'CRNumber')  String crNumber, @JsonKey(name: 'ExpiryDate')  String expiryDate, @JsonKey(name: 'CustomerTypeName')  String customerTypeName, @JsonKey(name: 'IsSMSNTF')  bool isSMSNTF, @JsonKey(name: 'IsEmailNTF')  bool isEmailNTF, @JsonKey(name: 'IsEmailChanged')  bool isEmailChanged, @JsonKey(name: 'IsMobileChanged')  bool isMobileChanged, @JsonKey(name: 'IsPasswordVerified')  bool isPasswordVerified, @JsonKey(name: 'IsMigratedUser')  bool isMigratedUser, @JsonKey(name: 'FaceID')  bool faceID, @JsonKey(name: 'TouchID')  bool touchID, @JsonKey(name: 'Output')  bool output, @JsonKey(name: 'UserGuid')  String userGuid, @JsonKey(name: 'userData')  String? userData, @JsonKey(name: 'IsAlertinSMS')  bool isAlertinSMS, @JsonKey(name: 'IsAlertinEMAIL')  bool isAlertinEMAIL, @JsonKey(name: 'IsAlertinWhatsapp')  bool isAlertinWhatsapp, @JsonKey(name: 'IsPrepaidActive')  bool isPrepaidActive, @JsonKey(name: 'IsERPCustomer')  bool isERPCustomer, @JsonKey(name: 'ERPCustomerId')  String? erpCustomerId, @JsonKey(name: 'ERPCustomerName')  String? erpCustomerName, @JsonKey(name: 'FirstNameEn')  String firstNameEn, @JsonKey(name: 'FirstNameAr')  String firstNameAr, @JsonKey(name: 'SecondNameEn')  String secondNameEn, @JsonKey(name: 'SecondNameAr')  String secondNameAr, @JsonKey(name: 'ThirdNameEn')  String thirdNameEn, @JsonKey(name: 'ThirdNameAr')  String thirdNameAr, @JsonKey(name: 'FamilyNameEn')  String familyNameEn, @JsonKey(name: 'FamilyNameAr')  String familyNameAr, @JsonKey(name: 'ROPValidation')  String? ropValidation, @JsonKey(name: 'ROPGsmNumber')  String ropGsmNumber, @JsonKey(name: 'IsROPValidationRequired')  bool isROPValidationRequired, @JsonKey(name: 'APUserData')  String apUserData, @JsonKey(name: 'IsResetPassword')  int isResetPassword, @JsonKey(name: 'NtfReqFlag')  bool ntfReqFlag)  $default,) {final _that = this;
switch (_that) {
case _UserData():
return $default(_that.userID,_that.outmessage,_that.emailOrMobile,_that.message,_that.userGuidID,_that.token,_that.auraToken,_that.userName,_that.fullNameEn,_that.fullNameAr,_that.personType,_that.emailID,_that.mobileNumber,_that.preferredLang,_that.profileImg,_that.isEmailVerified,_that.isMobileVerified,_that.nationalID,_that.crNumber,_that.expiryDate,_that.customerTypeName,_that.isSMSNTF,_that.isEmailNTF,_that.isEmailChanged,_that.isMobileChanged,_that.isPasswordVerified,_that.isMigratedUser,_that.faceID,_that.touchID,_that.output,_that.userGuid,_that.userData,_that.isAlertinSMS,_that.isAlertinEMAIL,_that.isAlertinWhatsapp,_that.isPrepaidActive,_that.isERPCustomer,_that.erpCustomerId,_that.erpCustomerName,_that.firstNameEn,_that.firstNameAr,_that.secondNameEn,_that.secondNameAr,_that.thirdNameEn,_that.thirdNameAr,_that.familyNameEn,_that.familyNameAr,_that.ropValidation,_that.ropGsmNumber,_that.isROPValidationRequired,_that.apUserData,_that.isResetPassword,_that.ntfReqFlag);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'UserID')  int userID, @JsonKey(name: 'Outmessage')  String? outmessage, @JsonKey(name: 'EmailOrMobile')  String? emailOrMobile, @JsonKey(name: 'Message')  String? message, @JsonKey(name: 'UserGuidID')  String? userGuidID, @JsonKey(name: 'Token')  String token, @JsonKey(name: 'AuraToken')  String? auraToken, @JsonKey(name: 'UserName')  String userName, @JsonKey(name: 'FullNameEn')  String fullNameEn, @JsonKey(name: 'FullNameAr')  String fullNameAr, @JsonKey(name: 'PersonType')  String personType, @JsonKey(name: 'EmailID')  String emailID, @JsonKey(name: 'MobileNumber')  String mobileNumber, @JsonKey(name: 'PreffredLang')  String preferredLang, @JsonKey(name: 'ProfileImg')  String? profileImg, @JsonKey(name: 'IsEmailVerified')  bool isEmailVerified, @JsonKey(name: 'IsMobileVerified')  bool isMobileVerified, @JsonKey(name: 'NationalID')  String nationalID, @JsonKey(name: 'CRNumber')  String crNumber, @JsonKey(name: 'ExpiryDate')  String expiryDate, @JsonKey(name: 'CustomerTypeName')  String customerTypeName, @JsonKey(name: 'IsSMSNTF')  bool isSMSNTF, @JsonKey(name: 'IsEmailNTF')  bool isEmailNTF, @JsonKey(name: 'IsEmailChanged')  bool isEmailChanged, @JsonKey(name: 'IsMobileChanged')  bool isMobileChanged, @JsonKey(name: 'IsPasswordVerified')  bool isPasswordVerified, @JsonKey(name: 'IsMigratedUser')  bool isMigratedUser, @JsonKey(name: 'FaceID')  bool faceID, @JsonKey(name: 'TouchID')  bool touchID, @JsonKey(name: 'Output')  bool output, @JsonKey(name: 'UserGuid')  String userGuid, @JsonKey(name: 'userData')  String? userData, @JsonKey(name: 'IsAlertinSMS')  bool isAlertinSMS, @JsonKey(name: 'IsAlertinEMAIL')  bool isAlertinEMAIL, @JsonKey(name: 'IsAlertinWhatsapp')  bool isAlertinWhatsapp, @JsonKey(name: 'IsPrepaidActive')  bool isPrepaidActive, @JsonKey(name: 'IsERPCustomer')  bool isERPCustomer, @JsonKey(name: 'ERPCustomerId')  String? erpCustomerId, @JsonKey(name: 'ERPCustomerName')  String? erpCustomerName, @JsonKey(name: 'FirstNameEn')  String firstNameEn, @JsonKey(name: 'FirstNameAr')  String firstNameAr, @JsonKey(name: 'SecondNameEn')  String secondNameEn, @JsonKey(name: 'SecondNameAr')  String secondNameAr, @JsonKey(name: 'ThirdNameEn')  String thirdNameEn, @JsonKey(name: 'ThirdNameAr')  String thirdNameAr, @JsonKey(name: 'FamilyNameEn')  String familyNameEn, @JsonKey(name: 'FamilyNameAr')  String familyNameAr, @JsonKey(name: 'ROPValidation')  String? ropValidation, @JsonKey(name: 'ROPGsmNumber')  String ropGsmNumber, @JsonKey(name: 'IsROPValidationRequired')  bool isROPValidationRequired, @JsonKey(name: 'APUserData')  String apUserData, @JsonKey(name: 'IsResetPassword')  int isResetPassword, @JsonKey(name: 'NtfReqFlag')  bool ntfReqFlag)?  $default,) {final _that = this;
switch (_that) {
case _UserData() when $default != null:
return $default(_that.userID,_that.outmessage,_that.emailOrMobile,_that.message,_that.userGuidID,_that.token,_that.auraToken,_that.userName,_that.fullNameEn,_that.fullNameAr,_that.personType,_that.emailID,_that.mobileNumber,_that.preferredLang,_that.profileImg,_that.isEmailVerified,_that.isMobileVerified,_that.nationalID,_that.crNumber,_that.expiryDate,_that.customerTypeName,_that.isSMSNTF,_that.isEmailNTF,_that.isEmailChanged,_that.isMobileChanged,_that.isPasswordVerified,_that.isMigratedUser,_that.faceID,_that.touchID,_that.output,_that.userGuid,_that.userData,_that.isAlertinSMS,_that.isAlertinEMAIL,_that.isAlertinWhatsapp,_that.isPrepaidActive,_that.isERPCustomer,_that.erpCustomerId,_that.erpCustomerName,_that.firstNameEn,_that.firstNameAr,_that.secondNameEn,_that.secondNameAr,_that.thirdNameEn,_that.thirdNameAr,_that.familyNameEn,_that.familyNameAr,_that.ropValidation,_that.ropGsmNumber,_that.isROPValidationRequired,_that.apUserData,_that.isResetPassword,_that.ntfReqFlag);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserData implements UserData {
  const _UserData({@JsonKey(name: 'UserID') required this.userID, @JsonKey(name: 'Outmessage') this.outmessage, @JsonKey(name: 'EmailOrMobile') this.emailOrMobile, @JsonKey(name: 'Message') this.message, @JsonKey(name: 'UserGuidID') this.userGuidID, @JsonKey(name: 'Token') required this.token, @JsonKey(name: 'AuraToken') this.auraToken, @JsonKey(name: 'UserName') required this.userName, @JsonKey(name: 'FullNameEn') required this.fullNameEn, @JsonKey(name: 'FullNameAr') required this.fullNameAr, @JsonKey(name: 'PersonType') required this.personType, @JsonKey(name: 'EmailID') required this.emailID, @JsonKey(name: 'MobileNumber') required this.mobileNumber, @JsonKey(name: 'PreffredLang') required this.preferredLang, @JsonKey(name: 'ProfileImg') this.profileImg, @JsonKey(name: 'IsEmailVerified') required this.isEmailVerified, @JsonKey(name: 'IsMobileVerified') required this.isMobileVerified, @JsonKey(name: 'NationalID') required this.nationalID, @JsonKey(name: 'CRNumber') required this.crNumber, @JsonKey(name: 'ExpiryDate') required this.expiryDate, @JsonKey(name: 'CustomerTypeName') required this.customerTypeName, @JsonKey(name: 'IsSMSNTF') required this.isSMSNTF, @JsonKey(name: 'IsEmailNTF') required this.isEmailNTF, @JsonKey(name: 'IsEmailChanged') required this.isEmailChanged, @JsonKey(name: 'IsMobileChanged') required this.isMobileChanged, @JsonKey(name: 'IsPasswordVerified') required this.isPasswordVerified, @JsonKey(name: 'IsMigratedUser') required this.isMigratedUser, @JsonKey(name: 'FaceID') required this.faceID, @JsonKey(name: 'TouchID') required this.touchID, @JsonKey(name: 'Output') required this.output, @JsonKey(name: 'UserGuid') required this.userGuid, @JsonKey(name: 'userData') this.userData, @JsonKey(name: 'IsAlertinSMS') required this.isAlertinSMS, @JsonKey(name: 'IsAlertinEMAIL') required this.isAlertinEMAIL, @JsonKey(name: 'IsAlertinWhatsapp') required this.isAlertinWhatsapp, @JsonKey(name: 'IsPrepaidActive') required this.isPrepaidActive, @JsonKey(name: 'IsERPCustomer') required this.isERPCustomer, @JsonKey(name: 'ERPCustomerId') this.erpCustomerId, @JsonKey(name: 'ERPCustomerName') this.erpCustomerName, @JsonKey(name: 'FirstNameEn') required this.firstNameEn, @JsonKey(name: 'FirstNameAr') required this.firstNameAr, @JsonKey(name: 'SecondNameEn') required this.secondNameEn, @JsonKey(name: 'SecondNameAr') required this.secondNameAr, @JsonKey(name: 'ThirdNameEn') required this.thirdNameEn, @JsonKey(name: 'ThirdNameAr') required this.thirdNameAr, @JsonKey(name: 'FamilyNameEn') required this.familyNameEn, @JsonKey(name: 'FamilyNameAr') required this.familyNameAr, @JsonKey(name: 'ROPValidation') this.ropValidation, @JsonKey(name: 'ROPGsmNumber') required this.ropGsmNumber, @JsonKey(name: 'IsROPValidationRequired') required this.isROPValidationRequired, @JsonKey(name: 'APUserData') required this.apUserData, @JsonKey(name: 'IsResetPassword') required this.isResetPassword, @JsonKey(name: 'NtfReqFlag') required this.ntfReqFlag});
  factory _UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);

@override@JsonKey(name: 'UserID') final  int userID;
@override@JsonKey(name: 'Outmessage') final  String? outmessage;
@override@JsonKey(name: 'EmailOrMobile') final  String? emailOrMobile;
@override@JsonKey(name: 'Message') final  String? message;
@override@JsonKey(name: 'UserGuidID') final  String? userGuidID;
@override@JsonKey(name: 'Token') final  String token;
@override@JsonKey(name: 'AuraToken') final  String? auraToken;
@override@JsonKey(name: 'UserName') final  String userName;
@override@JsonKey(name: 'FullNameEn') final  String fullNameEn;
@override@JsonKey(name: 'FullNameAr') final  String fullNameAr;
@override@JsonKey(name: 'PersonType') final  String personType;
@override@JsonKey(name: 'EmailID') final  String emailID;
@override@JsonKey(name: 'MobileNumber') final  String mobileNumber;
@override@JsonKey(name: 'PreffredLang') final  String preferredLang;
@override@JsonKey(name: 'ProfileImg') final  String? profileImg;
@override@JsonKey(name: 'IsEmailVerified') final  bool isEmailVerified;
@override@JsonKey(name: 'IsMobileVerified') final  bool isMobileVerified;
@override@JsonKey(name: 'NationalID') final  String nationalID;
@override@JsonKey(name: 'CRNumber') final  String crNumber;
@override@JsonKey(name: 'ExpiryDate') final  String expiryDate;
@override@JsonKey(name: 'CustomerTypeName') final  String customerTypeName;
@override@JsonKey(name: 'IsSMSNTF') final  bool isSMSNTF;
@override@JsonKey(name: 'IsEmailNTF') final  bool isEmailNTF;
@override@JsonKey(name: 'IsEmailChanged') final  bool isEmailChanged;
@override@JsonKey(name: 'IsMobileChanged') final  bool isMobileChanged;
@override@JsonKey(name: 'IsPasswordVerified') final  bool isPasswordVerified;
@override@JsonKey(name: 'IsMigratedUser') final  bool isMigratedUser;
@override@JsonKey(name: 'FaceID') final  bool faceID;
@override@JsonKey(name: 'TouchID') final  bool touchID;
@override@JsonKey(name: 'Output') final  bool output;
@override@JsonKey(name: 'UserGuid') final  String userGuid;
@override@JsonKey(name: 'userData') final  String? userData;
@override@JsonKey(name: 'IsAlertinSMS') final  bool isAlertinSMS;
@override@JsonKey(name: 'IsAlertinEMAIL') final  bool isAlertinEMAIL;
@override@JsonKey(name: 'IsAlertinWhatsapp') final  bool isAlertinWhatsapp;
@override@JsonKey(name: 'IsPrepaidActive') final  bool isPrepaidActive;
@override@JsonKey(name: 'IsERPCustomer') final  bool isERPCustomer;
@override@JsonKey(name: 'ERPCustomerId') final  String? erpCustomerId;
@override@JsonKey(name: 'ERPCustomerName') final  String? erpCustomerName;
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
@override@JsonKey(name: 'IsROPValidationRequired') final  bool isROPValidationRequired;
@override@JsonKey(name: 'APUserData') final  String apUserData;
@override@JsonKey(name: 'IsResetPassword') final  int isResetPassword;
@override@JsonKey(name: 'NtfReqFlag') final  bool ntfReqFlag;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserData&&(identical(other.userID, userID) || other.userID == userID)&&(identical(other.outmessage, outmessage) || other.outmessage == outmessage)&&(identical(other.emailOrMobile, emailOrMobile) || other.emailOrMobile == emailOrMobile)&&(identical(other.message, message) || other.message == message)&&(identical(other.userGuidID, userGuidID) || other.userGuidID == userGuidID)&&(identical(other.token, token) || other.token == token)&&(identical(other.auraToken, auraToken) || other.auraToken == auraToken)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.fullNameEn, fullNameEn) || other.fullNameEn == fullNameEn)&&(identical(other.fullNameAr, fullNameAr) || other.fullNameAr == fullNameAr)&&(identical(other.personType, personType) || other.personType == personType)&&(identical(other.emailID, emailID) || other.emailID == emailID)&&(identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber)&&(identical(other.preferredLang, preferredLang) || other.preferredLang == preferredLang)&&(identical(other.profileImg, profileImg) || other.profileImg == profileImg)&&(identical(other.isEmailVerified, isEmailVerified) || other.isEmailVerified == isEmailVerified)&&(identical(other.isMobileVerified, isMobileVerified) || other.isMobileVerified == isMobileVerified)&&(identical(other.nationalID, nationalID) || other.nationalID == nationalID)&&(identical(other.crNumber, crNumber) || other.crNumber == crNumber)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.customerTypeName, customerTypeName) || other.customerTypeName == customerTypeName)&&(identical(other.isSMSNTF, isSMSNTF) || other.isSMSNTF == isSMSNTF)&&(identical(other.isEmailNTF, isEmailNTF) || other.isEmailNTF == isEmailNTF)&&(identical(other.isEmailChanged, isEmailChanged) || other.isEmailChanged == isEmailChanged)&&(identical(other.isMobileChanged, isMobileChanged) || other.isMobileChanged == isMobileChanged)&&(identical(other.isPasswordVerified, isPasswordVerified) || other.isPasswordVerified == isPasswordVerified)&&(identical(other.isMigratedUser, isMigratedUser) || other.isMigratedUser == isMigratedUser)&&(identical(other.faceID, faceID) || other.faceID == faceID)&&(identical(other.touchID, touchID) || other.touchID == touchID)&&(identical(other.output, output) || other.output == output)&&(identical(other.userGuid, userGuid) || other.userGuid == userGuid)&&(identical(other.userData, userData) || other.userData == userData)&&(identical(other.isAlertinSMS, isAlertinSMS) || other.isAlertinSMS == isAlertinSMS)&&(identical(other.isAlertinEMAIL, isAlertinEMAIL) || other.isAlertinEMAIL == isAlertinEMAIL)&&(identical(other.isAlertinWhatsapp, isAlertinWhatsapp) || other.isAlertinWhatsapp == isAlertinWhatsapp)&&(identical(other.isPrepaidActive, isPrepaidActive) || other.isPrepaidActive == isPrepaidActive)&&(identical(other.isERPCustomer, isERPCustomer) || other.isERPCustomer == isERPCustomer)&&(identical(other.erpCustomerId, erpCustomerId) || other.erpCustomerId == erpCustomerId)&&(identical(other.erpCustomerName, erpCustomerName) || other.erpCustomerName == erpCustomerName)&&(identical(other.firstNameEn, firstNameEn) || other.firstNameEn == firstNameEn)&&(identical(other.firstNameAr, firstNameAr) || other.firstNameAr == firstNameAr)&&(identical(other.secondNameEn, secondNameEn) || other.secondNameEn == secondNameEn)&&(identical(other.secondNameAr, secondNameAr) || other.secondNameAr == secondNameAr)&&(identical(other.thirdNameEn, thirdNameEn) || other.thirdNameEn == thirdNameEn)&&(identical(other.thirdNameAr, thirdNameAr) || other.thirdNameAr == thirdNameAr)&&(identical(other.familyNameEn, familyNameEn) || other.familyNameEn == familyNameEn)&&(identical(other.familyNameAr, familyNameAr) || other.familyNameAr == familyNameAr)&&(identical(other.ropValidation, ropValidation) || other.ropValidation == ropValidation)&&(identical(other.ropGsmNumber, ropGsmNumber) || other.ropGsmNumber == ropGsmNumber)&&(identical(other.isROPValidationRequired, isROPValidationRequired) || other.isROPValidationRequired == isROPValidationRequired)&&(identical(other.apUserData, apUserData) || other.apUserData == apUserData)&&(identical(other.isResetPassword, isResetPassword) || other.isResetPassword == isResetPassword)&&(identical(other.ntfReqFlag, ntfReqFlag) || other.ntfReqFlag == ntfReqFlag));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,userID,outmessage,emailOrMobile,message,userGuidID,token,auraToken,userName,fullNameEn,fullNameAr,personType,emailID,mobileNumber,preferredLang,profileImg,isEmailVerified,isMobileVerified,nationalID,crNumber,expiryDate,customerTypeName,isSMSNTF,isEmailNTF,isEmailChanged,isMobileChanged,isPasswordVerified,isMigratedUser,faceID,touchID,output,userGuid,userData,isAlertinSMS,isAlertinEMAIL,isAlertinWhatsapp,isPrepaidActive,isERPCustomer,erpCustomerId,erpCustomerName,firstNameEn,firstNameAr,secondNameEn,secondNameAr,thirdNameEn,thirdNameAr,familyNameEn,familyNameAr,ropValidation,ropGsmNumber,isROPValidationRequired,apUserData,isResetPassword,ntfReqFlag]);

@override
String toString() {
  return 'UserData(userID: $userID, outmessage: $outmessage, emailOrMobile: $emailOrMobile, message: $message, userGuidID: $userGuidID, token: $token, auraToken: $auraToken, userName: $userName, fullNameEn: $fullNameEn, fullNameAr: $fullNameAr, personType: $personType, emailID: $emailID, mobileNumber: $mobileNumber, preferredLang: $preferredLang, profileImg: $profileImg, isEmailVerified: $isEmailVerified, isMobileVerified: $isMobileVerified, nationalID: $nationalID, crNumber: $crNumber, expiryDate: $expiryDate, customerTypeName: $customerTypeName, isSMSNTF: $isSMSNTF, isEmailNTF: $isEmailNTF, isEmailChanged: $isEmailChanged, isMobileChanged: $isMobileChanged, isPasswordVerified: $isPasswordVerified, isMigratedUser: $isMigratedUser, faceID: $faceID, touchID: $touchID, output: $output, userGuid: $userGuid, userData: $userData, isAlertinSMS: $isAlertinSMS, isAlertinEMAIL: $isAlertinEMAIL, isAlertinWhatsapp: $isAlertinWhatsapp, isPrepaidActive: $isPrepaidActive, isERPCustomer: $isERPCustomer, erpCustomerId: $erpCustomerId, erpCustomerName: $erpCustomerName, firstNameEn: $firstNameEn, firstNameAr: $firstNameAr, secondNameEn: $secondNameEn, secondNameAr: $secondNameAr, thirdNameEn: $thirdNameEn, thirdNameAr: $thirdNameAr, familyNameEn: $familyNameEn, familyNameAr: $familyNameAr, ropValidation: $ropValidation, ropGsmNumber: $ropGsmNumber, isROPValidationRequired: $isROPValidationRequired, apUserData: $apUserData, isResetPassword: $isResetPassword, ntfReqFlag: $ntfReqFlag)';
}


}

/// @nodoc
abstract mixin class _$UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$UserDataCopyWith(_UserData value, $Res Function(_UserData) _then) = __$UserDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'UserID') int userID,@JsonKey(name: 'Outmessage') String? outmessage,@JsonKey(name: 'EmailOrMobile') String? emailOrMobile,@JsonKey(name: 'Message') String? message,@JsonKey(name: 'UserGuidID') String? userGuidID,@JsonKey(name: 'Token') String token,@JsonKey(name: 'AuraToken') String? auraToken,@JsonKey(name: 'UserName') String userName,@JsonKey(name: 'FullNameEn') String fullNameEn,@JsonKey(name: 'FullNameAr') String fullNameAr,@JsonKey(name: 'PersonType') String personType,@JsonKey(name: 'EmailID') String emailID,@JsonKey(name: 'MobileNumber') String mobileNumber,@JsonKey(name: 'PreffredLang') String preferredLang,@JsonKey(name: 'ProfileImg') String? profileImg,@JsonKey(name: 'IsEmailVerified') bool isEmailVerified,@JsonKey(name: 'IsMobileVerified') bool isMobileVerified,@JsonKey(name: 'NationalID') String nationalID,@JsonKey(name: 'CRNumber') String crNumber,@JsonKey(name: 'ExpiryDate') String expiryDate,@JsonKey(name: 'CustomerTypeName') String customerTypeName,@JsonKey(name: 'IsSMSNTF') bool isSMSNTF,@JsonKey(name: 'IsEmailNTF') bool isEmailNTF,@JsonKey(name: 'IsEmailChanged') bool isEmailChanged,@JsonKey(name: 'IsMobileChanged') bool isMobileChanged,@JsonKey(name: 'IsPasswordVerified') bool isPasswordVerified,@JsonKey(name: 'IsMigratedUser') bool isMigratedUser,@JsonKey(name: 'FaceID') bool faceID,@JsonKey(name: 'TouchID') bool touchID,@JsonKey(name: 'Output') bool output,@JsonKey(name: 'UserGuid') String userGuid,@JsonKey(name: 'userData') String? userData,@JsonKey(name: 'IsAlertinSMS') bool isAlertinSMS,@JsonKey(name: 'IsAlertinEMAIL') bool isAlertinEMAIL,@JsonKey(name: 'IsAlertinWhatsapp') bool isAlertinWhatsapp,@JsonKey(name: 'IsPrepaidActive') bool isPrepaidActive,@JsonKey(name: 'IsERPCustomer') bool isERPCustomer,@JsonKey(name: 'ERPCustomerId') String? erpCustomerId,@JsonKey(name: 'ERPCustomerName') String? erpCustomerName,@JsonKey(name: 'FirstNameEn') String firstNameEn,@JsonKey(name: 'FirstNameAr') String firstNameAr,@JsonKey(name: 'SecondNameEn') String secondNameEn,@JsonKey(name: 'SecondNameAr') String secondNameAr,@JsonKey(name: 'ThirdNameEn') String thirdNameEn,@JsonKey(name: 'ThirdNameAr') String thirdNameAr,@JsonKey(name: 'FamilyNameEn') String familyNameEn,@JsonKey(name: 'FamilyNameAr') String familyNameAr,@JsonKey(name: 'ROPValidation') String? ropValidation,@JsonKey(name: 'ROPGsmNumber') String ropGsmNumber,@JsonKey(name: 'IsROPValidationRequired') bool isROPValidationRequired,@JsonKey(name: 'APUserData') String apUserData,@JsonKey(name: 'IsResetPassword') int isResetPassword,@JsonKey(name: 'NtfReqFlag') bool ntfReqFlag
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
@override @pragma('vm:prefer-inline') $Res call({Object? userID = null,Object? outmessage = freezed,Object? emailOrMobile = freezed,Object? message = freezed,Object? userGuidID = freezed,Object? token = null,Object? auraToken = freezed,Object? userName = null,Object? fullNameEn = null,Object? fullNameAr = null,Object? personType = null,Object? emailID = null,Object? mobileNumber = null,Object? preferredLang = null,Object? profileImg = freezed,Object? isEmailVerified = null,Object? isMobileVerified = null,Object? nationalID = null,Object? crNumber = null,Object? expiryDate = null,Object? customerTypeName = null,Object? isSMSNTF = null,Object? isEmailNTF = null,Object? isEmailChanged = null,Object? isMobileChanged = null,Object? isPasswordVerified = null,Object? isMigratedUser = null,Object? faceID = null,Object? touchID = null,Object? output = null,Object? userGuid = null,Object? userData = freezed,Object? isAlertinSMS = null,Object? isAlertinEMAIL = null,Object? isAlertinWhatsapp = null,Object? isPrepaidActive = null,Object? isERPCustomer = null,Object? erpCustomerId = freezed,Object? erpCustomerName = freezed,Object? firstNameEn = null,Object? firstNameAr = null,Object? secondNameEn = null,Object? secondNameAr = null,Object? thirdNameEn = null,Object? thirdNameAr = null,Object? familyNameEn = null,Object? familyNameAr = null,Object? ropValidation = freezed,Object? ropGsmNumber = null,Object? isROPValidationRequired = null,Object? apUserData = null,Object? isResetPassword = null,Object? ntfReqFlag = null,}) {
  return _then(_UserData(
userID: null == userID ? _self.userID : userID // ignore: cast_nullable_to_non_nullable
as int,outmessage: freezed == outmessage ? _self.outmessage : outmessage // ignore: cast_nullable_to_non_nullable
as String?,emailOrMobile: freezed == emailOrMobile ? _self.emailOrMobile : emailOrMobile // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,userGuidID: freezed == userGuidID ? _self.userGuidID : userGuidID // ignore: cast_nullable_to_non_nullable
as String?,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,auraToken: freezed == auraToken ? _self.auraToken : auraToken // ignore: cast_nullable_to_non_nullable
as String?,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,fullNameEn: null == fullNameEn ? _self.fullNameEn : fullNameEn // ignore: cast_nullable_to_non_nullable
as String,fullNameAr: null == fullNameAr ? _self.fullNameAr : fullNameAr // ignore: cast_nullable_to_non_nullable
as String,personType: null == personType ? _self.personType : personType // ignore: cast_nullable_to_non_nullable
as String,emailID: null == emailID ? _self.emailID : emailID // ignore: cast_nullable_to_non_nullable
as String,mobileNumber: null == mobileNumber ? _self.mobileNumber : mobileNumber // ignore: cast_nullable_to_non_nullable
as String,preferredLang: null == preferredLang ? _self.preferredLang : preferredLang // ignore: cast_nullable_to_non_nullable
as String,profileImg: freezed == profileImg ? _self.profileImg : profileImg // ignore: cast_nullable_to_non_nullable
as String?,isEmailVerified: null == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as bool,isMobileVerified: null == isMobileVerified ? _self.isMobileVerified : isMobileVerified // ignore: cast_nullable_to_non_nullable
as bool,nationalID: null == nationalID ? _self.nationalID : nationalID // ignore: cast_nullable_to_non_nullable
as String,crNumber: null == crNumber ? _self.crNumber : crNumber // ignore: cast_nullable_to_non_nullable
as String,expiryDate: null == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as String,customerTypeName: null == customerTypeName ? _self.customerTypeName : customerTypeName // ignore: cast_nullable_to_non_nullable
as String,isSMSNTF: null == isSMSNTF ? _self.isSMSNTF : isSMSNTF // ignore: cast_nullable_to_non_nullable
as bool,isEmailNTF: null == isEmailNTF ? _self.isEmailNTF : isEmailNTF // ignore: cast_nullable_to_non_nullable
as bool,isEmailChanged: null == isEmailChanged ? _self.isEmailChanged : isEmailChanged // ignore: cast_nullable_to_non_nullable
as bool,isMobileChanged: null == isMobileChanged ? _self.isMobileChanged : isMobileChanged // ignore: cast_nullable_to_non_nullable
as bool,isPasswordVerified: null == isPasswordVerified ? _self.isPasswordVerified : isPasswordVerified // ignore: cast_nullable_to_non_nullable
as bool,isMigratedUser: null == isMigratedUser ? _self.isMigratedUser : isMigratedUser // ignore: cast_nullable_to_non_nullable
as bool,faceID: null == faceID ? _self.faceID : faceID // ignore: cast_nullable_to_non_nullable
as bool,touchID: null == touchID ? _self.touchID : touchID // ignore: cast_nullable_to_non_nullable
as bool,output: null == output ? _self.output : output // ignore: cast_nullable_to_non_nullable
as bool,userGuid: null == userGuid ? _self.userGuid : userGuid // ignore: cast_nullable_to_non_nullable
as String,userData: freezed == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as String?,isAlertinSMS: null == isAlertinSMS ? _self.isAlertinSMS : isAlertinSMS // ignore: cast_nullable_to_non_nullable
as bool,isAlertinEMAIL: null == isAlertinEMAIL ? _self.isAlertinEMAIL : isAlertinEMAIL // ignore: cast_nullable_to_non_nullable
as bool,isAlertinWhatsapp: null == isAlertinWhatsapp ? _self.isAlertinWhatsapp : isAlertinWhatsapp // ignore: cast_nullable_to_non_nullable
as bool,isPrepaidActive: null == isPrepaidActive ? _self.isPrepaidActive : isPrepaidActive // ignore: cast_nullable_to_non_nullable
as bool,isERPCustomer: null == isERPCustomer ? _self.isERPCustomer : isERPCustomer // ignore: cast_nullable_to_non_nullable
as bool,erpCustomerId: freezed == erpCustomerId ? _self.erpCustomerId : erpCustomerId // ignore: cast_nullable_to_non_nullable
as String?,erpCustomerName: freezed == erpCustomerName ? _self.erpCustomerName : erpCustomerName // ignore: cast_nullable_to_non_nullable
as String?,firstNameEn: null == firstNameEn ? _self.firstNameEn : firstNameEn // ignore: cast_nullable_to_non_nullable
as String,firstNameAr: null == firstNameAr ? _self.firstNameAr : firstNameAr // ignore: cast_nullable_to_non_nullable
as String,secondNameEn: null == secondNameEn ? _self.secondNameEn : secondNameEn // ignore: cast_nullable_to_non_nullable
as String,secondNameAr: null == secondNameAr ? _self.secondNameAr : secondNameAr // ignore: cast_nullable_to_non_nullable
as String,thirdNameEn: null == thirdNameEn ? _self.thirdNameEn : thirdNameEn // ignore: cast_nullable_to_non_nullable
as String,thirdNameAr: null == thirdNameAr ? _self.thirdNameAr : thirdNameAr // ignore: cast_nullable_to_non_nullable
as String,familyNameEn: null == familyNameEn ? _self.familyNameEn : familyNameEn // ignore: cast_nullable_to_non_nullable
as String,familyNameAr: null == familyNameAr ? _self.familyNameAr : familyNameAr // ignore: cast_nullable_to_non_nullable
as String,ropValidation: freezed == ropValidation ? _self.ropValidation : ropValidation // ignore: cast_nullable_to_non_nullable
as String?,ropGsmNumber: null == ropGsmNumber ? _self.ropGsmNumber : ropGsmNumber // ignore: cast_nullable_to_non_nullable
as String,isROPValidationRequired: null == isROPValidationRequired ? _self.isROPValidationRequired : isROPValidationRequired // ignore: cast_nullable_to_non_nullable
as bool,apUserData: null == apUserData ? _self.apUserData : apUserData // ignore: cast_nullable_to_non_nullable
as String,isResetPassword: null == isResetPassword ? _self.isResetPassword : isResetPassword // ignore: cast_nullable_to_non_nullable
as int,ntfReqFlag: null == ntfReqFlag ? _self.ntfReqFlag : ntfReqFlag // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
