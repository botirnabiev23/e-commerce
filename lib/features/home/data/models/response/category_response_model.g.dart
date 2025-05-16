// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoriesResponseModelImpl _$$CategoriesResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoriesResponseModelImpl(
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CategoryModel>[],
    );

Map<String, dynamic> _$$CategoriesResponseModelImplToJson(
        _$CategoriesResponseModelImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      id: json['idCategory'] as String,
      name: json['strCategory'] as String,
      thumbnail: json['strCategoryThumb'] as String,
      description: json['strCategoryDescription'] as String,
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'idCategory': instance.id,
      'strCategory': instance.name,
      'strCategoryThumb': instance.thumbnail,
      'strCategoryDescription': instance.description,
    };
