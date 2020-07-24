// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) {
  return HomeModel(
      (json['featured'] as List)
          ?.map((e) => e == null
              ? null
              : FeaturedModel.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      (json['categories'] as List)
          ?.map((e) => e == null
              ? null
              : CategoriesModel.fromJson(e as Map<String, dynamic>))
          ?.toList())
    ..success = json['success'] as bool
    ..message = json['message'] as String;
}

Map<String, dynamic> _$HomeModelToJson(HomeModel instance) => <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'featured': instance.featured,
      'categories': instance.categories
    };
