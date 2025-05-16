part of 'meals_bloc.dart';

@freezed
class MealsEvent with _$MealsEvent {
  const factory MealsEvent.loadCategories() = _LoadCategories;

  const factory MealsEvent.loadMeals(String category) = _LoadMeals;

  const factory MealsEvent.selectCategory(CategoryEntity category) =
      _SelectCategory;

  const factory MealsEvent.loadMealInfo(String id) = _LoadMealInfo;
}
