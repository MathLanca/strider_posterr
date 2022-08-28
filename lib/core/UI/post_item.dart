import 'package:flutter/material.dart';
import 'package:strider_posterr/core/UI/ui_constants.dart';

class PostItem extends StatefulWidget {
  final String avatarText;
  final String username;
  final String postedAt;
  final String message;
  final Color favoriteIconColor;
  final Color shareIconColor;
  final Function()? shareOnPressed;
  final Function()? favoriteOnPressed;

  const PostItem(
      {required this.avatarText,
      required this.message,
      required this.postedAt,
      required this.username,
      required this.favoriteIconColor,
      required this.shareIconColor,
      this.favoriteOnPressed,
      this.shareOnPressed,
      Key? key})
      : super(key: key);

  @override
  State<PostItem> createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPostMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 8),
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.black12,
                    child: Text(
                      widget.avatarText,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.username,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      widget.postedAt,
                      style: TextStyle(fontSize: 12, color: Colors.black26),
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              height: 24,
              color: Theme.of(context).primaryColor,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: kDefaultPostMargin),
              child: Text(widget.message),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: widget.shareOnPressed,
                    icon: Icon(Icons.share, color: widget.shareIconColor,),
                  ),
                  IconButton(
                    onPressed: widget.favoriteOnPressed,
                    icon: Icon(Icons.favorite, color: widget.favoriteIconColor),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
