import 'package:get_it/get_it.dart';
import 'package:strider_posterr/feature/home/data/datasources/home.datasource_imp.dart';
import 'package:strider_posterr/feature/home/data/repository/home.repository_imp.dart';
import 'package:strider_posterr/feature/home/domain/repositories/home.repository.dart';
import 'package:strider_posterr/feature/home/domain/usecases/home.usecase.dart';
import 'package:strider_posterr/feature/home/domain/usecases/home.usecase_imp.dart';
import 'package:strider_posterr/feature/home/presentation/controller/home.controller.dart';

class Inject{
  static initialize() {
    GetIt getIt = GetIt.instance;



    // Repositories injection
    getIt.registerLazySingleton<HomeRepository>(
      () => HomeRepositoryImp(HomeDataSourceImp()),
    );

    // Usecases injection
    getIt.registerLazySingleton<HomeUseCase>(
      () => HomeUseCaseImp(getIt()),
    );

    // Controllers injection
    getIt.registerLazySingleton<HomeController>(
      () => HomeController(getIt()),
    );
  }
}