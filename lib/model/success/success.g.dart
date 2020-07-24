// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'success.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Success _$SuccessFromJson(Map<String, dynamic> json) {
  return Success(json['success'] as bool, json['message'] as String);
}

Map<String, dynamic> _$SuccessToJson(Success instance) =>
    <String, dynamic>{'success': instance.success, 'message': instance.message};
