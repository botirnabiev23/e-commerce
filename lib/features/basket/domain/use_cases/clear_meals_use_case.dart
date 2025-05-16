import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:market_place/core/errors/failure.dart';
import 'package:market_place/core/usecase.dart';
import 'package:market_place/features/basket/domain/repositories/basket_repository.dart';

@injectable
final class ClearMealsUseCase implements ParamlessUseCase<void> {
  const ClearMealsUseCase(this._repository);

  final BasketRepository _repository;

  @override
  Future<Either<Failure, void>> call([NoParams params = const NoParams()]) {
    return _repository.clearMeals();
  }
}
