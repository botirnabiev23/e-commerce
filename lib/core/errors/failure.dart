import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure();

  // String getMessage();

  @override
  List<Object> get props => <Object>[];
}
