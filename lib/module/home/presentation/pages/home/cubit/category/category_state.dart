part of 'category_cubit.dart';

@freezed
abstract class CategoryState with _$CategoryState {
  const factory CategoryState({
    @Default(false) bool isLoading,
    @Default(BlocStatus.initial) BlocStatus status,
    @Default([]) List<CategoryEntity> categories,
    @Default(null) Failure? failure,
  }) = _CategoryState;
}
