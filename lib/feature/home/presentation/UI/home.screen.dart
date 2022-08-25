import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:strider_posterr/core/UI/base_scaffold.dart';
import 'package:strider_posterr/feature/home/domain/entities/post.entity.dart';
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
        child: Observer(builder: (_) {
          if (_homeController.isInProgress) {
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: _homeController.posts.length,
              itemBuilder: (context, index) {
                var post = _homeController.posts[index];
                return Container(child: Text(post.message));
              },
            );
          }
        }),
      ),
    );
  }
}
