import 'dart:developer';

import 'package:store_vtex/src/core/error/failures.dart';
import 'package:store_vtex/src/core/http/api_provider.dart';
import 'package:store_vtex/src/features/data/models/product_and_sku_model.dart';
import 'package:store_vtex/src/features/data/models/product_model.dart';

abstract class ProductRemoteDataSource {
 Future<ProductsAndSkuModel> productAndSkuIds();
 Future<ProductModel> productId(int id);
}

class ProductRemoteDataSourceImpl extends ApiProvider implements ProductRemoteDataSource {
  @override
  Future<ProductsAndSkuModel> productAndSkuIds() async {
   try {
    final res = await dio.get("/catalog_system/pvt/products/GetProductAndSkuIds");
    log("${res.data}");
    return ProductsAndSkuModel.fromJson(res.data);
   }catch (error){
     print(error);
    throw ServerFailure(error: error).extract;
   }
  }

  @override
  Future<ProductModel> productId(int id) async {
    try {
      final res = await dio.get("/catalog/pvt/product/$id");
      log("${res.data}");
      return ProductModel.fromJson(res.data);
    }catch (error){
      print(error);
      throw ServerFailure(error: error).extract;
    }
  }
}