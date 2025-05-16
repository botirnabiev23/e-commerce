import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:market_place/core/data_mapper.dart';
import 'package:market_place/features/home/domain/entities/meal_entity.dart';

part 'meal_response_model.freezed.dart';

part 'meal_response_model.g.dart';

@freezed
class MealsResponseModel
    with _$MealsResponseModel
    implements DataMapper<MealsResponseEntity> {
  const MealsResponseModel._();

  const factory MealsResponseModel({
    @Default(<MealModel>[]) List<MealModel> meals,
  }) = _MealsResponseModel;

  factory MealsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MealsResponseModelFromJson(json);

  @override
  MealsResponseEntity toEntity() =>
      MealsResponseEntity(meals: meals.map((e) => e.toEntity()).toList());
}

@freezed
class MealModel with _$MealModel implements DataMapper<MealEntity> {
  const MealModel._();

  const factory MealModel({
    @JsonKey(name: 'idMeal') required String id,
    @JsonKey(name: 'strMeal') required String name,
    @JsonKey(name: 'strMealThumb') required String thumbnail,
    @JsonKey(name: 'strInstructions') String? instructions,
    @JsonKey(name: 'strCategory') String? category,
    @JsonKey(name: 'strArea') String? area,
    @JsonKey(name: 'strTags') String? tags,
    @JsonKey(name: 'strYoutube') String? youtube,
  }) = _MealModel;

  factory MealModel.fromJson(Map<String, dynamic> json) =>
      _$MealModelFromJson(json);

  @override
  MealEntity toEntity() => MealEntity(
        id: id,
        name: name,
        thumbnail: thumbnail,
        instructions: instructions,
        category: category,
        area: area,
        tags: tags,
        youtube: youtube,
        price: int.tryParse(id) ?? 1000,
      );
}
