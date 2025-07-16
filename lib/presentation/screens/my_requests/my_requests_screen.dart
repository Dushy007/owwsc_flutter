import 'package:flutter/material.dart';

class MyRequestsScreen extends StatefulWidget {
  const MyRequestsScreen({super.key});

  @override
  State<MyRequestsScreen> createState() => _MyRequestsScreenState();
}

class _MyRequestsScreenState extends State<MyRequestsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("My Requests")));
  }
}
