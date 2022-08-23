import 'package:flutter/material.dart';
import 'package:strider_posterr/feature/home/presentation/UI/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: generateRoutes(),
      initialRoute: HomeScreen.ROUTE_NAME,
      title: 'Posterr',
      theme: ThemeData(
        primaryColor: const Color(0XFF4630ab),
      ),
    );
  }

  Map<String, WidgetBuilder> generateRoutes() {
    return {
        HomeScreen.ROUTE_NAME: (context) => const HomeScreen(),
    };
  }
}