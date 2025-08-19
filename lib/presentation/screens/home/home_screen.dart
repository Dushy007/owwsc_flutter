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
    context.read<MostUsedServicesBloc>().add(LoadMostUsedServicesEvent(personType: personType ?? 'IND', preferredLanguage: preferredLanguage ?? 'AR'));
    super.initState();
  }

  Future<void> _loadLocalStorageData() async {
    personType =  await LocalStorageHelper.get('person_type');
    preferredLanguage = await LocalStorageHelper.get('pref_lang');
  }

  @override
  Widget build(BuildContext context) {
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
      body: Column(
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
                      "Good morning,",
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
                                width: ResponsiveUtils.getResponsiveFontSize(context, 120),
                                height: ResponsiveUtils.getResponsiveFontSize(context, 20),
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
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffDDE4E5),
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: layoutHorizontalPadding,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    /// Service cards
                    Row(
                      children: [
                        Expanded(
                          child: ServiceCard(
                            title: "Report a Water Leak",
                            icon: "assets/images/leakage.svg",
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        Expanded(
                          child: ServiceCard(
                            title: "Top Up / Pay Bills",
                            icon: "assets/images/bill-payment.svg",
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        Expanded(
                          child: ServiceCard(
                            title: "Appointment Booking",
                            icon: "assets/images/nama-booking.svg",
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                    BlocBuilder<MostUsedServicesBloc, MostUsedServicesState>(builder: (context, state) {
                      if(state is MostUsedServicesLoaded) {
                        return Column(
                        children: state.menuDataResponse.map((item) => Text(item.moduleName)).toList(),
                      );
                      } else {
                        return Text("");
                      }
                    })
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  const ServiceCard({required this.title, required this.icon, required this.color, super.key});

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
              height: ResponsiveUtils.getResponsiveFontSize(context, 30),
              width: ResponsiveUtils.getResponsiveFontSize(context, 30),
              colorFilter:  ColorFilter.mode(color, BlendMode.srcIn) ,
            ),
            SizedBox(height: ResponsiveUtils.getResponsiveSpacing(context, 10)),
            ResponsiveText(
              title,
              baseFontSize: 13,
              textAlign: TextAlign.center,
              color: context.customColors.primaryTextColor,
            ),
          ],
        ),
      ),
    );
  }
}
