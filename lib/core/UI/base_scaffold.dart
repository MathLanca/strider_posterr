import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:strider_posterr/core/UI/ui_constants.dart';
import 'package:strider_posterr/core/text/text_constants.dart';

class BaseScaffold extends StatelessWidget {
  final Widget child;
  final bool shouldUseAppBar;
  const BaseScaffold({required this.child, this.shouldUseAppBar = false, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: shouldUseAppBar ? buildAppBar(context) : null,
      body: child,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Theme.of(context).primaryColorLight,
        notchMargin: 15,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home, color: Colors.white, size: kIconSize),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person, color: Colors.white, size: kIconSize),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  static AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColorLight,
      centerTitle: true,
      title: Text(
        APP_NAME.toUpperCase(),
        style: GoogleFonts.lobsterTwo(fontSize: 32),
      ),
    );
  }
}
