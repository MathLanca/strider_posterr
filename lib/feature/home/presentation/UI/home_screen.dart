
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String ROUTE_NAME = 'HOME'; 

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: Theme.of(context).primaryColor,
        child: Center(child: Text('TEST')),
      ),
    );
  }
}