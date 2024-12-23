import 'package:dartz/dartz.dart';
import 'package:events_test/core/failure.dart';
import 'package:events_test/core/usecase.dart';
import 'package:events_test/data/repositories/firebase_remote_repository_impl.dart';
import 'package:events_test/domain/entities/simple_event_item.dart';

class GetEventsByDateUsecase extends UseCaseFutureEither<List<SimpleEventItem>, GetEventsByDateUsecaseParams> {
  GetEventsByDateUsecase({required this.repository});
  final FirebaseRemoteRepositoryImpl repository;

  @override
  Future<Either<Failure, List<SimpleEventItem>>> call(GetEventsByDateUsecaseParams params) async {
    final DateTime startDate = params.startDate.toUtc();
    final DateTime endDate = params.endDate?.toUtc() ?? startDate.add(const Duration(days: 1));
    return repository.getEventsByDate(startDate, endDate);
  }
}

class GetEventsByDateUsecaseParams {
  GetEventsByDateUsecaseParams({required this.startDate, this.endDate});

  /// The date to fetch events for
  final DateTime startDate;

  /// Optional end date to fetch events in range startDate to endDate
  final DateTime? endDate;
}
