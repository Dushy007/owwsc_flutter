import 'package:flutter/material.dart';
import 'package:owwsc_mock_responsive/core/constants/app_constants.dart';

class AppTheme {
  // Color Constants
  static const Color primaryColor = Color(0xFF01474D);
  static const Color secondaryColor = Color(0xFF03DAC6);
  static const Color errorColor = Color(0xFFB00020);
  static const Color surfaceColor = Color(0xFFFFFFFF);
  static const Color backgroundColor = Color(0xFFFFFFFF);

  // Dark Theme Colors
  static const Color darkPrimaryColor = Color(0xFF01474D);
  static const Color darkSurfaceColor = Color(0xFF121212);
  static const Color darkBackgroundColor = Color(0xFF181818);

  //Custom Colors
  static const Color primaryTextColor = Color(0xFF2C2A27);
  static const Color textFieldBorderColor = Color(0xFFB9B9B9);


  static const double dialogBorderRadius = 15.0;

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: const ColorScheme.light(
        primary: primaryColor,
        secondary: secondaryColor,
        error: errorColor,
        surface: surfaceColor,
        background: backgroundColor,
      ),
      appBarTheme: _buildAppBarTheme(),
      textTheme: _buildTextTheme(false),
      // appBarTheme: _buildAppBarTheme(false),
      elevatedButtonTheme: _buildElevatedButtonTheme(),
      // cardTheme: _buildCardTheme(false),
      inputDecorationTheme: _buildInputDecorationTheme(false),
      checkboxTheme: _buildCheckboxTheme(false),
      dialogTheme: _buildDialogTheme(),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: const ColorScheme.dark(
        primary: darkPrimaryColor,
        secondary: secondaryColor,
        error: errorColor,
        surface: darkSurfaceColor,
        background: darkBackgroundColor,
      ),
      appBarTheme: _buildAppBarTheme(),
      textTheme: _buildTextTheme(true),
      // appBarTheme: _buildAppBarTheme(true),
      elevatedButtonTheme: _buildElevatedButtonTheme(),
      // cardTheme: _buildCardTheme(true),
      inputDecorationTheme: _buildInputDecorationTheme(true),
      checkboxTheme: _buildCheckboxTheme(true),
      dialogTheme: _buildDialogTheme(),
    );
  }

  static ElevatedButtonThemeData _buildElevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppConstants.radiusXXL),
        ),
        backgroundColor: primaryColor,
      ),
    );
  }

  static InputDecorationTheme _buildInputDecorationTheme(bool isDark) {
    return InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppConstants.spacingS),
        borderSide: BorderSide(
          color: isDark ? Colors.white24 : textFieldBorderColor,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppConstants.spacingS),
        borderSide: BorderSide(
          color: isDark ? Colors.white24 : textFieldBorderColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppConstants.spacingS),
        borderSide: const BorderSide(color: primaryColor, width: 2),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppConstants.spacingS),
        borderSide: BorderSide(color: isDark ? Colors.white24 : textFieldBorderColor)
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: AppConstants.spacingM,
        vertical: AppConstants.spacingXM,
      ),
    );
  }

  static CheckboxThemeData _buildCheckboxTheme(bool isDark) {
    return CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith<Color>((states) {
        // Always white background, regardless of theme
        return Colors.white;
      }),
      checkColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.selected)) {
          // Tick mark is primary color when checked
          return primaryColor;
        }
        return Colors.transparent;
      }),
      side: WidgetStateBorderSide.resolveWith((states) {
        // Border is always primary color
        return BorderSide(color: primaryColor, width: 1.0);
      }),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConstants.radiusS),
      ),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }

  static DialogTheme _buildDialogTheme() {
    return DialogTheme(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(dialogBorderRadius)),
    );
  }

  static AppBarTheme _buildAppBarTheme() {
    return AppBarTheme(backgroundColor: primaryColor);
  }

  static TextTheme _buildTextTheme(bool isDark) {
    final Color textColor = isDark ? Colors.white : Colors.black87;

    return TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: textColor,
        letterSpacing: -0.5,
      ),
      displayMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: textColor,
        letterSpacing: -0.25,
      ),
      displaySmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: textColor,
      ),
      headlineLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: textColor,
      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: textColor,
      ),
      headlineSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: textColor,
      ),
      titleLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: textColor,
      ),
      titleMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: textColor,
      ),
      titleSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: textColor,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: textColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: textColor,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: textColor.withOpacity(0.8),
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: textColor,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: textColor,
      ),
      labelSmall: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: textColor.withOpacity(0.8),
      ),
    );
  }
}

@immutable
class AppCustomColors extends ThemeExtension<AppCustomColors> {
  const AppCustomColors({
    required this.primaryTextColor,
    required this.textFieldBorderColor,
  });

  final Color primaryTextColor;
  final Color textFieldBorderColor;

  static const AppCustomColors light = AppCustomColors(
    primaryTextColor: AppTheme.primaryTextColor,
    textFieldBorderColor: AppTheme.textFieldBorderColor,
  );

  static const AppCustomColors dark = AppCustomColors(
    primaryTextColor: AppTheme.primaryTextColor,
    textFieldBorderColor: AppTheme.textFieldBorderColor,
  );

  @override
  AppCustomColors copyWith({
    Color? primaryTextColor,
    Color? textFieldBorderColor,
  }) {
    return AppCustomColors(
      primaryTextColor: primaryTextColor ?? this.primaryTextColor,
      textFieldBorderColor: textFieldBorderColor ?? this.textFieldBorderColor,
    );
  }

  @override
  AppCustomColors lerp(AppCustomColors? other, double t) {
    if (other is! AppCustomColors) {
      return this;
    }

    return AppCustomColors(
      primaryTextColor:
          Color.lerp(primaryTextColor, other.primaryTextColor, t)!,
      textFieldBorderColor:
          Color.lerp(textFieldBorderColor, other.textFieldBorderColor, t)!,
    );
  }
}

// Extension to easily access custom colors from context
extension AppCustomColorsExtension on BuildContext {
  AppCustomColors get customColors =>
      Theme.of(this).extension<AppCustomColors>() ?? AppCustomColors.light;
}
