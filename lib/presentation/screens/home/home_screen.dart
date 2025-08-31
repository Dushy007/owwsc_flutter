import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:owwsc_mock_responsive/bloc/home/home_bloc.dart';
import 'package:owwsc_mock_responsive/bloc/home/home_state.dart';
import 'package:owwsc_mock_responsive/bloc/home/most_used_services/most_used_services_bloc.dart';
import 'package:owwsc_mock_responsive/bloc/home/most_used_services/most_used_services_event.dart';
import 'package:owwsc_mock_responsive/bloc/home/most_used_services/most_used_services_state.dart';
import 'package:owwsc_mock_responsive/core/responsive/responsive_utils.dart';
import 'package:owwsc_mock_responsive/core/theme/app_theme.dart';
import 'package:owwsc_mock_responsive/core/widgets/app_bar.dart';
import 'package:owwsc_mock_responsive/core/widgets/app_drawer.dart';
import 'package:owwsc_mock_responsive/core/widgets/responsive_text.dart';
import 'package:owwsc_mock_responsive/data/datasources/local/local_storage_helper.dart';
import 'package:owwsc_mock_responsive/l10n/app_localizations.dart';
import 'package:shimmer/shimmer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final double layoutHorizontalPadding = 10.0;
  String? username;
  String? personType;
  String? preferredLanguage;

  @override
  void initState() {
    _loadLocalStorageData();
    context.read<MostUsedServicesBloc>().add(
      LoadMostUsedServicesEvent(
        personType: personType ?? 'IND',
        preferredLanguage: preferredLanguage ?? 'AR',
      ),
    );
    super.initState();
  }

  Future<void> _loadLocalStorageData() async {
    personType = await LocalStorageHelper.get<String>('person_type');
    preferredLanguage = await LocalStorageHelper.get<String>('pref_lang');
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      extendBody: true,
      // appBar: CustomAppBar(
      //   title: Image.asset(
      //     "assets/images/nama_icon.png",
      //     width: ResponsiveUtils.getResponsiveFontSize(context, 30),
      //   ),
      //   // icon: Padding(
      //   //   padding: ResponsiveUtils.getResponsivePadding(context),
      //   //   child: SvgPicture.asset(
      //   //     "assets/images/menu.svg",
      //   //     fit: BoxFit.contain,
      //   //   ),
      //   // ),
      // ),
      // // drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Profile section
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: layoutHorizontalPadding,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: ResponsiveUtils.getResponsiveFontSize(context, 30),
                  ),
                  SizedBox(
                    width: ResponsiveUtils.getResponsiveSpacing(context, 10),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ResponsiveText(
                        "${l10n.goodMorning},",
                        baseFontSize: 16,
                        color: Colors.white,
                      ),
                      BlocBuilder<HomeBloc, HomeState>(
                        builder: (context, state) {
                          if (state is HomeLoaded) {
                            return ResponsiveText(
                              state.username ?? '',
                              baseFontSize: 20,
                              color: Colors.white,
                            );
                          } else if (state is HomeLoading) {
                            return Shimmer.fromColors(
                              baseColor: Colors.white.withOpacity(0.3),
                              highlightColor: Colors.white.withOpacity(0.7),
                              child: Container(
                                width: ResponsiveUtils.getResponsiveFontSize(
                                  context,
                                  120,
                                ),
                                height: ResponsiveUtils.getResponsiveFontSize(
                                  context,
                                  20,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                            );
                          } else {
                            return ResponsiveText(
                              '',
                              baseFontSize: 20,
                              color: Colors.white,
                            );
                          }
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),

            /// Main content
            Container(
              decoration: BoxDecoration(
                color: Color(0xffDDE4E5),
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: layoutHorizontalPadding,
              ),
              child: Column(
                children: [
                  /// Service cards
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Expanded(
                          child: ServiceCard(
                            title: l10n.reportWaterLeak,
                            icon: "assets/images/leakage.svg",
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        Expanded(
                          child: ServiceCard(
                            title: "Report Waste Water Overflow",
                            icon: "assets/images/bill-payment.svg",
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        Expanded(
                          child: ServiceCard(
                            title: l10n.sewerOdorComplaint,
                            icon: "assets/images/nama-booking.svg",
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 10),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Most Used Services",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),

                  SizedBox(height: 10),

                  BlocBuilder<MostUsedServicesBloc, MostUsedServicesState>(
                    builder: (context, state) {
                      if (state is MostUsedServicesLoaded) {
                        return Column(
                          children:
                              state.menuDataResponse
                                  .map(
                                    (item) => Container(
                                      width: double.infinity,
                                      margin: EdgeInsets.only(bottom: 10),
                                      decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 30,
                                              width: 50,
                                              color: Colors.blue,
                                            ),
                                            Text(item.moduleName, style: TextStyle(fontSize: 16),)
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                        );
                      } else {
                        return Text("");
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    required this.title,
    required this.icon,
    required this.color,
    super.key,
  });

  final String icon;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SvgPicture.asset(
              icon,
              height: 25,
              width: 25,
              colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
            ),
            SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: context.customColors.primaryTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
