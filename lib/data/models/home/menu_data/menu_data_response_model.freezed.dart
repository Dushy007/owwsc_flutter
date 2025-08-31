// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_data_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MenuDataResponse {

@JsonKey(name: 'Status') String get status;@JsonKey(name: 'StatusCode') int get statusCode;@JsonKey(name: 'Data') List<MenuItem> get data;
/// Create a copy of MenuDataResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MenuDataResponseCopyWith<MenuDataResponse> get copyWith => _$MenuDataResponseCopyWithImpl<MenuDataResponse>(this as MenuDataResponse, _$identity);

  /// Serializes this MenuDataResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MenuDataResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,statusCode,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'MenuDataResponse(status: $status, statusCode: $statusCode, data: $data)';
}


}

/// @nodoc
abstract mixin class $MenuDataResponseCopyWith<$Res>  {
  factory $MenuDataResponseCopyWith(MenuDataResponse value, $Res Function(MenuDataResponse) _then) = _$MenuDataResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Status') String status,@JsonKey(name: 'StatusCode') int statusCode,@JsonKey(name: 'Data') List<MenuItem> data
});




}
/// @nodoc
class _$MenuDataResponseCopyWithImpl<$Res>
    implements $MenuDataResponseCopyWith<$Res> {
  _$MenuDataResponseCopyWithImpl(this._self, this._then);

  final MenuDataResponse _self;
  final $Res Function(MenuDataResponse) _then;

/// Create a copy of MenuDataResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? statusCode = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<MenuItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [MenuDataResponse].
extension MenuDataResponsePatterns on MenuDataResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MenuDataResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MenuDataResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MenuDataResponse value)  $default,){
final _that = this;
switch (_that) {
case _MenuDataResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MenuDataResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MenuDataResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Status')  String status, @JsonKey(name: 'StatusCode')  int statusCode, @JsonKey(name: 'Data')  List<MenuItem> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MenuDataResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Status')  String status, @JsonKey(name: 'StatusCode')  int statusCode, @JsonKey(name: 'Data')  List<MenuItem> data)  $default,) {final _that = this;
switch (_that) {
case _MenuDataResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Status')  String status, @JsonKey(name: 'StatusCode')  int statusCode, @JsonKey(name: 'Data')  List<MenuItem> data)?  $default,) {final _that = this;
switch (_that) {
case _MenuDataResponse() when $default != null:
return $default(_that.status,_that.statusCode,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MenuDataResponse implements MenuDataResponse {
  const _MenuDataResponse({@JsonKey(name: 'Status') required this.status, @JsonKey(name: 'StatusCode') required this.statusCode, @JsonKey(name: 'Data') required final  List<MenuItem> data}): _data = data;
  factory _MenuDataResponse.fromJson(Map<String, dynamic> json) => _$MenuDataResponseFromJson(json);

@override@JsonKey(name: 'Status') final  String status;
@override@JsonKey(name: 'StatusCode') final  int statusCode;
 final  List<MenuItem> _data;
@override@JsonKey(name: 'Data') List<MenuItem> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of MenuDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MenuDataResponseCopyWith<_MenuDataResponse> get copyWith => __$MenuDataResponseCopyWithImpl<_MenuDataResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MenuDataResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MenuDataResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,statusCode,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'MenuDataResponse(status: $status, statusCode: $statusCode, data: $data)';
}


}

/// @nodoc
abstract mixin class _$MenuDataResponseCopyWith<$Res> implements $MenuDataResponseCopyWith<$Res> {
  factory _$MenuDataResponseCopyWith(_MenuDataResponse value, $Res Function(_MenuDataResponse) _then) = __$MenuDataResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Status') String status,@JsonKey(name: 'StatusCode') int statusCode,@JsonKey(name: 'Data') List<MenuItem> data
});




}
/// @nodoc
class __$MenuDataResponseCopyWithImpl<$Res>
    implements _$MenuDataResponseCopyWith<$Res> {
  __$MenuDataResponseCopyWithImpl(this._self, this._then);

  final _MenuDataResponse _self;
  final $Res Function(_MenuDataResponse) _then;

/// Create a copy of MenuDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? statusCode = null,Object? data = null,}) {
  return _then(_MenuDataResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<MenuItem>,
  ));
}


}


