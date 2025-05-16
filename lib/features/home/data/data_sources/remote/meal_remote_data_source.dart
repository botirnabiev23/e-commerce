import '../../models/response/meal_response_model.dart';
import '../../models/response/category_response_model.dart';

abstract interface class MealRemoteDataSource {
  Future<CategoriesResponseModel> getMealCategories();

  Future<MealsResponseModel> getMealsByCategory(String categoryName);

  Future<MealsResponseModel> getMealInfoById(String mealId);
}
