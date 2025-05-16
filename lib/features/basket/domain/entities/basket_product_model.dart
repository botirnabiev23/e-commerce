import 'package:equatable/equatable.dart';
import 'package:market_place/features/home/domain/entities/meal_entity.dart';

class BasketProduct extends Equatable {
  final MealEntity meal;
  final int count;

  const BasketProduct({
    required this.meal,
    required this.count,
  });

  @override
  List<Object> get props => [
        meal,
        count,
      ];
}
