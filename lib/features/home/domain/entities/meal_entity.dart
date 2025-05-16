import 'package:equatable/equatable.dart';

class MealsResponseEntity extends Equatable {
  final List<MealEntity> meals;

  const MealsResponseEntity({required this.meals});

  @override
  List<Object?> get props => [meals];
}

class MealEntity extends Equatable {
  final String id;
  final String name;
  final String thumbnail;
  final String? instructions;
  final String? category;
  final String? area;
  final String? tags;
  final String? youtube;
  final int price;

  const MealEntity({
    required this.id,
    required this.name,
    required this.thumbnail,
    required this.price,
    this.instructions,
    this.category,
    this.area,
    this.tags,
    this.youtube,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        thumbnail,
        instructions,
        category,
        area,
        tags,
        youtube,
        price,
      ];
}
