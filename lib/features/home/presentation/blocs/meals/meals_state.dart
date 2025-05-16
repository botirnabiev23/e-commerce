part of 'meals_bloc.dart';

@freezed
class MealsState with _$MealsState {
  const factory MealsState({
    @Default([]) List<CategoryEntity> categories,
    @Default([]) List<MealEntity> meals,
    @Default(InitialStatus()) StateStatus categoriesStatus,
    @Default(InitialStatus()) StateStatus mealsStatus,
    CategoryEntity? selectedCategory,
    String? youtubeUrl,
  }) = _MealsState;
}
