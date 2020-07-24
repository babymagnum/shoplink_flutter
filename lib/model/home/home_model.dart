import 'package:json_annotation/json_annotation.dart';
import 'categories_model.dart';
import 'featured_model.dart';

part 'home_model.g.dart';

@JsonSerializable()
class HomeModel {
  HomeModel(this.featured, this.categories);

  bool success;
  String message;
  List<FeaturedModel> featured;
  List<CategoriesModel> categories;

  factory HomeModel.fromJson(Map<String, dynamic> json) => _$HomeModelFromJson(json);
  Map<String, dynamic> toJson() => _$HomeModelToJson(this);
}