/// @nodoc
mixin _$MenuItem {

@JsonKey(name: 'MenuId') int get menuId;@JsonKey(name: 'Parent_Id') int? get parentId;@JsonKey(name: 'Module_Name') String get moduleName;@JsonKey(name: 'Module_Name_Arabic') String get moduleNameArabic;@JsonKey(name: 'Menu_Icon') String? get menuIcon;@JsonKey(name: 'Target_Url') String get targetUrl;@JsonKey(name: 'PersonTypeID') int get personTypeId;@JsonKey(name: 'PersonTypeCode') String get personTypeCode;@JsonKey(name: 'PTypeEngName') String get pTypeEngName;@JsonKey(name: 'PTypeArabName') String? get pTypeArabName;@JsonKey(name: 'isPrivate') bool? get isPrivate;@JsonKey(name: 'quickMenu') bool get quickMenu;@JsonKey(name: 'IsPrepaidServices') bool get isPrepaidServices;@JsonKey(name: 'BranchServiceEnablementFlag') int get branchServiceEnablementFlag;@JsonKey(name: 'BracnhServiceURL') String? get branchServiceUrl;
/// Create a copy of MenuItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MenuItemCopyWith<MenuItem> get copyWith => _$MenuItemCopyWithImpl<MenuItem>(this as MenuItem, _$identity);

  /// Serializes this MenuItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MenuItem&&(identical(other.menuId, menuId) || other.menuId == menuId)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.moduleName, moduleName) || other.moduleName == moduleName)&&(identical(other.moduleNameArabic, moduleNameArabic) || other.moduleNameArabic == moduleNameArabic)&&(identical(other.menuIcon, menuIcon) || other.menuIcon == menuIcon)&&(identical(other.targetUrl, targetUrl) || other.targetUrl == targetUrl)&&(identical(other.personTypeId, personTypeId) || other.personTypeId == personTypeId)&&(identical(other.personTypeCode, personTypeCode) || other.personTypeCode == personTypeCode)&&(identical(other.pTypeEngName, pTypeEngName) || other.pTypeEngName == pTypeEngName)&&(identical(other.pTypeArabName, pTypeArabName) || other.pTypeArabName == pTypeArabName)&&(identical(other.isPrivate, isPrivate) || other.isPrivate == isPrivate)&&(identical(other.quickMenu, quickMenu) || other.quickMenu == quickMenu)&&(identical(other.isPrepaidServices, isPrepaidServices) || other.isPrepaidServices == isPrepaidServices)&&(identical(other.branchServiceEnablementFlag, branchServiceEnablementFlag) || other.branchServiceEnablementFlag == branchServiceEnablementFlag)&&(identical(other.branchServiceUrl, branchServiceUrl) || other.branchServiceUrl == branchServiceUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,menuId,parentId,moduleName,moduleNameArabic,menuIcon,targetUrl,personTypeId,personTypeCode,pTypeEngName,pTypeArabName,isPrivate,quickMenu,isPrepaidServices,branchServiceEnablementFlag,branchServiceUrl);

@override
String toString() {
  return 'MenuItem(menuId: $menuId, parentId: $parentId, moduleName: $moduleName, moduleNameArabic: $moduleNameArabic, menuIcon: $menuIcon, targetUrl: $targetUrl, personTypeId: $personTypeId, personTypeCode: $personTypeCode, pTypeEngName: $pTypeEngName, pTypeArabName: $pTypeArabName, isPrivate: $isPrivate, quickMenu: $quickMenu, isPrepaidServices: $isPrepaidServices, branchServiceEnablementFlag: $branchServiceEnablementFlag, branchServiceUrl: $branchServiceUrl)';
}


}

