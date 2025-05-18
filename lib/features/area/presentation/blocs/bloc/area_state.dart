part of 'area_bloc.dart';

@freezed
class AreaState with _$AreaState {
  const factory AreaState({
    @Default([]) List<AreaEntity> areas,
    @Default('') String selectedAreaName,
    @Default([]) List<MealEntity> meals,
    @Default(InitialStatus()) StateStatus status,
    @Default(InitialStatus()) StateStatus mealsStatus,
  }) = _AreaState;
}
