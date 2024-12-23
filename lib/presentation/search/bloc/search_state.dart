import 'package:equatable/equatable.dart';
import 'package:events_test/domain/entities/enums/one_status.dart';
import 'package:events_test/domain/entities/simple_event_item.dart';

class SearchState extends Equatable {
  const SearchState({
    required this.status,
    required this.errorMessage,
    required this.events,
    this.startDate,
    this.endDate,
  });

  factory SearchState.loading() {
    return const SearchState(
      status: OneStatus.loading,
      errorMessage: '',
      events: [],
      startDate: null,
      endDate: null,
    );
  }
  final OneStatus status;
  final String errorMessage;
  final List<SimpleEventItem> events;
  final DateTime? startDate;
  final DateTime? endDate;

  @override
  List<Object?> get props => [status, errorMessage, events, startDate, endDate];

  SearchState copyWith({
    OneStatus? status,
    String? errorMessage,
    List<SimpleEventItem>? events,
    required DateTime? startDate,
    required DateTime? endDate,
  }) {
    return SearchState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      events: events ?? this.events,
      startDate: startDate,
      endDate: endDate,
    );
  }
}
