import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_vtex/src/core/usecases/usecase.dart';
import 'package:store_vtex/src/features/domain/entities/category_entity.dart';
import 'package:store_vtex/src/features/domain/entities/category_entity.dart';
import 'package:store_vtex/src/features/domain/entities/product_entity.dart';
import 'package:store_vtex/src/features/domain/usecases/get_category_level_use_case.dart';
import 'package:store_vtex/src/features/domain/usecases/get_product_and_sku_ids_use_case.dart';
import 'package:store_vtex/src/features/domain/usecases/get_product_id_use_case.dart';

class HomeController extends GetxController {
  final GetProductsAndSkuIdsUseCase _getProductsAndSkuIdsUseCase;
  final GetProductIdUseCase _getProductIdUseCase;
  final GetCategoryLevelUseCase _getCategoryLevelUseCase;
  RxList<ProductEntity> products = <ProductEntity>[].obs;
  RxList<CategoryEntity> category = <CategoryEntity>[].obs;

  HomeController(
      {@required GetProductsAndSkuIdsUseCase getProductsAndSkuIdsUseCase,
      @required GetProductIdUseCase getProductIdUseCase,
      @required GetCategoryLevelUseCase getCategoryLevelUseCase})
      : assert(getProductsAndSkuIdsUseCase != null),
        assert(getProductIdUseCase != null),
        assert(getCategoryLevelUseCase != null),
        _getProductsAndSkuIdsUseCase = getProductsAndSkuIdsUseCase,
        _getProductIdUseCase = getProductIdUseCase,
        _getCategoryLevelUseCase = getCategoryLevelUseCase;

  Future<void> loadProductsAndSku({String categoryId}) async {
    Map<String, dynamic> queryParameters = {};
    if(categoryId != null) queryParameters["categoryId"] = categoryId;
    final res = await _getProductsAndSkuIdsUseCase.call(queryParameters);
    res.fold((l) => {}, (r) {
      this.products.clear();
      log("Data: ${r.data}", name: "RESULT GET API PRODUCT AND SKUIDS");
      r.data.values.forEach((e) {
        e.forEach((f) {
          loadProductId(f);
        });
      });
    });
  }

  Future<void> loadProductId(int id) async {
    final res = await _getProductIdUseCase.call(id);
    res.fold((l) => {}, (r) {
      this.products.add(r);
    });
  }

  Future<void> loadCategory({String level = "1"}) async {
    final res = await _getCategoryLevelUseCase.call(level);
    res.fold((l) => null, (r) {
      this.category.addAll(r);
    });
  }

  @override
  void onReady() {
    loadProductsAndSku();
    super.onReady();
  }
}
