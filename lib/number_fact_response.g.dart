// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_fact_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NumberFactResponce _$NumberFactResponceFromJson(Map<String, dynamic> json) =>
    NumberFactResponce(
      text: json['text'] as String,
      number: json['number'] as int,
      found: json['found'] as bool,
      type: json['type'] as String,
    );

Map<String, dynamic> _$NumberFactResponceToJson(NumberFactResponce instance) =>
    <String, dynamic>{
      'text': instance.text,
      'number': instance.number,
      'found': instance.found,
      'type': instance.type,
    };
