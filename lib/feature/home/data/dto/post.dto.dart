class PostDto {
  final String? message;
  final String? username;

  PostDto({this.message, this.username});

  factory PostDto.fromJson(Map<String, dynamic> json) =>
      PostDto(message: json['message'], username: json['username']);
}
