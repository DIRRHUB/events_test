// ignore_for_file: invalid_annotation_target

import 'package:events_test/core/serializable_interfaces.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../generated/data/models/remote/simple_event_model.freezed.dart';
part '../../../generated/data/models/remote/simple_event_model.g.dart';

@freezed
class SimpleEventModel with _$SimpleEventModel {
  factory SimpleEventModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'details') required String details,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'date') required String date,
  }) = _SimpleEventModel;

  factory SimpleEventModel.fromJson(Json json) => _$SimpleEventModelFromJson(json);
}
