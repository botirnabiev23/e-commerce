// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MealsResponseModelImpl _$$MealsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MealsResponseModelImpl(
      meals: (json['meals'] as List<dynamic>?)
              ?.map((e) => MealModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MealModel>[],
    );

Map<String, dynamic> _$$MealsResponseModelImplToJson(
        _$MealsResponseModelImpl instance) =>
    <String, dynamic>{
      'meals': instance.meals,
    };

_$MealModelImpl _$$MealModelImplFromJson(Map<String, dynamic> json) =>
    _$MealModelImpl(
      id: json['idMeal'] as String,
      name: json['strMeal'] as String,
      thumbnail: json['strMealThumb'] as String,
      instructions: json['strInstructions'] as String?,
      category: json['strCategory'] as String?,
      area: json['strArea'] as String?,
      tags: json['strTags'] as String?,
      youtube: json['strYoutube'] as String?,
    );

Map<String, dynamic> _$$MealModelImplToJson(_$MealModelImpl instance) =>
    <String, dynamic>{
      'idMeal': instance.id,
      'strMeal': instance.name,
      'strMealThumb': instance.thumbnail,
      'strInstructions': instance.instructions,
      'strCategory': instance.category,
      'strArea': instance.area,
      'strTags': instance.tags,
      'strYoutube': instance.youtube,
    };
