import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LoginModel {
  LoginModel(this.success, this.jwt);

  bool success;
  String jwt;
  String message;

  factory LoginModel.fromJson(Map<String, dynamic> json) => _$LoginModelFromJson(json);
  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}