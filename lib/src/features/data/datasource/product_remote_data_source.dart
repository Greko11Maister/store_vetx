import 'dart:developer';

import 'package:store_vtex/src/core/error/failures.dart';
import 'package:store_vtex/src/core/http/api_provider.dart';
import 'package:store_vtex/src/features/data/models/product_and_sku_model.dart';
import 'package:store_vtex/src/features/data/models/product_model.dart';
import 'package:store_vtex/src/features/data/models/product_variations_model.dart';

abstract class ProductRemoteDataSource {
 Future<ProductsAndSkuModel> productAndSkuIds(Map<String, dynamic> queryParameters);
 Future<ProductModel> productId(int id);
 Future<ProductVariationsModel>variations(int id);
}

class ProductRemoteDataSourceImpl extends ApiProvider implements ProductRemoteDataSource {
  @override
  Future<ProductsAndSkuModel> productAndSkuIds(Map<String, dynamic> queryParameters) async {
   try {
    final res = await dio.get("/catalog_system/pvt/products/GetProductAndSkuIds",
    queryParameters: queryParameters ?? null
    );
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

  @override
  Future<ProductVariationsModel> variations(int id) async {
    try {
      final res = await dio.get("/catalog_system/pub/products/variations/$id");
      log("${res.data}");
      return ProductVariationsModel.fromJson(res.data);
    }catch (error){
      print(error);
      throw ServerFailure(error: error).extract;
    }
  }
}