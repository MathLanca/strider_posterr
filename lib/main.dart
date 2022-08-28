import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:strider_posterr/core/inject/inject.dart';
import 'package:strider_posterr/feature/home/data/datasources/home.datasource.dart';
import 'package:strider_posterr/feature/home/data/datasources/home.datasource_imp.dart';
import 'package:strider_posterr/feature/home/data/repository/home.repository_imp.dart';
import 'package:strider_posterr/feature/home/domain/repositories/home.repository.dart';
import 'package:strider_posterr/feature/home/presentation/UI/home.screen.dart';

void main() {
  Inject.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Verdana',
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