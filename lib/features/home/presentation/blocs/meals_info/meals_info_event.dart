part of 'meals_info_bloc.dart';

@freezed
class MealsInfoEvent with _$MealsInfoEvent {
  const factory MealsInfoEvent.loadMealInfo(String id) = _LoadMealInfo;
}
