import 'package:dartz/dartz.dart';
import 'package:events_test/core/failure.dart';
import 'package:events_test/data/datasources/remote/firebase_remote_datasource_impl.dart';
import 'package:events_test/domain/entities/simple_event_item.dart';

class FirebaseRemoteRepositoryImpl {
  const FirebaseRemoteRepositoryImpl(this._firebaseDatasource);
  final FirebaseRemoteDatasourceImpl _firebaseDatasource;

  Future<Either<Failure, List<SimpleEventItem>>> getAllEvents() async {
    try {
      final result = await _firebaseDatasource.getAllEvents();
      return Right(result.map(SimpleEventItem.fromRemoteModel).toList());
    } catch (e) {
      return Left(UndefinedFailure('Error fetching all events: $e'));
    }
  }

  Future<Either<Failure, List<SimpleEventItem>>> getEventsByDate(DateTime startDate, DateTime endDate) async {
    try {
      final result = await _firebaseDatasource.getEventsByDate(startDate.toIso8601String(), endDate.toIso8601String());
      return Right(result.map(SimpleEventItem.fromRemoteModel).toList());
    } catch (e) {
      return Left(UndefinedFailure('Error fetching events by date: $e'));
    }
  }
}
