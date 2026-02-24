import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
abstract class Category with _$Category {
  const factory Category({
    required String id,
    required String name,
    required String slug,
    String? image,
    String? parentId,
    CategoryParent? parent,
    @JsonKey(name: '_count') CategoryCount? count,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}

@freezed
abstract class CategoryParent with _$CategoryParent {
  const factory CategoryParent({
    required String id,
    required String name,
    required String slug,
  }) = _CategoryParent;

  factory CategoryParent.fromJson(Map<String, dynamic> json) => _$CategoryParentFromJson(json);
}

@freezed
abstract class CategoryCount with _$CategoryCount {
  const factory CategoryCount({
    @Default(0) int products,
  }) = _CategoryCount;

  factory CategoryCount.fromJson(Map<String, dynamic> json) => _$CategoryCountFromJson(json);
}

@freezed
abstract class CategoryListResponse with _$CategoryListResponse {
  const factory CategoryListResponse({
    required List<Category> categories,
  }) = _CategoryListResponse;

  factory CategoryListResponse.fromJson(Map<String, dynamic> json) => _$CategoryListResponseFromJson(json);
}
