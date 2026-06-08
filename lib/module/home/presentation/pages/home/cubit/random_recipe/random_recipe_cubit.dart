import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/core/constant/bloc/bloc_status.dart';
import 'package:recipe_app/core/constant/network/failure.dart';
import 'package:recipe_app/module/home/domain/model/recipe/recipe_entity.dart';
import 'package:recipe_app/module/home/domain/usecase/get_random_recipe_usecase.dart';

part 'random_recipe_state.dart';
part 'random_recipe_cubit.freezed.dart';

class RandomRecipeCubit extends Cubit<RandomRecipeState> {
  final GetRandomRecipeUseCase _getRandomRecipeUseCase;

  RandomRecipeCubit(this._getRandomRecipeUseCase) : super(RandomRecipeState());

  void getRandomRecipes() async {
    emit(state.copyWith(isLoading: BlocStatus.loading, failure: null));
    final result = await _getRandomRecipeUseCase();

    result.fold(
      (failure) =>
          emit(state.copyWith(isLoading: BlocStatus.error, failure: failure)),
      (recipes) => emit(
        state.copyWith(
          isLoading: BlocStatus.success,
          randomRecipes: recipes,
          failure: null,
        ),
      ),
    );
  }
}
