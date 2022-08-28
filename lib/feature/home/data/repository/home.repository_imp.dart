import 'package:strider_posterr/feature/home/data/datasources/home.datasource.dart';
import 'package:strider_posterr/feature/home/data/dto/post.dto.dart';
import 'package:strider_posterr/feature/home/domain/entities/post.entity.dart';
import 'package:dartz/dartz.dart';
import 'package:strider_posterr/feature/home/domain/repositories/home.repository.dart';

class HomeRepositoryImp implements HomeRepository {
  final HomeDataSource _homeDataSource;

  HomeRepositoryImp(this._homeDataSource);

  @override
  Future<Either<Exception, List<Post>>> fetchPosts() async {
    try {
      late List<PostDto> postsDto;
      var result = await _homeDataSource.fetchPosts();
      result.fold((l) => l, (r) => postsDto = r);
      List<Post> posts = postsDto.map((e) => Post.fromDto(e)).toList();
      return Right(posts);
    } catch (e) {
      return Left(e as Exception);
    }
  }

}