import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:market_place/core/enums/status.dart';
import 'package:market_place/core/usecase.dart';
import 'package:market_place/features/area/domain/entities/area_entity.dart';
import 'package:market_place/features/home/domain/entities/meal_entity.dart';
import 'package:market_place/features/area/domain/use_cases/get_area_use_case.dart';
import 'package:market_place/features/area/domain/use_cases/get_meals_by_are_use_case.dart';

part 'area_event.dart';
part 'area_state.dart';
part 'area_bloc.freezed.dart';

@injectable
class AreaBloc extends Bloc<AreaEvent, AreaState> {
  final GetAreasUseCase _getAreasUseCase;
  final GetMealsByAreaUseCase _getMealsByAreaUseCase;

  AreaBloc(
      this._getAreasUseCase,
      this._getMealsByAreaUseCase,
      ) : super(const AreaState()) {
    on<_LoadAreas>(_onLoadAreas);
    on<_SelectArea>(_onSelectArea);
  }

  Future<void> _onLoadAreas(
      _LoadAreas event,
      Emitter<AreaState> emit,
      ) async {
    emit(state.copyWith(status: LoadingStatus()));
    final result = await _getAreasUseCase(NoParams());

    result.fold(
          (failure) => emit(state.copyWith(status: ErrorStatus(failure))),
          (areas) => emit(state.copyWith(status: SuccessStatus(), areas: areas)),
    );
  }

  Future<void> _onSelectArea(
      _SelectArea event,
      Emitter<AreaState> emit,
      ) async {
    emit(state.copyWith(
      meals: [],
      selectedAreaName: event.area,
      mealsStatus: LoadingStatus(),
    ));

    final result = await _getMealsByAreaUseCase(
      GetMealsByAreaParams(area: event.area),
    );

    result.fold(
          (failure) => emit(state.copyWith(mealsStatus: ErrorStatus(failure))),
          (response) => emit(state.copyWith(meals: response, mealsStatus: SuccessStatus())),
    );
  }
}
