import 'package:flutter/material.dart';
import 'package:strider_posterr/core/UI/ui_constants.dart';
import 'package:strider_posterr/core/text/text_constants.dart';

class BaseScaffold extends StatelessWidget {
  final Widget child;
  const BaseScaffold({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(APP_NAME.toUpperCase(),),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                size: kIconSize,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                size: kIconSize,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: child,
    );
  }
}
