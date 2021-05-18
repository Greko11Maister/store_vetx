import 'dart:developer';

import 'package:store_vtex/src/features/data/models/range_model.dart';
import 'package:store_vtex/src/features/domain/entities/products_and_sku_entity.dart';

class ProductsAndSkuModel extends ProductsAndSkuEntity {
  ProductsAndSkuModel({
    Map<String, List<dynamic>> data,
    RangeModel range,
  }) : super(data: data, range: range);

  factory ProductsAndSkuModel.fromJson(Map<String, dynamic> json) {
    log("${json["data"]}", name: "fromJson");
    Map<String, List<dynamic>> _data = new  Map<String, List<dynamic>>.from(json["data"])   ;
    return ProductsAndSkuModel(data: _data, range: RangeModel.fromJson(json["range"]));
  }
}
