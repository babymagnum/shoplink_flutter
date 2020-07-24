// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeaturedModel _$FeaturedModelFromJson(Map<String, dynamic> json) {
  return FeaturedModel(json['id'] as String, json['name'] as String,
      json['image'] as String, json['price'] as String);
}

Map<String, dynamic> _$FeaturedModelToJson(FeaturedModel instance) =>
    <String, dynamic>{
      'image': instance.image,
      'name': instance.name,
      'price': instance.price,
      'id': instance.id
    };
