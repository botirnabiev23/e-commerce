import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:market_place/core/enums/status.dart';
import 'package:market_place/features/home/domain/entities/meal_entity.dart';
import 'package:market_place/features/home/domain/use_cases/get_meal_info_by_id_use_case.dart';

part 'meals_info_event.dart';

part 'meals_info_state.dart';

part 'meals_info_bloc.freezed.dart';

@injectable
class MealsInfoBloc extends Bloc<MealsInfoEvent, MealsInfoState> {
  MealsInfoBloc(this._getMealInfoByIdUseCase) : super(const MealsInfoState()) {
    on<_LoadMealInfo>(_onLoadMealInfo);
  }

  final GetMealInfoByIdUseCase _getMealInfoByIdUseCase;

  Future<void> _onLoadMealInfo(
    _LoadMealInfo event,
    Emitter<MealsInfoState> emit,
  ) async {
    emit(state.copyWith(status: LoadingStatus()));

    final result = await _getMealInfoByIdUseCase(
      GetMealInfoByIdParams(id: event.id),
    );

    result.fold(
      (f) => emit(state.copyWith(status: ErrorStatus(f))),
      (data) {
        final meal = data.meals.firstOrNull;
        emit(
          state.copyWith(
            meal: meal,
            status: SuccessStatus(),
          ),
        );
      },
    );
  }
}
