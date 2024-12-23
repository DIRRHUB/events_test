// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../data/models/remote/error_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorResponseModelImpl _$$ErrorResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ErrorResponseModelImpl(
      isError: json['error'] as bool,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$ErrorResponseModelImplToJson(
        _$ErrorResponseModelImpl instance) =>
    <String, dynamic>{
      'error': instance.isError,
      'message': instance.message,
    };
