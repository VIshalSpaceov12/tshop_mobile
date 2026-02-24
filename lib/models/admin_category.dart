import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_category.freezed.dart';
part 'admin_category.g.dart';

@freezed
abstract class AdminCategory with _$AdminCategory {
  const factory AdminCategory({
    required String id,
    required String name,
    required String slug,
    String? image,
    String? parentId,
    AdminCategoryParent? parent,
    @JsonKey(name: '_count') AdminCategoryCount? countData,
  }) = _AdminCategory;

  factory AdminCategory.fromJson(Map<String, dynamic> json) =>
      _$AdminCategoryFromJson(json);
}

@freezed
abstract class AdminCategoryParent with _$AdminCategoryParent {
  const factory AdminCategoryParent({
    required String name,
  }) = _AdminCategoryParent;

  factory AdminCategoryParent.fromJson(Map<String, dynamic> json) =>
      _$AdminCategoryParentFromJson(json);
}

@freezed
abstract class AdminCategoryCount with _$AdminCategoryCount {
  const factory AdminCategoryCount({
    @Default(0) int products,
    @Default(0) int children,
  }) = _AdminCategoryCount;

  factory AdminCategoryCount.fromJson(Map<String, dynamic> json) =>
      _$AdminCategoryCountFromJson(json);
}
