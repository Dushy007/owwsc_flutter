import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_data_response_model.freezed.dart';
part 'menu_data_response_model.g.dart';

@freezed
abstract class MenuDataResponse with _$MenuDataResponse {
  const factory MenuDataResponse({
    @JsonKey(name: 'Status') required String status,
    @JsonKey(name: 'StatusCode') required int statusCode,
    @JsonKey(name: 'Data') required List<MenuItem> data,
}) = _MenuDataResponse;

  factory MenuDataResponse.fromJson(Map<String, dynamic> json) => _$MenuDataResponseFromJson(json);
}

@freezed
abstract class MenuItem with _$MenuItem {
  const factory MenuItem({
    @JsonKey(name: 'MenuId') required int menuId,
    @JsonKey(name: 'Parent_Id') int? parentId,
    @JsonKey(name: 'Module_Name') required String moduleName,
    @JsonKey(name: 'Module_Name_Arabic') required String moduleNameArabic,
    @JsonKey(name: 'Menu_Icon') required String menuIcon,
    @JsonKey(name: 'Target_Url') required String targetUrl,
    @JsonKey(name: 'PersonTypeID') required int personTypeId,
    @JsonKey(name: 'PersonTypeCode') required String personTypeCode,
    @JsonKey(name: 'PTypeEngName') required String pTypeEngName,
    @JsonKey(name: 'PTypeArabName') String? pTypeArabName,
    @JsonKey(name: 'isPrivate') bool? isPrivate,
    @JsonKey(name: 'quickMenu') required bool quickMenu,
    @JsonKey(name: 'IsPrepaidServices') required bool isPrepaidServices,
    @JsonKey(name: 'BranchServiceEnablementFlag') required int branchServiceEnablementFlag,
    @JsonKey(name: 'BracnhServiceURL') String? branchServiceUrl,
  }) = _MenuItem;

  factory MenuItem.fromJson(Map<String, dynamic> json) =>
      _$MenuItemFromJson(json);
}

extension MenuDataResponseExtension on MenuDataResponse {
  /// Get children for a specific parent menu ID
  List<MenuItem> getChildrenFor(int parentId) =>
      data.where((item) => item.parentId == parentId).toList();
}