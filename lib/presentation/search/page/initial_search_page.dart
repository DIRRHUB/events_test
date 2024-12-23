import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:events_test/core/dimension_constants.dart';
import 'package:events_test/presentation/search/bloc/search_cubit.dart';
import 'package:events_test/presentation/search/bloc/search_state.dart';
import 'package:events_test/presentation/search/page/components/event_card.dart';
import 'package:events_test/shared/widgets/one_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialSearchPage extends StatelessWidget {
  const InitialSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final SearchCubit bloc = BlocProvider.of<SearchCubit>(context);
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return Column(
          children: [
            if (state.events.isEmpty)
              const Expanded(child: Center(child: Text('No events found')))
            else
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return EventCard(event: state.events[index]);
                  },
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                  itemCount: state.events.length,
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(PaddingConstants.large),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () async {
                      showCalendar(context);
                    },
                    icon: const Icon(Icons.calendar_month),
                  ),
                  const SizedBox(width: PaddingConstants.large),
                  Expanded(
                    child: OneButton(
                      isEnabled: state.startDate != null,
                      text: 'Search',
                      onTap: () {
                        bloc.getByDate();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  void showCalendar(BuildContext context) async {
    final SearchCubit bloc = BlocProvider.of<SearchCubit>(context);
    final List<DateTime?>? result = await showCalendarDatePicker2Dialog(
      context: context,
      config: CalendarDatePicker2WithActionButtonsConfig(calendarType: CalendarDatePicker2Type.range),
      dialogSize: const Size(double.infinity, 400),
      borderRadius: BorderRadius.circular(BorderRadiusConstants.large),
    );
    if (result != null) {
      if (result.length == 1) {
        bloc.setDates(startDate: result.first, endDate: null);
      } else {
        bloc.setDates(startDate: result.first, endDate: result.last);
      }
    }
  }
}
