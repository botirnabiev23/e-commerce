import 'package:equatable/equatable.dart';
import 'package:market_place/core/errors/failure.dart';

sealed class StateStatus extends Equatable {
  const StateStatus();
}

class LoadingStatus extends StateStatus {
  const LoadingStatus();

  @override
  List<Object?> get props => <Object?>[];
}

class InitialStatus extends StateStatus {
  const InitialStatus();

  @override
  List<Object?> get props => <Object?>[];
}

class SuccessStatus extends StateStatus {
  const SuccessStatus();

  @override
  List<Object?> get props => <Object?>[];
}

class ErrorStatus extends StateStatus {
  const ErrorStatus([this.failure]);

  final Failure? failure;

  @override
  List<Object?> get props => <Object?>[failure];
}

extension StateStatusX on StateStatus {
  bool get isInitialOrLoading => this is InitialStatus || this is LoadingStatus;

  bool get isLoading => this is LoadingStatus;

  bool get isInitial => this is InitialStatus;

  bool get isSuccess => this is SuccessStatus;

  bool get isError => this is ErrorStatus;

  Failure? get failure =>
      this is ErrorStatus ? (this as ErrorStatus).failure : null;
}
