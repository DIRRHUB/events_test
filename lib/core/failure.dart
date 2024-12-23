import 'package:equatable/equatable.dart';
import 'package:events_test/data/models/remote/error_response_model.dart';

abstract class Failure extends Equatable {
  const Failure(this.message);
  final String message;
}

class ServerFailure extends Failure {
  const ServerFailure(
    super.errors,
  );

  factory ServerFailure.fromModel(ErrorResponseModel model) {
    return ServerFailure(model.message);
  }

  @override
  List<Object?> get props => [message];
}

class UndefinedFailure extends Failure {
  factory UndefinedFailure(dynamic e) {
    return UndefinedFailure._(e);
  }

  const UndefinedFailure._(dynamic e) : super('Undefined error: \n$e');

  @override
  List<Object?> get props => [message];
}
