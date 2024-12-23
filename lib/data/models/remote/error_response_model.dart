// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:events_test/core/serializable_interfaces.dart';

part '../../../generated/data/models/remote/error_response_model.freezed.dart';
part '../../../generated/data/models/remote/error_response_model.g.dart';

@freezed
class ErrorResponseModel with _$ErrorResponseModel {
  factory ErrorResponseModel({
    @JsonKey(name: 'error') required bool isError,
    @JsonKey(name: 'message') required String message,
  }) = _ErrorResponseModel;

  factory ErrorResponseModel.fromJson(Json json) => _$ErrorResponseModelFromJson(json);
}
