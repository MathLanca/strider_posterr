import 'package:flutter/material.dart';
import 'package:strider_posterr/core/UI/base_scaffold.dart';

class HomeScreen extends StatefulWidget {
  static const String ROUTE_NAME = 'HOME';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Center(child: Text('TEST')),
      ),
    );
  }
}
