import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:owwsc_mock_responsive/bloc/appdrawer/appdrawer_bloc.dart';
import 'package:owwsc_mock_responsive/bloc/appdrawer/appdrawer_state.dart';
import 'package:owwsc_mock_responsive/core/responsive/responsive_utils.dart';
import 'package:owwsc_mock_responsive/core/widgets/responsive_text.dart';

class AppDrawer extends StatelessWidget {
   AppDrawer({super.key});

  final List<dynamic> menuItems = [
    {
      "leadingIcon" : null,
      "title" : "Change Language",
      "trailingIcon": null
    },
    {
      "leadingIcon" : null,
      "title" : "Settings",
      "trailingIcon": null
    },
    {
      "leadingIcon" : null,
      "title" : "Alarm",
      "trailingIcon": null
    },
    {
      "leadingIcon" : null,
      "title" : "Saved Cards",
      "trailingIcon": null
    },
    {
      "leadingIcon" : null,
      "title" : "Announcements",
      "trailingIcon": null
    },
    {
      "leadingIcon" : null,
      "title" : "Disclaimer",
      "trailingIcon": null
    },
    {
      "leadingIcon" : null,
      "title" : "Transaction History",
      "trailingIcon": null
    },
    {
      "leadingIcon" : null,
      "title" : "FAQ",
      "trailingIcon": null
    },
    {
      "leadingIcon" : null,
      "title" : "About Us",
      "trailingIcon": null
    },
    {
      "leadingIcon" : null,
      "title" : "Privacy Policy",
      "trailingIcon": null
    },
    {
      "leadingIcon" : null,
      "title" : "Change Language",
      "trailingIcon": null
    },
  ];

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
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      ListTile(
                        leading: Icon(Icons.language),
                        title: ResponsiveText(
                          'Change Language',
                          baseFontSize: 16,
                        ),
                        onTap: () => context.pop(),
                      ),
                      ListTile(
                        leading: Icon(Icons.language),
                        title: ResponsiveText(
                          'Settings',
                          baseFontSize: 16,
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.language),
                        title: ResponsiveText(
                          'Alarm',
                          baseFontSize: 16,
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.language),
                        title: ResponsiveText(
                          'Change Language',
                          baseFontSize: 16,
                        ),
                      ),
                    ],
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
