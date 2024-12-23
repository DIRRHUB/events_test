import 'package:events_test/core/services/global_message_service.dart';
import 'package:events_test/domain/entities/enums/one_status.dart';
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
      body: BlocConsumer<SearchCubit, SearchState>(
        listener: (context, state) {
          if (state.errorMessage.isNotEmpty) {
            GlobalMessageService.show(context, state.errorMessage);
          }
        },
        builder: (context, state) {
          if (state.status == OneStatus.loading) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return const InitialSearchPage();
          }
        },
      ),
    );
  }
}
