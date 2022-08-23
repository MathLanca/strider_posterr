import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:strider_posterr/core/UI/ui_constants.dart';
import 'package:strider_posterr/feature/home/presentation/UI/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Color(0XFF4630ab),
        primaryColorDark: Color(0xFF2c044c),
        primaryColorLight: Color(0XFF7c7ccc),
      ),
      routes: generateRoutes(),
      initialRoute: HomeScreen.ROUTE_NAME,
      title: 'Posterr',
    );
  }

  Map<String, WidgetBuilder> generateRoutes() {
    return {
        HomeScreen.ROUTE_NAME: (context) => const HomeScreen(),
    };
  }
}