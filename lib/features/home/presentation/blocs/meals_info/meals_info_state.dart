part of 'meals_info_bloc.dart';

@freezed
class MealsInfoState with _$MealsInfoState {
  const factory MealsInfoState({
    @Default(InitialStatus()) StateStatus status,
    MealEntity? meal,
  }) = _MealsInfoState;
}
