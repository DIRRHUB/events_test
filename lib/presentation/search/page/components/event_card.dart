import 'package:events_test/core/context_extension.dart';
import 'package:events_test/core/dimension_constants.dart';
import 'package:events_test/domain/entities/simple_event_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key, required this.event});
  final SimpleEventItem event;

  double get iconSize => PaddingConstants.extraImmense * 3;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: iconSize,
      child: Card(
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(BorderRadiusConstants.normal),
              child: event.image.isNotEmpty
                  ? Image.network(
                      event.image,
                      width: iconSize,
                      height: iconSize,
                      fit: BoxFit.cover,
                    )
                  : SizedBox(
                      height: iconSize,
                      width: iconSize,
                      child: const Center(
                        child: Icon(
                          Icons.no_accounts,
                          size: IconConstants.iconLargeMedium,
                        ),
                      ),
                    ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(PaddingConstants.normal),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      event.title,
                      style: context.textTheme.titleMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: PaddingConstants.extraSmall),
                    Flexible(
                      child: Text(
                        event.details,
                        style: context.textTheme.titleSmall,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: PaddingConstants.extraSmall),
                    Text(
                      event.address,
                      style: context.textTheme.bodySmall,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: PaddingConstants.extraSmall),
                    Text(
                      DateFormat('dd-MM-yyyy').format(event.date),
                      style: context.textTheme.bodySmall,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
