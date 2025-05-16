import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:market_place/core/data_mapper.dart';
import 'package:market_place/features/home/domain/entities/category_entity.dart';

part 'category_response_model.freezed.dart';

part 'category_response_model.g.dart';

@freezed
class CategoriesResponseModel
    with _$CategoriesResponseModel
    implements DataMapper<CategoriesResponseEntity> {
  const CategoriesResponseModel._();

  const factory CategoriesResponseModel({
    @Default(<CategoryModel>[]) List<CategoryModel> categories,
  }) = _CategoriesResponseModel;

  factory CategoriesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseModelFromJson(json);

  @override
  CategoriesResponseEntity toEntity() => CategoriesResponseEntity(
    categories: categories.map((e) => e.toEntity()).toList(),
  );
}

@freezed
class CategoryModel with _$CategoryModel implements DataMapper<CategoryEntity> {
  const CategoryModel._();

  const factory CategoryModel({
    @JsonKey(name: 'idCategory') required String id,
    @JsonKey(name: 'strCategory') required String name,
    @JsonKey(name: 'strCategoryThumb') required String thumbnail,
    @JsonKey(name: 'strCategoryDescription') required String description,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  CategoryEntity toEntity() => CategoryEntity(
    id: id,
    name: name,
    thumbnail: thumbnail,
    description: description,
  );
}
