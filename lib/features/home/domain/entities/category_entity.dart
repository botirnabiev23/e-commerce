import 'package:equatable/equatable.dart';

class CategoriesResponseEntity extends Equatable {
  final List<CategoryEntity> categories;

  const CategoriesResponseEntity({required this.categories});

  @override
  List<Object?> get props => [categories];
}

class CategoryEntity extends Equatable {
  final String id;
  final String name;
  final String thumbnail;
  final String description;

  const CategoryEntity({
    required this.id,
    required this.name,
    required this.thumbnail,
    required this.description,
  });

  @override
  List<Object?> get props => [id, name, thumbnail, description];
}