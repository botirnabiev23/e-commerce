import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:market_place/core/errors/failure.dart';
import 'package:market_place/core/usecase.dart';
import 'package:market_place/features/basket/domain/repositories/basket_repository.dart';


@injectable
final class DecrementMealUseCase implements UseCase<void, DecrementMealParams> {
  const DecrementMealUseCase(this._repository);

  final BasketRepository _repository;

  @override
  Future<Either<Failure, void>> call(DecrementMealParams params) {
    return _repository.decrementMeal(params.id);
  }
}

final class DecrementMealParams {
  final String id;

  const DecrementMealParams({required this.id});
}
