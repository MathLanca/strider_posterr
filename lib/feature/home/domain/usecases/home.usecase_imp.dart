import 'package:strider_posterr/feature/home/domain/entities/post.entity.dart';
import 'package:dartz/dartz.dart';
import 'package:strider_posterr/feature/home/domain/repositories/home.repository.dart';
import 'package:strider_posterr/feature/home/domain/usecases/home.usecase.dart';

class HomeUseCaseImp implements HomeUseCase {
  final HomeRepository _homeRepository;

  HomeUseCaseImp(this._homeRepository);

  @override
  Future<Either<Exception, List<Post>>> fetchPosts() async {
    var posts = await _homeRepository.fetchPosts();
    return posts.fold(
      (l) => Left(Exception('Usecase error on fetch posts')),
      (r) {
        List<Post> result = r;
        result.sort((firstPost, secondPost) => secondPost.createdAt.compareTo(firstPost.createdAt));
        return Right(result);
      }
    );
  }
}
