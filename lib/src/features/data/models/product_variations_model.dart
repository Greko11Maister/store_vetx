import 'package:store_vtex/src/features/data/models/sku_model.dart';
import 'package:store_vtex/src/features/domain/entities/product_variations.dart';

class ProductVariationsModel extends ProductVariationsEntity {
  ProductVariationsModel({
    int productId,
    String name,
    List<SkuModel> skus
}) : super(
    productId: productId,
    name: name,
    skus: skus
  );


  factory ProductVariationsModel.fromJson(Map<String, dynamic> json) {
    return ProductVariationsModel(
      productId: json["productId"],
      name: json["name"],
      skus: (json["skus"] as List).map((e) => SkuModel.fromJson(e)).toList()
    );
  }
}