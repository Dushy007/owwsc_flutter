import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:owwsc_mock_responsive/bloc/appdrawer/appdrawer_bloc.dart';
import 'package:owwsc_mock_responsive/bloc/appdrawer/appdrawer_state.dart';
import 'package:owwsc_mock_responsive/core/responsive/responsive_utils.dart';
import 'package:owwsc_mock_responsive/core/widgets/responsive_text.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer({super.key});

  final List<dynamic> menuItems = [
    {
      "leadingIcon": "assets/images/language.svg",
      "title": "Change Language",
      "trailingIcon": LanguageSwitcher(),
      "route": null,
    },
    {
      "leadingIcon": "assets/images/settings.svg",
      "title": "Settings",
      "trailingIcon": null,
    },
    {
      "leadingIcon": "assets/images/alarm.svg",
      "title": "Alarm",
      "trailingIcon": null,
    },
    {
      "leadingIcon": "assets/images/Saved Cards.svg",
      "title": "Saved Cards",
      "trailingIcon": null,
    },
    {
      "leadingIcon": "assets/images/Announcements.svg",
      "title": "Announcements",
      "trailingIcon": null,
    },
    {
      "leadingIcon": "assets/images/Disclaimer.svg",
      "title": "Disclaimer",
      "trailingIcon": null,
    },
    {
      "leadingIcon": "assets/images/Transaction History.svg",
      "title": "Transaction History",
      "trailingIcon": null,
    },
    {
      "leadingIcon": "assets/images/FAQ.svg",
      "title": "FAQ",
      "trailingIcon": null,
    },
    {
      "leadingIcon": "assets/images/About.svg",
      "title": "About Us",
      "trailingIcon": null,
    },
    {
      "leadingIcon": "assets/images/privacy-policy.svg",
      "title": "Privacy Policy",
      "trailingIcon": null,
    },
    {
      "leadingIcon": "assets/images/feedback.svg",
      "title": "Feedback",
      "trailingIcon": null,
    },
    {"leadingIcon": null, "title": "Contact Us", "trailingIcon": null},
    {
      "leadingIcon": "assets/images/share-the-app.svg",
      "title": "Share The App",
      "trailingIcon": null,
    },
  ];

  Widget _getLeadingIcon(
    BuildContext context, {
    String? iconPath,
    String? title,
    Color? color,
  }) {
    if (iconPath != null && iconPath.isNotEmpty) {
      if (iconPath.endsWith(".svg")) {
        return SvgPicture.asset(
          iconPath,
          width: ResponsiveUtils.getResponsiveFontSize(context, 18),
          height: ResponsiveUtils.getResponsiveFontSize(context, 18),
          colorFilter: ColorFilter.mode(
            color ?? Theme.of(context).primaryColor,
            BlendMode.srcIn,
          ),
        );
      } else {
        return Image.asset(
          iconPath,
          width: ResponsiveUtils.getResponsiveFontSize(context, 18),
          height: ResponsiveUtils.getResponsiveFontSize(context, 18),
          color: color ?? Theme.of(context).primaryColor,
        );
      }
    }

    // Fallback icons based on title
    switch (title?.toLowerCase()) {
      case 'settings':
        return Icon(Icons.settings);
      case 'alarm':
        return Icon(Icons.alarm);
      case 'saved cards':
        return Icon(Icons.credit_card);
      case 'announcements':
        return Icon(Icons.announcement);
      case 'disclaimer':
        return Icon(Icons.info);
      case 'transaction history':
        return Icon(Icons.history);
      case 'faq':
        return Icon(Icons.help);
      case 'about us':
        return Icon(Icons.info_outline);
      case 'privacy policy':
        return Icon(Icons.privacy_tip);
      case 'change language':
        return Icon(Icons.language);
      case 'contact us':
        return Icon(Icons.phone, color: Theme.of(context).primaryColor);
      default:
        return Icon(Icons.arrow_forward_ios);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<AppDrawerBloc, AppDrawerState>(
        builder: (BuildContext context, AppDrawerState state) {
          return Drawer(
            child: Column(
              children: [
                SizedBox(
                  height: ResponsiveUtils.getResponsiveSpacing(context, 120),
                  child: DrawerHeader(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: ResponsiveUtils.getResponsiveFontSize(
                            context,
                            30,
                          ),
                        ),
                        SizedBox(
                          width: ResponsiveUtils.getResponsiveSpacing(
                            context,
                            10,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ResponsiveText(
                              "Good morning,",
                              baseFontSize: 16,
                              color: Colors.white,
                            ),
                            if (state is AppDrawerDetailsFetched)
                              ResponsiveText(
                                state.username,
                                baseFontSize: 20,
                                color: Colors.white,
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                    itemCount: menuItems.length,
                    itemBuilder: (context, index) {
                      final menuItem = menuItems[index];
                      return ListTile(
                        leading: _getLeadingIcon(
                          context,
                          iconPath: menuItem['leadingIcon'],
                          title: menuItem['title'],
                        ),
                        title: ResponsiveText(
                          menuItem['title'],
                          baseFontSize: 16,
                        ),
                        trailing: menuItem['trailingIcon'],
                        visualDensity: VisualDensity(vertical: -4),
                      );
                    },
                    separatorBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: const Divider(),
                    ),
                    physics: ClampingScrollPhysics(),
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                  ),
                  child: ListTile(
                    leading: _getLeadingIcon(
                      context,
                      iconPath: 'assets/images/logout.svg',
                      color: Colors.white,
                    ),
                    title: ResponsiveText(
                      'Logout',
                      baseFontSize: 16,
                      color: Colors.white,
                    ),
                    trailing: ResponsiveText(
                      "App Version 1.0.0",
                      baseFontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class LanguageSwitcher extends StatefulWidget {
  const LanguageSwitcher({super.key});

  @override
  State<LanguageSwitcher> createState() => _LanguageSwitcherState();
}

class _LanguageSwitcherState extends State<LanguageSwitcher> {
  bool isArabic = false; // false = English, true = Arabic

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isArabic = !isArabic;
        });
      },
      child: Container(
        width: ResponsiveUtils.getResponsiveFontSize(context, 60),
        height: ResponsiveUtils.getResponsiveFontSize(context, 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(width: 1, color: Colors.black),
          color: Colors.grey[200],
        ),
        child: Row(
          children: [
            // English Option
            Expanded(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                margin: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      !isArabic
                          ? Theme.of(context).primaryColor
                          : Colors.green[200],
                ),
                child: Center(
                  child: Text(
                    'E',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
            // Arabic Option
            Expanded(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                margin: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      isArabic
                          ? Theme.of(context).primaryColor
                          : Colors.green[200],
                ),
                child: Center(
                  child: Text(
                    'ع',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
