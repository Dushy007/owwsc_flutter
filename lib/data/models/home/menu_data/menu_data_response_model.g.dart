// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_data_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MenuDataResponse _$MenuDataResponseFromJson(Map<String, dynamic> json) =>
    _MenuDataResponse(
      status: json['Status'] as String,
      statusCode: (json['StatusCode'] as num).toInt(),
      data:
          (json['Data'] as List<dynamic>)
              .map((e) => MenuItem.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$MenuDataResponseToJson(_MenuDataResponse instance) =>
    <String, dynamic>{
      'Status': instance.status,
      'StatusCode': instance.statusCode,
      'Data': instance.data,
    };

_MenuItem _$MenuItemFromJson(Map<String, dynamic> json) => _MenuItem(
  menuId: (json['MenuId'] as num).toInt(),
  parentId: (json['Parent_Id'] as num?)?.toInt(),
  moduleName: json['Module_Name'] as String,
  moduleNameArabic: json['Module_Name_Arabic'] as String,
  menuIcon: json['Menu_Icon'] as String,
  targetUrl: json['Target_Url'] as String,
  personTypeId: (json['PersonTypeID'] as num).toInt(),
  personTypeCode: json['PersonTypeCode'] as String,
  pTypeEngName: json['PTypeEngName'] as String,
  pTypeArabName: json['PTypeArabName'] as String?,
  isPrivate: json['isPrivate'] as bool?,
  quickMenu: json['quickMenu'] as bool,
  isPrepaidServices: json['IsPrepaidServices'] as bool,
  branchServiceEnablementFlag:
      (json['BranchServiceEnablementFlag'] as num).toInt(),
  branchServiceUrl: json['BracnhServiceURL'] as String?,
);

Map<String, dynamic> _$MenuItemToJson(_MenuItem instance) => <String, dynamic>{
  'MenuId': instance.menuId,
  'Parent_Id': instance.parentId,
  'Module_Name': instance.moduleName,
  'Module_Name_Arabic': instance.moduleNameArabic,
  'Menu_Icon': instance.menuIcon,
  'Target_Url': instance.targetUrl,
  'PersonTypeID': instance.personTypeId,
  'PersonTypeCode': instance.personTypeCode,
  'PTypeEngName': instance.pTypeEngName,
  'PTypeArabName': instance.pTypeArabName,
  'isPrivate': instance.isPrivate,
  'quickMenu': instance.quickMenu,
  'IsPrepaidServices': instance.isPrepaidServices,
  'BranchServiceEnablementFlag': instance.branchServiceEnablementFlag,
  'BracnhServiceURL': instance.branchServiceUrl,
};
