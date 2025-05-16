import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:market_place/features/basket/domain/use_cases/decrement_meal_use_case.dart';
import 'package:market_place/features/home/domain/entities/meal_entity.dart';
import 'package:market_place/features/basket/domain/use_cases/watch_all_basket_meals_use_case.dart';
import 'package:market_place/features/basket/domain/use_cases/save_meal_use_case.dart';
import 'package:market_place/features/basket/domain/use_cases/clear_meals_use_case.dart';
import 'package:market_place/features/basket/domain/entities/basket_product_model.dart';

part 'basket_event.dart';

part 'basket_state.dart';

part 'basket_bloc.freezed.dart';

@injectable
class BasketBloc extends Bloc<BasketEvent, BasketState> {
  BasketBloc(
    this._saveMealUseCase,
    this._clearMealsUseCase,
    this._decrementMealUseCase,
    this._watchAllBasketMealsUseCase,
  ) : super(const BasketState()) {
    on<_Started>(_onStarted);
    on<_AddMeal>(_onAddMeal);
    on<_RemoveMeal>(_onRemoveMeal);
    on<_Clean>(_onClean);

    add(const BasketEvent.started());
  }

  final SaveMealUseCase _saveMealUseCase;
  final ClearMealsUseCase _clearMealsUseCase;
  final DecrementMealUseCase _decrementMealUseCase;
  final WatchAllBasketMealsUseCase _watchAllBasketMealsUseCase;

  Future<void> _onStarted(_Started event, Emitter<BasketState> emit) async {
    await emit.forEach(
      _watchAllBasketMealsUseCase(),
      onData: (either) => either.fold(
        (failure) => state,
        (basketItems) => state.copyWith(items: basketItems),
      ),
    );
  }

  Future<void> _onAddMeal(_AddMeal event, Emitter<BasketState> emit) async {
    await _saveMealUseCase(SaveMealParams(meal: event.meal));
  }

  Future<void> _onRemoveMeal(
    _RemoveMeal event,
    Emitter<BasketState> emit,
  ) async {
    await _decrementMealUseCase(DecrementMealParams(id: event.meal.id));
  }

  Future<void> _onClean(_Clean event, Emitter<BasketState> emit) async {
    await _clearMealsUseCase();
  }
}
