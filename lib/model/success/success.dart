import 'package:json_annotation/json_annotation.dart';

part 'success.g.dart';

@JsonSerializable()
class Success {

  Success(this.success, this.message);

  bool success;
  String message;

  factory Success.fromJson(Map<String, dynamic> json) => _$SuccessFromJson(json);
  Map<String, dynamic> toJson() => _$SuccessToJson(this);
}