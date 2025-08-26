import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_profile_response_model.freezed.dart';
part 'update_user_profile_response_model.g.dart';

@freezed
abstract class UpdateUserProfileResponse with _$UpdateUserProfileResponse {
  const factory UpdateUserProfileResponse({
    @JsonKey(name: 'Status') required String status,
    @JsonKey(name: 'StatusCode') required int statusCode,
    @JsonKey(name: 'Data') required UserData data,
  }) = _UpdateUserProfileResponse;

  factory UpdateUserProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserProfileResponseFromJson(json);
}

@freezed
abstract class UserData with _$UserData {
  const factory UserData({
    @JsonKey(name: 'UserID') required int userID,
    @JsonKey(name: 'Outmessage') String? outmessage,
    @JsonKey(name: 'EmailOrMobile') String? emailOrMobile,
    @JsonKey(name: 'Message') String? message,
    @JsonKey(name: 'UserGuidID') String? userGuidID,
    @JsonKey(name: 'Token') required String token,
    @JsonKey(name: 'AuraToken') String? auraToken,
    @JsonKey(name: 'UserName') required String userName,
    @JsonKey(name: 'FullNameEn') required String fullNameEn,
    @JsonKey(name: 'FullNameAr') required String fullNameAr,
    @JsonKey(name: 'PersonType') required String personType,
    @JsonKey(name: 'EmailID') required String emailID,
    @JsonKey(name: 'MobileNumber') required String mobileNumber,
    @JsonKey(name: 'PreffredLang') required String preferredLang,
    @JsonKey(name: 'ProfileImg') String? profileImg,
    @JsonKey(name: 'IsEmailVerified') required bool isEmailVerified,
    @JsonKey(name: 'IsMobileVerified') required bool isMobileVerified,
    @JsonKey(name: 'NationalID') required String nationalID,
    @JsonKey(name: 'CRNumber') required String crNumber,
    @JsonKey(name: 'ExpiryDate') required String expiryDate,
    @JsonKey(name: 'CustomerTypeName') required String customerTypeName,
    @JsonKey(name: 'IsSMSNTF') required bool isSMSNTF,
    @JsonKey(name: 'IsEmailNTF') required bool isEmailNTF,
    @JsonKey(name: 'IsEmailChanged') required bool isEmailChanged,
    @JsonKey(name: 'IsMobileChanged') required bool isMobileChanged,
    @JsonKey(name: 'IsPasswordVerified') required bool isPasswordVerified,
    @JsonKey(name: 'IsMigratedUser') required bool isMigratedUser,
    @JsonKey(name: 'FaceID') required bool faceID,
    @JsonKey(name: 'TouchID') required bool touchID,
    @JsonKey(name: 'Output') required bool output,
    @JsonKey(name: 'UserGuid') required String userGuid,
    @JsonKey(name: 'userData') String? userData,
    @JsonKey(name: 'IsAlertinSMS') required bool isAlertinSMS,
    @JsonKey(name: 'IsAlertinEMAIL') required bool isAlertinEMAIL,
    @JsonKey(name: 'IsAlertinWhatsapp') required bool isAlertinWhatsapp,
    @JsonKey(name: 'IsPrepaidActive') required bool isPrepaidActive,
    @JsonKey(name: 'IsERPCustomer') required bool isERPCustomer,
    @JsonKey(name: 'ERPCustomerId') String? erpCustomerId,
    @JsonKey(name: 'ERPCustomerName') String? erpCustomerName,
    @JsonKey(name: 'FirstNameEn') required String firstNameEn,
    @JsonKey(name: 'FirstNameAr') required String firstNameAr,
    @JsonKey(name: 'SecondNameEn') required String secondNameEn,
    @JsonKey(name: 'SecondNameAr') required String secondNameAr,
    @JsonKey(name: 'ThirdNameEn') required String thirdNameEn,
    @JsonKey(name: 'ThirdNameAr') required String thirdNameAr,
    @JsonKey(name: 'FamilyNameEn') required String familyNameEn,
    @JsonKey(name: 'FamilyNameAr') required String familyNameAr,
    @JsonKey(name: 'ROPValidation') String? ropValidation,
    @JsonKey(name: 'ROPGsmNumber') required String ropGsmNumber,
    @JsonKey(name: 'IsROPValidationRequired') required bool isROPValidationRequired,
    @JsonKey(name: 'APUserData') required String apUserData,
    @JsonKey(name: 'IsResetPassword') required int isResetPassword,
    @JsonKey(name: 'NtfReqFlag') required bool ntfReqFlag,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}