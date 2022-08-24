import 'package:mobx/mobx.dart';
import 'package:strider_posterr/feature/home/domain/entities/post.entity.dart';
import 'package:strider_posterr/feature/home/domain/usecases/home.usecase.dart';
part 'home.controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  final HomeUseCase _homeUseCase;

  HomeControllerBase(this._homeUseCase){
    fetchPosts();
  }

  @observable
  late List<Post> posts;

  @observable
  late bool hasError;

  @observable
  late bool isInProgress;

  setHasError(bool value) => hasError = value;

  setPosts(List<Post> values) => posts = values;

  setIsInProgress(bool value) => isInProgress = value;

  Future<void> fetchPosts() async {
    setIsInProgress(true);

    var result = await _homeUseCase.fetchPosts().then((value) => setIsInProgress(false));
    
     return result.fold(
      (l) => setHasError(true),
      (r) => setPosts(r),
    );
  }
}