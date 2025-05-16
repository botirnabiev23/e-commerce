import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:market_place/core/errors/failure.dart';
import 'package:market_place/core/usecase.dart';
import 'package:market_place/features/basket/domain/repositories/basket_repository.dart';


@injectable
final class DeleteMealUseCase implements UseCase<void, DeleteMealParams> {
  const DeleteMealUseCase(this._repository);

  final BasketRepository _repository;

  @override
  Future<Either<Failure, void>> call(DeleteMealParams params) {
    return _repository.deleteMeal(params.id);
  }
}

final class DeleteMealParams {
  final String id;

  const DeleteMealParams({required this.id});
}
