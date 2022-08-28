import 'package:dartz/dartz.dart';
import 'package:strider_posterr/feature/home/data/dto/post.dto.dart';

abstract class HomeDataSource {
  Future<Either<Exception,List<PostDto>>> fetchPosts();
}