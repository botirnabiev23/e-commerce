import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:market_place/core/errors/failure.dart';
import 'package:market_place/core/usecase.dart';
import 'package:market_place/features/area/domain/entities/area_entity.dart';
import 'package:market_place/features/area/domain/repositories/area_repository.dart';

@injectable
final class GetAreasUseCase implements UseCase<List<AreaEntity>, NoParams> {
  const GetAreasUseCase(this._repository);

  final AreaRepository _repository;

  @override
  Future<Either<Failure, List<AreaEntity>>> call(NoParams params) {
    return _repository.getAreas();
  }
}