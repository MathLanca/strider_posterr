import 'package:strider_posterr/feature/home/data/dto/post.dto.dart';

class Post {
  final String message;
  final String username;
  final String createdAt;

  Post(
      {required this.message, required this.username, required this.createdAt});

  factory Post.fromDto(PostDto dto) => Post(
        message: dto.message,
        username: dto.username,
        createdAt: dto.createdAt,
      );
}
