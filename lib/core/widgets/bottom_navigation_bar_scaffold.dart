import 'package:flutter/material.dart';
import 'package:owwsc_mock_responsive/core/navigation/app_router.dart';
import 'package:owwsc_mock_responsive/core/responsive/responsive_utils.dart';
import 'package:owwsc_mock_responsive/core/widgets/responsive_text.dart';

import 'app_bar.dart';
import 'app_drawer.dart';

class BottomNavigationBarScaffold extends StatefulWidget {
  const BottomNavigationBarScaffold({this.child, super.key});

  final Widget? child;

  @override
  State<BottomNavigationBarScaffold> createState() =>
      _BottomNavigationBarScaffoldState();
}

class _BottomNavigationBarScaffoldState
    extends State<BottomNavigationBarScaffold> {
  final List<BottomNavItemModel> bottomNavMenuItems = [
    BottomNavItemModel(
      title: "Home",
      icon: Icons.home_filled,
      route: AppRouter.goToHome,
    ),
    BottomNavItemModel(
      title: "Dashboard",
      icon: Icons.dashboard,
      route: AppRouter.goToDashboard,
    ),
    BottomNavItemModel(
      title: "My Requests",
      icon: Icons.receipt,
      route: AppRouter.goToMyRequests,
    ),
    BottomNavItemModel(
      title: "Services",
      icon: Icons.miscellaneous_services,
      route: AppRouter.goToServices,
    ),
  ];
  int _selectedBottomMenuIndex = 0;

  String _getCurrentTitle() {
    return bottomNavMenuItems[_selectedBottomMenuIndex].title;
  }

  Widget _getAppbarTitle() {
    if(_selectedBottomMenuIndex == 0) {
      return  Image.asset(
        "assets/images/nama_icon.png",
        width: ResponsiveUtils.getResponsiveFontSize(context, 30),
      );
    } else {
      return ResponsiveText(_getCurrentTitle(),
          baseFontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      appBar: CustomAppBar(
        title: _getAppbarTitle(),
        // icon: Padding(
        //   padding: ResponsiveUtils.getResponsivePadding(context),
        //   child: SvgPicture.asset(
        //     "assets/images/menu.svg",
        //     fit: BoxFit.contain,
        //   ),
        // ),
      ),
      drawer: AppDrawer(),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 0),
          decoration: BoxDecoration(color: Theme.of(context).primaryColor),
          child: Row(
            children: List.generate(bottomNavMenuItems.length, (index) {
              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedBottomMenuIndex = index;
                    });
                    bottomNavMenuItems[index].route();
                  },
                  child: BottomNavMenuItem(
                    title: bottomNavMenuItems[index].title,
                    icon: bottomNavMenuItems[index].icon,
                    isSelected: _selectedBottomMenuIndex == index,
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}

class BottomNavMenuItem extends StatelessWidget {
  const BottomNavMenuItem({
    required this.title,
    required this.icon,
    required this.isSelected,
    super.key,
  });

  final String title;
  final IconData icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: !isSelected ? Colors.white : null),
          ResponsiveText(
            title,
            baseFontSize: 14,
            color: !isSelected ? Colors.white : null,
          ),
        ],
      ),
    );
  }
}

class BottomNavItemModel {
  final String title;
  final IconData icon;
  final void Function() route;

  BottomNavItemModel({
    required this.title,
    required this.icon,
    required this.route,
  });
}
