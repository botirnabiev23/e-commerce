import 'package:dartz/dartz.dart';
import 'package:market_place/core/errors/failure.dart';

final class NoParams {
  const NoParams();
}

const NoParams noParams = NoParams();

abstract interface class UseCase<T, Params> {
  Future<Either<Failure, T>> call(Params params);
}

abstract interface class ParamlessUseCase<T> {
  Future<Either<Failure, T>> call([NoParams params = const NoParams()]);
}

abstract interface class UseCaseStream<T, Params> {
  Stream<Either<Failure, T>> call(Params params);
}

abstract interface class ParamlessUseCaseStream<T> {
  Stream<Either<Failure, T>> call([NoParams params = const NoParams()]);
}
