class PostDto {
  final String message;
  final String username;
  final String createdAt;

  PostDto(
      {required this.message, required this.username, required this.createdAt});

  factory PostDto.fromJson(Map<String, dynamic> json) => PostDto(
        message: json['message'],
        username: json['user_name'],
        createdAt: json["created_at"],
      );
}
