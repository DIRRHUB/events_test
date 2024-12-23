import 'package:equatable/equatable.dart';
import 'package:events_test/domain/entities/enums/one_status.dart';

class SearchState extends Equatable {
  const SearchState({
    required this.status,
    required this.errorMessage,
    required this.savedUrl,
  });

  factory SearchState.loading() {
    return const SearchState(
      status: OneStatus.loading,
      errorMessage: '',
      savedUrl: '',
    );
  }
  final OneStatus status;
  final String errorMessage;
  final String savedUrl;

  @override
  List<Object?> get props => [status, errorMessage, savedUrl];

  SearchState copyWith({
    OneStatus? status,
    String? errorMessage,
    String? savedUrl,
  }) {
    return SearchState(
      status: status ?? this.status,
      savedUrl: savedUrl ?? this.savedUrl,
      errorMessage: errorMessage ?? '',
    );
  }
}
