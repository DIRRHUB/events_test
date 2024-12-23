import 'package:bloc/bloc.dart';
import 'package:events_test/presentation/search/bloc/search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchState.loading());

  void init() async {}
}
