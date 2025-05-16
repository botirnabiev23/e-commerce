import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:market_place/core/errors/failure.dart';
import 'package:market_place/core/usecase.dart';
import 'package:market_place/features/home/domain/entities/category_entity.dart';
import 'package:market_place/features/home/domain/repositories/meal_repository.dart';

@injectable
final class GetMealCategoriesUseCase
    implements UseCase<CategoriesResponseEntity, NoParams> {
  const GetMealCategoriesUseCase(this._repository);

  final MealRepository _repository;

  @override
  Future<Either<Failure, CategoriesResponseEntity>> call(NoParams params) {
    return _repository.getMealCategories();
  }
}
