import 'package:strider_posterr/feature/home/data/dto/post.dto.dart';

class Post {
  final String? message;
  final String? username;

  Post({this.message, this.username});

  factory Post.fromDto(PostDto dto) => Post(message: dto.message, username: dto.username);
}