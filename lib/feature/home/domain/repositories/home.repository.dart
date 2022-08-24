import 'package:dartz/dartz.dart';
import 'package:strider_posterr/feature/home/domain/entities/post.entity.dart';

abstract class HomeRepository {
  Future<Either<Exception, List<Post>>> fetchPosts();
}