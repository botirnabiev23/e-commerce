part of 'basket_bloc.dart';

@freezed
class BasketEvent with _$BasketEvent {
  const factory BasketEvent.started() = _Started;
  const factory BasketEvent.addMeal(MealEntity meal) = _AddMeal;
  const factory BasketEvent.removeMeal(MealEntity meal) = _RemoveMeal;
  const factory BasketEvent.updated(List<MealEntity> meals) = _Updated;
  const factory BasketEvent.clean() = _Clean;
}
