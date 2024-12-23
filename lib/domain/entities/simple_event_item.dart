// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/domain/entities/simple_event_item.freezed.dart';

@freezed
class SimpleEventItem with _$SimpleEventItem {
  factory SimpleEventItem({
    required String id,
    required String title,
    required String details,
    required String address,
    required DateTime date,
  }) = _SimpleEventItem;

  const SimpleEventItem._();
}
