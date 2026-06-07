import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/core/constant/bloc/bloc_status.dart';
import 'package:recipe_app/core/constant/network/failure.dart';
import 'package:recipe_app/module/home/domain/model/category/category_entity.dart';
import 'package:recipe_app/module/home/domain/usecase/get_category_recipe_usecase.dart';

part 'category_state.dart';
part 'category_cubit.freezed.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit(
    this._getCategoryRecipeUseCase,
  ) : super(CategoryState());

  final GetCategoryRecipeUseCase _getCategoryRecipeUseCase;

  void getCategoryRecipe() async {
    emit(state.copyWith(isLoading: true, failure: null));
    final result = await _getCategoryRecipeUseCase();
    result.fold(
      (failure) => emit(state.copyWith(status: BlocStatus.error, isLoading: false, failure: failure)),
      (categories) => emit(state.copyWith(status: BlocStatus.success, isLoading: false, categories: categories)),
    );
  }
}
