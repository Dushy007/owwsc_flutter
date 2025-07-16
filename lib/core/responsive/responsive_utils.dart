import 'package:flutter/material.dart';

enum DeviceType { mobile, tablet, desktop }

class ResponsiveUtils {
  static const double mobileBreakpoint = 600;
  static const double tabletBreakpoint = 1024;
  static const double desktopBreakpoint = 1440;

  static DeviceType getDeviceType(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    if (width < mobileBreakpoint) {
      return DeviceType.mobile;
    } else if (width < tabletBreakpoint) {
      return DeviceType.tablet;
    } else {
      return DeviceType.desktop;
    }
  }

  static bool isMobile(BuildContext context) =>
      getDeviceType(context) == DeviceType.mobile;

  static bool isTablet(BuildContext context) =>
      getDeviceType(context) == DeviceType.tablet;

  static bool isDesktop(BuildContext context) =>
      getDeviceType(context) == DeviceType.desktop;

  // Responsive font sizes
  static double getResponsiveFontSize(
    BuildContext context,
    double baseFontSize,
  ) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final deviceType = getDeviceType(context);

    switch (deviceType) {
      case DeviceType.mobile:
        return baseFontSize * (screenWidth / 375); // Base mobile width
      case DeviceType.tablet:
        return baseFontSize * 1.2;
      case DeviceType.desktop:
        return baseFontSize * 1.4;
    }
  }

  // Responsive spacing
  static double getResponsiveSpacing(BuildContext context, double baseSpacing) {
    final deviceType = getDeviceType(context);

    switch (deviceType) {
      case DeviceType.mobile:
        return baseSpacing;
      case DeviceType.tablet:
        return baseSpacing * 1.25;
      case DeviceType.desktop:
        return baseSpacing * 1.5;
    }
  }

  // Responsive padding
  static EdgeInsets getResponsivePadding(BuildContext context) {
    final deviceType = getDeviceType(context);

    switch (deviceType) {
      case DeviceType.mobile:
        return const EdgeInsets.all(16.0);
      case DeviceType.tablet:
        return const EdgeInsets.all(24.0);
      case DeviceType.desktop:
        return const EdgeInsets.all(32.0);
    }
  }

  // Text scale factor for accessibility
  static double getTextScaleFactor(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    if (width > tabletBreakpoint) {
      return 1.0;
    } else if (width > mobileBreakpoint) {
      return 0.95;
    } else {
      return 0.9;
    }
  }

  // Get container constraints
  static BoxConstraints getContainerConstraints(BuildContext context) {
    final deviceType = getDeviceType(context);

    switch (deviceType) {
      case DeviceType.mobile:
        return const BoxConstraints(maxWidth: double.infinity);
      case DeviceType.tablet:
        return const BoxConstraints(maxWidth: 800);
      case DeviceType.desktop:
        return const BoxConstraints(maxWidth: 1200);
    }
  }
}

class ResponsiveWrapper extends StatelessWidget {
  final Widget child;

  const ResponsiveWrapper({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          constraints: ResponsiveUtils.getContainerConstraints(context),
          child: child,
        );
      },
    );
  }
}
