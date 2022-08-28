import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:strider_posterr/core/UI/base_scaffold.dart';
import 'package:strider_posterr/core/UI/post_item.dart';
import 'package:strider_posterr/core/UI/ui_constants.dart';
import 'package:strider_posterr/core/text/text_constants.dart';
import 'package:strider_posterr/feature/home/presentation/controller/home.controller.dart';
import 'package:strider_posterr/core/text/text_extensions.dart';

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
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              backgroundColor: Theme.of(context).primaryColorLight,
              centerTitle: true,
              title: Text(
                APP_NAME.toUpperCase(),
                style: GoogleFonts.lobsterTwo(fontSize: 32),
              ),
            )
          ],
          body: Observer(
            builder: (_) {
              if (_homeController.isInProgress) {
                return Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ),
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: kDefaultMargin,
                  ),
                  child: ListView.separated(
                    separatorBuilder: (context, index) => Divider(
                      height: 12,
                      color: Colors.transparent,
                    ),
                    itemCount: _homeController.posts.length,
                    itemBuilder: (context, index) {
                      var post = _homeController.posts[index];
                      return PostItem(
                        avatarText: post.username.getFistTwoCharacters(),
                        message: post.message,
                        postedAt: post.createdAt.getLongDate(),
                        username: post.username,
                        favoriteIconColor: _homeController.isPostLiked ? Colors.red : Colors.black54,
                        favoriteOnPressed: () => _homeController.likePost(),
                        shareIconColor: Colors.green,
                      );
                    },
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
