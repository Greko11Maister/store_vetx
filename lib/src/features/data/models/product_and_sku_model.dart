import 'package:store_vtex/src/features/data/models/range_model.dart';
import 'package:store_vtex/src/features/domain/entities/products_and_sku_entity.dart';

class ProductsAndSkuModel extends ProductsAndSkuEntity {
  ProductsAndSkuModel({
    Map<String, List<int>> data,
    RangeModel range,
  }) : super(data: data, range: range);

  factory ProductsAndSkuModel.fromJson(Map<String, dynamic> json) {
    return ProductsAndSkuModel(data: json["data"], range: RangeModel.fromJson(json["range"]));
  }
}
