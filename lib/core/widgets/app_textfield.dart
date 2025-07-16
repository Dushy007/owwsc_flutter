import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String? hintText;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final bool autoValidateMode;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final bool enabled;
  final bool readOnly;
  final void Function()? onTap;

  const AppTextFormField({
    required this.controller,
    required this.labelText,
    this.hintText,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.autoValidateMode = false,
    this.onChanged,
    this.validator,
    this.textInputAction,
    this.focusNode,
    this.enabled = true,
    this.onTap,
    this.readOnly = false,
    super.key,
  });

  factory AppTextFormField.text({
    required TextEditingController controller,
    required String labelText,
    String? hintText,
    Widget? prefixIcon,
    void Function(String)? onChanged,
    String? Function(String?)? validator,
    bool autoValidateMode = false,
    TextInputAction? textInputAction,
    bool enabled = true,
  }) {
    return AppTextFormField(
      controller: controller,
      labelText: labelText,
      hintText: hintText,
      keyboardType: TextInputType.text,
      prefixIcon: prefixIcon,
      validator: validator,
      onChanged: onChanged,
      autoValidateMode: autoValidateMode,
      textInputAction: textInputAction ?? TextInputAction.next,
      enabled: enabled,
    );
  }

  factory AppTextFormField.password({
    required TextEditingController controller,
    String? labelText,
    bool obscureText = true,
    Widget? prefixIcon,
    Widget? suffixIcon,
    void Function(String)? onChanged,
    String? Function(String?)? validator,
    bool autoValidateMode = true,
  }) {
    return AppTextFormField(
      controller: controller,
      labelText: labelText ?? 'Password',
      keyboardType: TextInputType.visiblePassword,
      prefixIcon: prefixIcon ?? const Icon(Icons.lock),
      suffixIcon: suffixIcon ?? const Icon(Icons.visibility_off_outlined),
      obscureText: obscureText,
      validator: validator,
      onChanged: onChanged,
      autoValidateMode: autoValidateMode,
      textInputAction: TextInputAction.done,
    );
  }

  factory AppTextFormField.dropdown({
    required TextEditingController controller,
    required String labelText,
    Widget? suffixIcon,
    void Function(String)? onChanged,
    void Function()? onTap,
    String? hintText,
  }) {
    return AppTextFormField(
      controller: controller,
      labelText: labelText,
      hintText: hintText,
      onChanged: onChanged,
      suffixIcon: suffixIcon,
      onTap: onTap,
      readOnly: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      textInputAction: textInputAction,
      focusNode: focusNode,
      autovalidateMode:
          autoValidateMode
              ? AutovalidateMode.onUserInteraction
              : AutovalidateMode.disabled,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText ?? "",
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: const OutlineInputBorder(),
      ),
      validator: validator,
      onChanged: onChanged,
      enabled: enabled,
      onTap: onTap,
      readOnly: readOnly,
    );
  }
}
