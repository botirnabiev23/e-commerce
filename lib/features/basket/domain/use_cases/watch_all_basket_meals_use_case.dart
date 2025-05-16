import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:market_place/core/errors/failure.dart';
import 'package:market_place/core/usecase.dart';
import 'package:market_place/features/basket/domain/entities/basket_product_model.dart';
import 'package:market_place/features/basket/domain/repositories/basket_repository.dart';


@injectable
final class WatchAllBasketMealsUseCase
    implements ParamlessUseCaseStream<List<BasketProduct>> {
  const WatchAllBasketMealsUseCase(this._repository);

  final BasketRepository _repository;

  @override
  Stream<Either<Failure, List<BasketProduct>>> call([
    NoParams params = const NoParams(),
  ]) {
    return _repository
        .watchAllMeals()
        .map((meals) => Right<Failure, List<BasketProduct>>(meals));
  }
}
