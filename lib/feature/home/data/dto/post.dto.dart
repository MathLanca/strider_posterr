class PostDto {
  final String message;
  final String username;

  PostDto({required this.message, required this.username});

  factory PostDto.fromJson(Map<String, dynamic> json) =>
      PostDto(message: json['message'], username: json['user_name']);
}
