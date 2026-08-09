import 'package:dartz/dartz.dart';
import 'package:recipe_app/core/network/handle_request.dart';
import 'package:recipe_app/module/home/data/datasources/home_local_datasource.dart';
import 'package:recipe_app/module/home/data/datasources/home_remote_datasource.dart';
import 'package:recipe_app/module/home/data/mapper/category_mapper.dart';
import 'package:recipe_app/module/home/data/mapper/recipe_mapper.dart';

import 'package:recipe_app/module/home/domain/model/category/category_entity.dart';

import 'package:recipe_app/module/home/domain/model/recipe/recipe_entity.dart';

import '../../domain/repository/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {
  final HomeLocalDataSource _localDataSource;
  final HomeRemoteDataSource _remoteDataSource;

  HomeRepositoryImpl(this._localDataSource, this._remoteDataSource);

  @override
  FutureResult<List<CategoryEntity>> getCategoryRecipe() {
    return handleRequest(
      execute: () async {
        final result = await _remoteDataSource.getCategories();
        final entities = result.map((e) => e.toEntity()).toList();

        if (!await _localDataSource.hasSavedCategories()) {
          await _localDataSource.saveCategories(entities);
        }

        return Right(entities);
      },
      customErrorHandler: (error) async {
        if (await _localDataSource.hasSavedCategories()) {
          final savedCategories = await _localDataSource.getSavedCategories();
          return Right(savedCategories);
        }

        return defaultNetworkServiceErrorHandler(error);
      },
    );
  }

  @override
  FutureResult<List<RecipeEntity>> getRandomRecipe() {
    return handleRequest(
      execute: () async {
        final result = await Future.wait([
          _remoteDataSource.getRandomRecipe(),
          _remoteDataSource.getRandomRecipe(),
          _remoteDataSource.getRandomRecipe(),
          _remoteDataSource.getRandomRecipe(),
          _remoteDataSource.getRandomRecipe(),
        ]);

        final randomResult = result.expand((element) => element).toList();

        final seenIds = <String>{};
        final uniqueRandomResult = randomResult.where((recipe) {
          return seenIds.add(recipe.id);
        }).toList();

        final entities = uniqueRandomResult.map((e) => e.toEntity()).toList();
        return Right(entities);
      },
    );
  }

  @override
  FutureResult<bool> saveRecipe(RecipeEntity recipe) {
    // TODO: implement saveRecipe
    throw UnimplementedError();
  }

  @override
  FutureResult<List<RecipeEntity>> searchRecipe(String keyword) {
    return handleRequest(
      execute: () async {
        final result = await _remoteDataSource.searchRecipe(keyword);
        final entities = result.map((e) => e.toEntity()).toList();

        return Right(entities);
      },
    );
  }

  @override
  FutureResult<bool> unSaveRecipe(RecipeEntity recipe) {
    // TODO: implement unSaveRecipe
    throw UnimplementedError();
  }

  @override
  Stream<List<RecipeEntity>> watchSavedRecipes(int? limit) {
    // TODO: implement watchSavedRecipes
    throw UnimplementedError();
  }
}
