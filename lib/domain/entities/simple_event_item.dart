// ignore_for_file: invalid_annotation_target

import 'package:events_test/data/models/remote/simple_event_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/domain/entities/simple_event_item.freezed.dart';

@freezed
class SimpleEventItem with _$SimpleEventItem {
  factory SimpleEventItem({
    required String id,
    required String title,
    required String details,
    required String address,
    required String image,
    required DateTime date,
  }) = _SimpleEventItem;

  const SimpleEventItem._();

  factory SimpleEventItem.fromRemoteModel(SimpleEventModel model) {
    return SimpleEventItem(
      id: model.id,
      title: model.title,
      details: model.details,
      address: model.address,
      image: model.image ?? '',
      date: DateTime.tryParse(model.date)?.toLocal() ?? DateTime.now(),
    );
  }
}
