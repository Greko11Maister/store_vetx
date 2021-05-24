import 'package:store_vtex/src/features/domain/entities/category_entity.dart';

class CategoryModel extends CategoryEntity {
  CategoryModel(
      {int id,
      String name,
      bool hasChildren,
      String url,
      List<CategoryModel> children,
      String title,
      String metaTagDescription})
      : super(
            id: id,
            name: name,
            hasChildren: hasChildren,
            url: url,
            children: children,
            title: title,
            metaTagDescription: metaTagDescription);

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
        id: json["id"],
        name: json["name"],
        hasChildren: json["hasChildren"],
        url: json["url"],
        children: (json["children"] as List).map((e) => CategoryModel.fromJson(e)).toList(),
        title: json["title"],
        metaTagDescription: json["metaTagDescription"]);
  }
}
