import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_model.freezed.dart';

part 'login_response_model.g.dart';

@freezed
abstract class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    @JsonKey(name: "Status") required String status,
    @JsonKey(name: "StatusCode") required int statusCode,
    @JsonKey(name: "Data") UserData? data,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);
}

@freezed
abstract class UserData with _$UserData {
  // Private constructor to enable custom methods
  const UserData._();

  const factory UserData({
    @JsonKey(name: 'UserID') required int userId,
    @JsonKey(name: 'Outmessage') @Default('') String outMessage,
    @JsonKey(name: 'EmailOrMobile') String? emailOrMobile,
    @JsonKey(name: 'Message') String? message,
    @JsonKey(name: 'UserGuidID') String? userGuidId,
    @JsonKey(name: 'Token') required String token,
    @JsonKey(name: 'AuraToken') String? auraToken,
    @JsonKey(name: 'UserName') required String userName,
    @JsonKey(name: 'FullNameEn') required String fullNameEn,
    @JsonKey(name: 'FullNameAr') required String fullNameAr,
    @JsonKey(name: 'PersonType') required String personType,
    @JsonKey(name: 'EmailID') required String emailId,
    @JsonKey(name: 'MobileNumber') required String mobileNumber,
    @JsonKey(name: 'PreffredLang') required String preferredLang,
    @JsonKey(name: 'ProfileImg') String? profileImg,
    @JsonKey(name: 'IsEmailVerified') @Default(false) bool isEmailVerified,
    @JsonKey(name: 'IsMobileVerified') @Default(false) bool isMobileVerified,
    @JsonKey(name: 'NationalID') required String nationalId,
    @JsonKey(name: 'CRNumber') required String crNumber,
    @JsonKey(name: 'ExpiryDate') required String expiryDate,
    @JsonKey(name: 'CustomerTypeName') required String customerTypeName,
    @JsonKey(name: 'IsSMSNTF') @Default(false) bool isSmsNotification,
    @JsonKey(name: 'IsEmailNTF') @Default(false) bool isEmailNotification,
    @JsonKey(name: 'IsEmailChanged') @Default(false) bool isEmailChanged,
    @JsonKey(name: 'IsMobileChanged') @Default(false) bool isMobileChanged,
    @JsonKey(name: 'IsPasswordVerified') @Default(false) bool isPasswordVerified,
    @JsonKey(name: 'IsMigratedUser') @Default(false) bool isMigratedUser,
    @JsonKey(name: 'FaceID') @Default(false) bool faceId,
    @JsonKey(name: 'TouchID') @Default(false) bool touchId,
    @JsonKey(name: 'Output') @Default(false) bool output,
    @JsonKey(name: 'UserGuid') required String userGuid,
    @JsonKey(name: 'userData') String? userData,
    @JsonKey(name: 'IsAlertinSMS') @Default(false) bool isAlertInSms,
    @JsonKey(name: 'IsAlertinEMAIL') @Default(false) bool isAlertInEmail,
    @JsonKey(name: 'IsAlertinWhatsapp') @Default(false) bool isAlertInWhatsapp,
    @JsonKey(name: 'IsPrepaidActive') @Default(false) bool isPrepaidActive,
    @JsonKey(name: 'IsERPCustomer') @Default(false) bool isErpCustomer,
    @JsonKey(name: 'ERPCustomerId') required String erpCustomerId,
    @JsonKey(name: 'ERPCustomerName') required String erpCustomerName,
    @JsonKey(name: 'FirstNameEn') @Default('') String firstNameEn,
    @JsonKey(name: 'FirstNameAr') @Default('') String firstNameAr,
    @JsonKey(name: 'SecondNameEn') @Default('') String secondNameEn,
    @JsonKey(name: 'SecondNameAr') @Default('') String secondNameAr,
    @JsonKey(name: 'ThirdNameEn') @Default('') String thirdNameEn,
    @JsonKey(name: 'ThirdNameAr') @Default('') String thirdNameAr,
    @JsonKey(name: 'FamilyNameEn') @Default('') String familyNameEn,
    @JsonKey(name: 'FamilyNameAr') @Default('') String familyNameAr,
    @JsonKey(name: 'ROPValidation') String? ropValidation,
    @JsonKey(name: 'ROPGsmNumber') @Default('') String ropGsmNumber,
    @JsonKey(name: 'IsROPValidationRequired') @Default(false) bool isRopValidationRequired,
    @JsonKey(name: 'APUserData') required String apUserData,
    @JsonKey(name: 'IsResetPassword') @Default(0) int isResetPassword,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  // Custom getters
  bool get isAuthenticated => token.isNotEmpty;

  bool get isVerified => isEmailVerified && isMobileVerified;

  bool get isCorporateUser => personType == 'COR';

  bool get isPasswordResetRequired => isResetPassword == 1;

  bool get hasBiometricEnabled => faceId || touchId;

  // Helper methods
  String get displayName {
    if (fullNameEn.isNotEmpty) return fullNameEn;
    if (userName.isNotEmpty) return userName;
    return 'User $userId';
  }

  // Check if user has any notification enabled
  bool get hasNotificationsEnabled =>
      isSmsNotification || isEmailNotification || isAlertInSms || isAlertInEmail || isAlertInWhatsapp;

  // Get expiry date as DateTime (you might want to adjust the format)
  DateTime? get expiryDateTime {
    try {
      // Assuming format is "dd-MM-yyyy"
      final parts = expiryDate.split('-');
      if (parts.length == 3) {
        return DateTime(
          int.parse(parts[2]), // year
          int.parse(parts[1]), // month
          int.parse(parts[0]), // day
        );
      }
    } catch (e) {
      // Handle parsing error
    }
    return null;
  }

  // Check if account is expired
  bool get isExpired {
    final expiry = expiryDateTime;
    if (expiry == null) return false;
    return DateTime.now().isAfter(expiry);
  }
}
