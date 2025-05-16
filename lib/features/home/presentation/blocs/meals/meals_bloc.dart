import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:market_place/core/enums/status.dart';
import 'package:market_place/core/usecase.dart';
import 'package:market_place/features/home/domain/entities/category_entity.dart';
import 'package:market_place/features/home/domain/entities/meal_entity.dart';
import 'package:market_place/features/home/domain/use_cases/get_meal_categories_use_case.dart';
import 'package:market_place/features/home/domain/use_cases/get_meal_info_by_id_use_case.dart';
import 'package:market_place/features/home/domain/use_cases/get_meals_by_category_use_case.dart';

part 'meals_event.dart';

part 'meals_state.dart';

part 'meals_bloc.freezed.dart';

@injectable
class MealsBloc extends Bloc<MealsEvent, MealsState> {
  MealsBloc(
    this._getMealCategoriesUseCase,
    this._getMealsByCategoryUseCase,
    this._getMealInfoByIdUseCase,
  ) : super(const MealsState()) {
    on<_LoadCategories>(_onLoadCategories);
    on<_LoadMeals>(_onLoadMeals);
    on<_SelectCategory>(_onSelectCategory);
    on<_LoadMealInfo>(_onLoadMealInfo);
  }

  final GetMealCategoriesUseCase _getMealCategoriesUseCase;
  final GetMealsByCategoryUseCase _getMealsByCategoryUseCase;
  final GetMealInfoByIdUseCase _getMealInfoByIdUseCase;

  Future<void> _onLoadCategories(
    _LoadCategories event,
    Emitter<MealsState> emit,
  ) async {
    emit(state.copyWith(categoriesStatus: LoadingStatus()));
    final result = await _getMealCategoriesUseCase(NoParams());
    result.fold((f) => emit(state.copyWith(categoriesStatus: ErrorStatus(f))), (
      data,
    ) {
      final firstCategory = data.categories.firstOrNull;

      emit(
        state.copyWith(
          categories: data.categories,
          categoriesStatus: SuccessStatus(),
          selectedCategory: firstCategory,
        ),
      );
    });
  }

  Future<void> _onLoadMeals(_LoadMeals event, Emitter<MealsState> emit) async {
    emit(state.copyWith(mealsStatus: LoadingStatus()));
    final result = await _getMealsByCategoryUseCase(
      GetMealsByCategoryParams(category: event.category),
    );
    result.fold(
      (f) => emit(state.copyWith(mealsStatus: ErrorStatus(f))),
      (data) =>
          emit(state.copyWith(meals: data.meals, mealsStatus: SuccessStatus())),
    );
  }

  Future<void> _onLoadMealInfo(
    _LoadMealInfo event,
    Emitter<MealsState> emit,
  ) async {
    final result = await _getMealInfoByIdUseCase(
      GetMealInfoByIdParams(id: event.id),
    );

    result.fold(
      (f) {},
      (data) {
        final meal = data.meals.firstOrNull;
        emit(state.copyWith(youtubeUrl: meal?.youtube));
      },
    );
  }

  Future<void> _onSelectCategory(
    _SelectCategory event,
    Emitter<MealsState> emit,
  ) async {
    if (state.selectedCategory?.name == event.category.name) return;
    emit(state.copyWith(selectedCategory: event.category));
  }
}