/// @nodoc
abstract mixin class $MenuItemCopyWith<$Res>  {
  factory $MenuItemCopyWith(MenuItem value, $Res Function(MenuItem) _then) = _$MenuItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'MenuId') int menuId,@JsonKey(name: 'Parent_Id') int? parentId,@JsonKey(name: 'Module_Name') String moduleName,@JsonKey(name: 'Module_Name_Arabic') String moduleNameArabic,@JsonKey(name: 'Menu_Icon') String? menuIcon,@JsonKey(name: 'Target_Url') String targetUrl,@JsonKey(name: 'PersonTypeID') int personTypeId,@JsonKey(name: 'PersonTypeCode') String personTypeCode,@JsonKey(name: 'PTypeEngName') String pTypeEngName,@JsonKey(name: 'PTypeArabName') String? pTypeArabName,@JsonKey(name: 'isPrivate') bool? isPrivate,@JsonKey(name: 'quickMenu') bool quickMenu,@JsonKey(name: 'IsPrepaidServices') bool isPrepaidServices,@JsonKey(name: 'BranchServiceEnablementFlag') int branchServiceEnablementFlag,@JsonKey(name: 'BracnhServiceURL') String? branchServiceUrl
});




}
/// @nodoc
class _$MenuItemCopyWithImpl<$Res>
    implements $MenuItemCopyWith<$Res> {
  _$MenuItemCopyWithImpl(this._self, this._then);

  final MenuItem _self;
  final $Res Function(MenuItem) _then;

/// Create a copy of MenuItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? menuId = null,Object? parentId = freezed,Object? moduleName = null,Object? moduleNameArabic = null,Object? menuIcon = freezed,Object? targetUrl = null,Object? personTypeId = null,Object? personTypeCode = null,Object? pTypeEngName = null,Object? pTypeArabName = freezed,Object? isPrivate = freezed,Object? quickMenu = null,Object? isPrepaidServices = null,Object? branchServiceEnablementFlag = null,Object? branchServiceUrl = freezed,}) {
  return _then(_self.copyWith(
menuId: null == menuId ? _self.menuId : menuId // ignore: cast_nullable_to_non_nullable
as int,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,moduleName: null == moduleName ? _self.moduleName : moduleName // ignore: cast_nullable_to_non_nullable
as String,moduleNameArabic: null == moduleNameArabic ? _self.moduleNameArabic : moduleNameArabic // ignore: cast_nullable_to_non_nullable
as String,menuIcon: freezed == menuIcon ? _self.menuIcon : menuIcon // ignore: cast_nullable_to_non_nullable
as String?,targetUrl: null == targetUrl ? _self.targetUrl : targetUrl // ignore: cast_nullable_to_non_nullable
as String,personTypeId: null == personTypeId ? _self.personTypeId : personTypeId // ignore: cast_nullable_to_non_nullable
as int,personTypeCode: null == personTypeCode ? _self.personTypeCode : personTypeCode // ignore: cast_nullable_to_non_nullable
as String,pTypeEngName: null == pTypeEngName ? _self.pTypeEngName : pTypeEngName // ignore: cast_nullable_to_non_nullable
as String,pTypeArabName: freezed == pTypeArabName ? _self.pTypeArabName : pTypeArabName // ignore: cast_nullable_to_non_nullable
as String?,isPrivate: freezed == isPrivate ? _self.isPrivate : isPrivate // ignore: cast_nullable_to_non_nullable
as bool?,quickMenu: null == quickMenu ? _self.quickMenu : quickMenu // ignore: cast_nullable_to_non_nullable
as bool,isPrepaidServices: null == isPrepaidServices ? _self.isPrepaidServices : isPrepaidServices // ignore: cast_nullable_to_non_nullable
as bool,branchServiceEnablementFlag: null == branchServiceEnablementFlag ? _self.branchServiceEnablementFlag : branchServiceEnablementFlag // ignore: cast_nullable_to_non_nullable
as int,branchServiceUrl: freezed == branchServiceUrl ? _self.branchServiceUrl : branchServiceUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MenuItem].
extension MenuItemPatterns on MenuItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MenuItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MenuItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MenuItem value)  $default,){
final _that = this;
switch (_that) {
case _MenuItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MenuItem value)?  $default,){
final _that = this;
switch (_that) {
case _MenuItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'MenuId')  int menuId, @JsonKey(name: 'Parent_Id')  int? parentId, @JsonKey(name: 'Module_Name')  String moduleName, @JsonKey(name: 'Module_Name_Arabic')  String moduleNameArabic, @JsonKey(name: 'Menu_Icon')  String? menuIcon, @JsonKey(name: 'Target_Url')  String targetUrl, @JsonKey(name: 'PersonTypeID')  int personTypeId, @JsonKey(name: 'PersonTypeCode')  String personTypeCode, @JsonKey(name: 'PTypeEngName')  String pTypeEngName, @JsonKey(name: 'PTypeArabName')  String? pTypeArabName, @JsonKey(name: 'isPrivate')  bool? isPrivate, @JsonKey(name: 'quickMenu')  bool quickMenu, @JsonKey(name: 'IsPrepaidServices')  bool isPrepaidServices, @JsonKey(name: 'BranchServiceEnablementFlag')  int branchServiceEnablementFlag, @JsonKey(name: 'BracnhServiceURL')  String? branchServiceUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MenuItem() when $default != null:
return $default(_that.menuId,_that.parentId,_that.moduleName,_that.moduleNameArabic,_that.menuIcon,_that.targetUrl,_that.personTypeId,_that.personTypeCode,_that.pTypeEngName,_that.pTypeArabName,_that.isPrivate,_that.quickMenu,_that.isPrepaidServices,_that.branchServiceEnablementFlag,_that.branchServiceUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'MenuId')  int menuId, @JsonKey(name: 'Parent_Id')  int? parentId, @JsonKey(name: 'Module_Name')  String moduleName, @JsonKey(name: 'Module_Name_Arabic')  String moduleNameArabic, @JsonKey(name: 'Menu_Icon')  String? menuIcon, @JsonKey(name: 'Target_Url')  String targetUrl, @JsonKey(name: 'PersonTypeID')  int personTypeId, @JsonKey(name: 'PersonTypeCode')  String personTypeCode, @JsonKey(name: 'PTypeEngName')  String pTypeEngName, @JsonKey(name: 'PTypeArabName')  String? pTypeArabName, @JsonKey(name: 'isPrivate')  bool? isPrivate, @JsonKey(name: 'quickMenu')  bool quickMenu, @JsonKey(name: 'IsPrepaidServices')  bool isPrepaidServices, @JsonKey(name: 'BranchServiceEnablementFlag')  int branchServiceEnablementFlag, @JsonKey(name: 'BracnhServiceURL')  String? branchServiceUrl)  $default,) {final _that = this;
switch (_that) {
case _MenuItem():
return $default(_that.menuId,_that.parentId,_that.moduleName,_that.moduleNameArabic,_that.menuIcon,_that.targetUrl,_that.personTypeId,_that.personTypeCode,_that.pTypeEngName,_that.pTypeArabName,_that.isPrivate,_that.quickMenu,_that.isPrepaidServices,_that.branchServiceEnablementFlag,_that.branchServiceUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'MenuId')  int menuId, @JsonKey(name: 'Parent_Id')  int? parentId, @JsonKey(name: 'Module_Name')  String moduleName, @JsonKey(name: 'Module_Name_Arabic')  String moduleNameArabic, @JsonKey(name: 'Menu_Icon')  String? menuIcon, @JsonKey(name: 'Target_Url')  String targetUrl, @JsonKey(name: 'PersonTypeID')  int personTypeId, @JsonKey(name: 'PersonTypeCode')  String personTypeCode, @JsonKey(name: 'PTypeEngName')  String pTypeEngName, @JsonKey(name: 'PTypeArabName')  String? pTypeArabName, @JsonKey(name: 'isPrivate')  bool? isPrivate, @JsonKey(name: 'quickMenu')  bool quickMenu, @JsonKey(name: 'IsPrepaidServices')  bool isPrepaidServices, @JsonKey(name: 'BranchServiceEnablementFlag')  int branchServiceEnablementFlag, @JsonKey(name: 'BracnhServiceURL')  String? branchServiceUrl)?  $default,) {final _that = this;
switch (_that) {
case _MenuItem() when $default != null:
return $default(_that.menuId,_that.parentId,_that.moduleName,_that.moduleNameArabic,_that.menuIcon,_that.targetUrl,_that.personTypeId,_that.personTypeCode,_that.pTypeEngName,_that.pTypeArabName,_that.isPrivate,_that.quickMenu,_that.isPrepaidServices,_that.branchServiceEnablementFlag,_that.branchServiceUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MenuItem implements MenuItem {
  const _MenuItem({@JsonKey(name: 'MenuId') required this.menuId, @JsonKey(name: 'Parent_Id') this.parentId, @JsonKey(name: 'Module_Name') required this.moduleName, @JsonKey(name: 'Module_Name_Arabic') required this.moduleNameArabic, @JsonKey(name: 'Menu_Icon') this.menuIcon, @JsonKey(name: 'Target_Url') required this.targetUrl, @JsonKey(name: 'PersonTypeID') required this.personTypeId, @JsonKey(name: 'PersonTypeCode') required this.personTypeCode, @JsonKey(name: 'PTypeEngName') required this.pTypeEngName, @JsonKey(name: 'PTypeArabName') this.pTypeArabName, @JsonKey(name: 'isPrivate') this.isPrivate, @JsonKey(name: 'quickMenu') required this.quickMenu, @JsonKey(name: 'IsPrepaidServices') required this.isPrepaidServices, @JsonKey(name: 'BranchServiceEnablementFlag') required this.branchServiceEnablementFlag, @JsonKey(name: 'BracnhServiceURL') this.branchServiceUrl});
  factory _MenuItem.fromJson(Map<String, dynamic> json) => _$MenuItemFromJson(json);

@override@JsonKey(name: 'MenuId') final  int menuId;
@override@JsonKey(name: 'Parent_Id') final  int? parentId;
@override@JsonKey(name: 'Module_Name') final  String moduleName;
@override@JsonKey(name: 'Module_Name_Arabic') final  String moduleNameArabic;
@override@JsonKey(name: 'Menu_Icon') final  String? menuIcon;
@override@JsonKey(name: 'Target_Url') final  String targetUrl;
@override@JsonKey(name: 'PersonTypeID') final  int personTypeId;
@override@JsonKey(name: 'PersonTypeCode') final  String personTypeCode;
@override@JsonKey(name: 'PTypeEngName') final  String pTypeEngName;
@override@JsonKey(name: 'PTypeArabName') final  String? pTypeArabName;
@override@JsonKey(name: 'isPrivate') final  bool? isPrivate;
@override@JsonKey(name: 'quickMenu') final  bool quickMenu;
@override@JsonKey(name: 'IsPrepaidServices') final  bool isPrepaidServices;
@override@JsonKey(name: 'BranchServiceEnablementFlag') final  int branchServiceEnablementFlag;
@override@JsonKey(name: 'BracnhServiceURL') final  String? branchServiceUrl;

/// Create a copy of MenuItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MenuItemCopyWith<_MenuItem> get copyWith => __$MenuItemCopyWithImpl<_MenuItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MenuItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MenuItem&&(identical(other.menuId, menuId) || other.menuId == menuId)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.moduleName, moduleName) || other.moduleName == moduleName)&&(identical(other.moduleNameArabic, moduleNameArabic) || other.moduleNameArabic == moduleNameArabic)&&(identical(other.menuIcon, menuIcon) || other.menuIcon == menuIcon)&&(identical(other.targetUrl, targetUrl) || other.targetUrl == targetUrl)&&(identical(other.personTypeId, personTypeId) || other.personTypeId == personTypeId)&&(identical(other.personTypeCode, personTypeCode) || other.personTypeCode == personTypeCode)&&(identical(other.pTypeEngName, pTypeEngName) || other.pTypeEngName == pTypeEngName)&&(identical(other.pTypeArabName, pTypeArabName) || other.pTypeArabName == pTypeArabName)&&(identical(other.isPrivate, isPrivate) || other.isPrivate == isPrivate)&&(identical(other.quickMenu, quickMenu) || other.quickMenu == quickMenu)&&(identical(other.isPrepaidServices, isPrepaidServices) || other.isPrepaidServices == isPrepaidServices)&&(identical(other.branchServiceEnablementFlag, branchServiceEnablementFlag) || other.branchServiceEnablementFlag == branchServiceEnablementFlag)&&(identical(other.branchServiceUrl, branchServiceUrl) || other.branchServiceUrl == branchServiceUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,menuId,parentId,moduleName,moduleNameArabic,menuIcon,targetUrl,personTypeId,personTypeCode,pTypeEngName,pTypeArabName,isPrivate,quickMenu,isPrepaidServices,branchServiceEnablementFlag,branchServiceUrl);

@override
String toString() {
  return 'MenuItem(menuId: $menuId, parentId: $parentId, moduleName: $moduleName, moduleNameArabic: $moduleNameArabic, menuIcon: $menuIcon, targetUrl: $targetUrl, personTypeId: $personTypeId, personTypeCode: $personTypeCode, pTypeEngName: $pTypeEngName, pTypeArabName: $pTypeArabName, isPrivate: $isPrivate, quickMenu: $quickMenu, isPrepaidServices: $isPrepaidServices, branchServiceEnablementFlag: $branchServiceEnablementFlag, branchServiceUrl: $branchServiceUrl)';
}


}

/// @nodoc
abstract mixin class _$MenuItemCopyWith<$Res> implements $MenuItemCopyWith<$Res> {
  factory _$MenuItemCopyWith(_MenuItem value, $Res Function(_MenuItem) _then) = __$MenuItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'MenuId') int menuId,@JsonKey(name: 'Parent_Id') int? parentId,@JsonKey(name: 'Module_Name') String moduleName,@JsonKey(name: 'Module_Name_Arabic') String moduleNameArabic,@JsonKey(name: 'Menu_Icon') String? menuIcon,@JsonKey(name: 'Target_Url') String targetUrl,@JsonKey(name: 'PersonTypeID') int personTypeId,@JsonKey(name: 'PersonTypeCode') String personTypeCode,@JsonKey(name: 'PTypeEngName') String pTypeEngName,@JsonKey(name: 'PTypeArabName') String? pTypeArabName,@JsonKey(name: 'isPrivate') bool? isPrivate,@JsonKey(name: 'quickMenu') bool quickMenu,@JsonKey(name: 'IsPrepaidServices') bool isPrepaidServices,@JsonKey(name: 'BranchServiceEnablementFlag') int branchServiceEnablementFlag,@JsonKey(name: 'BracnhServiceURL') String? branchServiceUrl
});




}
/// @nodoc
class __$MenuItemCopyWithImpl<$Res>
    implements _$MenuItemCopyWith<$Res> {
  __$MenuItemCopyWithImpl(this._self, this._then);

  final _MenuItem _self;
  final $Res Function(_MenuItem) _then;

/// Create a copy of MenuItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? menuId = null,Object? parentId = freezed,Object? moduleName = null,Object? moduleNameArabic = null,Object? menuIcon = freezed,Object? targetUrl = null,Object? personTypeId = null,Object? personTypeCode = null,Object? pTypeEngName = null,Object? pTypeArabName = freezed,Object? isPrivate = freezed,Object? quickMenu = null,Object? isPrepaidServices = null,Object? branchServiceEnablementFlag = null,Object? branchServiceUrl = freezed,}) {
  return _then(_MenuItem(
menuId: null == menuId ? _self.menuId : menuId // ignore: cast_nullable_to_non_nullable
as int,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,moduleName: null == moduleName ? _self.moduleName : moduleName // ignore: cast_nullable_to_non_nullable
as String,moduleNameArabic: null == moduleNameArabic ? _self.moduleNameArabic : moduleNameArabic // ignore: cast_nullable_to_non_nullable
as String,menuIcon: freezed == menuIcon ? _self.menuIcon : menuIcon // ignore: cast_nullable_to_non_nullable
as String?,targetUrl: null == targetUrl ? _self.targetUrl : targetUrl // ignore: cast_nullable_to_non_nullable
as String,personTypeId: null == personTypeId ? _self.personTypeId : personTypeId // ignore: cast_nullable_to_non_nullable
as int,personTypeCode: null == personTypeCode ? _self.personTypeCode : personTypeCode // ignore: cast_nullable_to_non_nullable
as String,pTypeEngName: null == pTypeEngName ? _self.pTypeEngName : pTypeEngName // ignore: cast_nullable_to_non_nullable
as String,pTypeArabName: freezed == pTypeArabName ? _self.pTypeArabName : pTypeArabName // ignore: cast_nullable_to_non_nullable
as String?,isPrivate: freezed == isPrivate ? _self.isPrivate : isPrivate // ignore: cast_nullable_to_non_nullable
as bool?,quickMenu: null == quickMenu ? _self.quickMenu : quickMenu // ignore: cast_nullable_to_non_nullable
as bool,isPrepaidServices: null == isPrepaidServices ? _self.isPrepaidServices : isPrepaidServices // ignore: cast_nullable_to_non_nullable
as bool,branchServiceEnablementFlag: null == branchServiceEnablementFlag ? _self.branchServiceEnablementFlag : branchServiceEnablementFlag // ignore: cast_nullable_to_non_nullable
as int,branchServiceUrl: freezed == branchServiceUrl ? _self.branchServiceUrl : branchServiceUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
