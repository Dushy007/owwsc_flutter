import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:owwsc_mock_responsive/core/constants/api_constants.dart';
import 'package:owwsc_mock_responsive/core/utils/encrypt_decrypt.dart';
import 'package:owwsc_mock_responsive/data/datasources/local/local_storage_helper.dart';
import 'package:owwsc_mock_responsive/data/datasources/remote/dio_client.dart';
import 'package:owwsc_mock_responsive/data/models/language/update_user_profile_response_model.dart';

class LanguageService {
  static const String _languageKey = 'language';

  final DioClient _client = DioClient();

  // Load language from SharedPreferences
  Future<String?> getSavedLanguage() async {
    return await LocalStorageHelper.get(_languageKey);
  }

  // Save language to SharedPreferences
  Future<bool> saveLanguageLocally(String languageCode) async {
    try {
       await LocalStorageHelper.set(_languageKey, languageCode);
       return true;
    } catch(e) {
      debugPrint("Error executing saveLanguageLocally(): $e");
      return false;
    }
  }

  // Update language in remote database
  Future<bool> updateLanguageInDatabase(String languageCode) async {
    final prefLang = languageCode;
    final userId = await LocalStorageHelper.get<String>('user_id');
    final currentLanguage = await LocalStorageHelper.get<String>('language');
    final emailOrMobile = await LocalStorageHelper.get<String>('email_or_mobile');
    final userName = await LocalStorageHelper.get<String>('username');
    final  customerType = await LocalStorageHelper.get<String>('person_type');
    final nationalId = await LocalStorageHelper.get<String>('national_id');
    final crNumber = await LocalStorageHelper.get<String>('cr_number');
    final expiryDate = await LocalStorageHelper.get<String>('expiry_date');
    final isSmsNtf = await LocalStorageHelper.get<String>('sms_notification');
    final isEmailNtf = await LocalStorageHelper.get<String>('email_notification');
    final emailId = await LocalStorageHelper.get<String>('email');
    final mobileNumber = await LocalStorageHelper.get<String>('mobile_number');
    final isEmailChanged =  await LocalStorageHelper.get<String>('email_changed');
    final isMobileChanged =  await LocalStorageHelper.get<String>('mobile_changed');
    final isEmailVerified =  await LocalStorageHelper.get<String>('email_verified');
    final isMobileVerified =  await LocalStorageHelper.get<String>('mobile_verified');
    final isAlertInSms =  await LocalStorageHelper.get<String>('alert_in_sms');
    final isAlertInEmail =  await LocalStorageHelper.get<String>('alert_in_email');
    final isAlertInWhatsapp =  await LocalStorageHelper.get<String>('alert_in_whatsapp');
    final fullNameEn =  await LocalStorageHelper.get<String>('full_name_en');
    final fullNameAr =  await LocalStorageHelper.get<String>('full_name_ar');

    String convertDate(String? dateString) {
      if(dateString == null || dateString.isEmpty) {
        return "";
      }

      // Define input format
      DateFormat inputFormat = DateFormat('dd-MM-yyyy');

      // Parse the date
      DateTime parsedDate = inputFormat.parse(dateString);

      // Define output format
      DateFormat outputFormat = DateFormat('yyyy-MM-dd');

      // Return formatted date
      return outputFormat.format(parsedDate);
    }

    try {
      final response = await _client.post(
        ApiConstants.updateUserProfile,
        fields: {
          'OTP': '',
          'UserID': userId,
          'language': currentLanguage,
          'EmailORMobile': encryptAndEncode(emailOrMobile ?? ""),
          'IsCCU': true,
          'Name': encryptAndEncode(userName ?? ""),
          'CustomerType': customerType,
          'PrefLang' : prefLang,
          'ProfilePic': '',
          'NationalID': nationalId,
          'CRNumber': crNumber,
          'ExpiryDate': convertDate(expiryDate ?? ""),
          'IsSMSNTF': isSmsNtf,
          'IsEmailNTF': isEmailNtf,
          'EmailID': encryptAndEncode(emailId ?? ""),
          'MobileNumber': encryptAndEncode(mobileNumber ?? ""),
          'IsEmailChanged': isEmailChanged,
          'IsMobileChanged': isMobileChanged,
          'IsEmailVerified': isEmailVerified,
          'IsMobileVerified': isMobileVerified,
          'IsAlertinSMS' : isAlertInSms,
          'IsAlertinEMAIL':isAlertInEmail,
          'IsAlertinWhatsapp': isAlertInWhatsapp,
          'FullNameEn': encryptAndEncode(fullNameEn ?? ""),
              'FullNameAr': encryptAndEncode(fullNameAr ?? ""),
              'FirstNameEn': '',
          'FirstNameAr': '',
          'SecondNameEn': '',
          'SecondNameAr': '',
          'ThirdNameEn': '',
          'ThirdNameAr': '',
          'FamilyNameEn': '',
          'FamilyNameAr': '',
          'ROPRegisteredGSM':'',
        }
      );

      final jsonMap = jsonDecode(response.data) as Map<String, dynamic>;
      final updateUserProfileResponse = UpdateUserProfileResponse.fromJson(jsonMap);

      return updateUserProfileResponse.statusCode == 605;
    } catch (e) {
      throw Exception('Failed to update language in database: $e');
    }
  }
}