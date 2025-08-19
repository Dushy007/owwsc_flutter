import 'package:flutter/material.dart';
import 'package:owwsc_mock_responsive/core/widgets/google_map.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomGoogleMap(mandatory: true,),
    );
  }
}
