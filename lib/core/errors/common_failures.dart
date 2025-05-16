import 'package:market_place/core/errors/failure.dart';

class CancelledRequestFailure extends Failure {}

class UnknownFailure extends Failure {
  const UnknownFailure();
}

class ServerFailure extends Failure {}

class CacheFailure extends Failure {}
