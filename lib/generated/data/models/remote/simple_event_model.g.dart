// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../data/models/remote/simple_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SimpleEventModelImpl _$$SimpleEventModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SimpleEventModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      details: json['details'] as String,
      address: json['address'] as String,
      date: json['date'] as String,
    );

Map<String, dynamic> _$$SimpleEventModelImplToJson(
        _$SimpleEventModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'details': instance.details,
      'address': instance.address,
      'date': instance.date,
    };
