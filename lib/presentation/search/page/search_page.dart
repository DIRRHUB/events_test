import 'package:events_test/presentation/search/bloc/search_cubit.dart';
import 'package:events_test/presentation/search/bloc/search_state.dart';
import 'package:events_test/presentation/search/page/initial_search_page.dart';
import 'package:events_test/shared/widgets/one_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const OneAppBar(title: 'Search'),
      body: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          return const InitialSearchPage();
        },
      ),
    );
  }
}
