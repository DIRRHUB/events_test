import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:events_test/core/failure.dart';
import 'package:events_test/core/usecase.dart';
import 'package:events_test/domain/entities/enums/one_status.dart';
import 'package:events_test/domain/entities/simple_event_item.dart';
import 'package:events_test/domain/usecases/get_all_event_usecase.dart';
import 'package:events_test/domain/usecases/get_event_by_date_usecase.dart';
import 'package:events_test/presentation/search/bloc/search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this._allEventsUsecase, this._getEventsByDateUsecase) : super(SearchState.loading());
  final GetAllEventsUsecase _allEventsUsecase;
  final GetEventsByDateUsecase _getEventsByDateUsecase;

  void init() async {
    final Either<Failure, List<SimpleEventItem>> result = await _allEventsUsecase(const NoParams());
    result.fold(
      (failure) {
        emit(state.copyWith(status: OneStatus.initial, errorMessage: failure.message, startDate: null, endDate: null));
      },
      (events) {
        emit(state.copyWith(status: OneStatus.initial, events: events, startDate: null, endDate: null));
      },
    );
  }

  void getByDate() async {
    emit(state.copyWith(status: OneStatus.loading, startDate: state.startDate, endDate: state.endDate));
    if (state.startDate != null) {
      final GetEventsByDateUsecaseParams params =
          GetEventsByDateUsecaseParams(startDate: state.startDate!, endDate: state.endDate);
      final Either<Failure, List<SimpleEventItem>> result = await _getEventsByDateUsecase(params);
      result.fold(
        (failure) {
          emit(
            state.copyWith(
              status: OneStatus.initial,
              errorMessage: failure.message,
              startDate: state.startDate,
              endDate: state.endDate,
            ),
          );
        },
        (events) {
          emit(
            state.copyWith(
              status: OneStatus.initial,
              events: events,
              startDate: state.startDate,
              endDate: state.endDate,
            ),
          );
        },
      );
    }
  }

  void setDates({DateTime? startDate, DateTime? endDate}) {
    emit(state.copyWith(startDate: startDate, endDate: endDate));
  }
}
