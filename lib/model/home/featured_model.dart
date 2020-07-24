import 'package:json_annotation/json_annotation.dart';

part 'featured_model.g.dart';

@JsonSerializable()
class FeaturedModel {
  FeaturedModel(this.id, this.name, this.image, this.price);

  String image;
  String name;
  String price;
  String id;

  factory FeaturedModel.fromJson(Map<String, dynamic> json) => _$FeaturedModelFromJson(json);
  Map<String, dynamic> toJson() => _$FeaturedModelToJson(this);
}