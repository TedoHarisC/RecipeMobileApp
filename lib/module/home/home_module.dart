import 'package:recipe_app/core/utils/app_utils.dart';
import 'package:recipe_app/module/home/data/datasources/home_local_datasource.dart';
import 'package:recipe_app/module/home/data/datasources/home_remote_datasource.dart';
import 'package:recipe_app/module/home/data/repository/home_repository_impl.dart';
import 'package:recipe_app/module/home/domain/repository/home_repository.dart';
import 'package:recipe_app/module/home/domain/usecase/get_category_recipe_usecase.dart';
import 'package:recipe_app/module/home/domain/usecase/get_random_recipe_usecase.dart';
import 'package:recipe_app/module/home/domain/usecase/search_recipe_usecase.dart';

class HomeModule {
  HomeModule._();

  static Future<void> init() async {
    // Data sources (Hanya ada satu instance, karena tidak memiliki state)
    di.registerSingleton<HomeRemoteDataSource>(
      HomeRemoteDataSourceImpl(di()),
    );
    di.registerSingleton<HomeLocalDataSource>(
      HomeLocalDataSourceImpl(di()),
    );

    // Repositories (Hanya ada satu instance, karena tidak memiliki state)
    di.registerSingleton<HomeRepository>(
      HomeRepositoryImpl(di(), di()),
    );

    // Use cases (Bisa memiliki satu instance atau lebih, tergantung kebutuhan. Jika use case memiliki state, sebaiknya menggunakan factory)
    di.registerSingleton(GetCategoryRecipeUseCase(di()));
    di.registerSingleton(GetRandomRecipeUseCase(di()));
    di.registerSingleton(SearchRecipeUseCase(di()));
  }
}
