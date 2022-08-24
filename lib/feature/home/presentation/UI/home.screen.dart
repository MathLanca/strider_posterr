import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:strider_posterr/core/UI/base_scaffold.dart';
import 'package:strider_posterr/feature/home/presentation/controller/home.controller.dart';

class HomeScreen extends StatefulWidget {
  static const String ROUTE_NAME = 'HOME';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final HomeController _homeController;

  @override
  void initState() {
    super.initState();
    _homeController = GetIt.I.get<HomeController>();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BaseScaffold(
        child: SingleChildScrollView(
          child: Observer(builder: (_) {
            if (_homeController.isInProgress) {
              return Container(
                child: Center(child: Text('in Progress')),
              );
            } else {
              return Container(
                child: Center(child: Text(_homeController.posts.toString())),
              );
            }
          }),
        ),
      ),
    );
  }
}
