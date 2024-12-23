import 'package:dartz/dartz.dart';
import 'package:events_test/core/failure.dart';
import 'package:events_test/core/usecase.dart';
import 'package:events_test/data/repositories/firebase_remote_repository_impl.dart';
import 'package:events_test/domain/entities/simple_event_item.dart';

class GetAllEventsUsecase extends UseCaseFutureEither<List<SimpleEventItem>, NoParams> {
  GetAllEventsUsecase({required this.repository});
  final FirebaseRemoteRepositoryImpl repository;

  @override
  Future<Either<Failure, List<SimpleEventItem>>> call(NoParams params) async {
    return repository.getAllEvents();
  }
}
