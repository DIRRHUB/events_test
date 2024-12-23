import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:events_test/core/failure.dart';
import 'package:events_test/core/serializable_interfaces.dart';
import 'package:events_test/data/models/remote/error_response_model.dart';

Future<Either<Failure, T>> execute<T>(
  Future<T> Function() operation, {
  Failure Function(Exception e)? customUnknownErrorParser,
}) async {
  try {
    final result = await operation();
    return Right(result);
  } on DioException catch (e, _) {
    if (customUnknownErrorParser != null) {
      final Failure failure = customUnknownErrorParser(e);
      return Left(failure);
    }
    if (e.response != null && e.response?.data != null && e.response?.data is Json) {
      final Json json = e.response!.data as Json;
      final ErrorResponseModel model = ErrorResponseModel.fromJson(json);
      return Left(ServerFailure.fromModel(model));
    } else {
      return Left(UndefinedFailure(e));
    }
  }
}
