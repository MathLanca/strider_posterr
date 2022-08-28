import 'package:dartz/dartz.dart';
import 'package:strider_posterr/feature/home/domain/entities/post.entity.dart';

abstract class HomeUseCase {
  Future<Either<Exception, List<Post>>> fetchPosts();
}