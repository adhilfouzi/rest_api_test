import 'package:json_annotation/json_annotation.dart';

part 'number_fact_response.g.dart';

@JsonSerializable()
class NumberFactResponce {
  @JsonKey(name: 'text')
  final String text;

  @JsonKey(name: 'number')
  final int number;

  @JsonKey(name: 'found')
  final bool found;

  @JsonKey(name: 'type')
  final String type;

  NumberFactResponce({
    required this.text,
    required this.number,
    required this.found,
    required this.type,
  });

  factory NumberFactResponce.fromJson(Map<String, dynamic> json) =>
      _$NumberFactResponceFromJson(json);

  Map<String, dynamic> toJson() => _$NumberFactResponceToJson(this);
}
