import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_vtex/src/core/usecases/usecase.dart';
import 'package:store_vtex/src/features/domain/entities/product_entity.dart';
import 'package:store_vtex/src/features/domain/usecases/get_product_and_sku_ids_use_case.dart';
import 'package:store_vtex/src/features/domain/usecases/get_product_id_use_case.dart';

class HomeController extends GetxController {
  final GetProductsAndSkuIdsUseCase _getProductsAndSkuIdsUseCase;
  final GetProductIdUseCase _getProductIdUseCase;
  RxList<ProductEntity> products = <ProductEntity>[].obs;

  HomeController({@required GetProductsAndSkuIdsUseCase getProductsAndSkuIdsUseCase, @required GetProductIdUseCase getProductIdUseCase})
      : assert(getProductsAndSkuIdsUseCase != null),
  assert(getProductIdUseCase !=  null),
        _getProductsAndSkuIdsUseCase = getProductsAndSkuIdsUseCase,
        _getProductIdUseCase =  getProductIdUseCase;



  Future<void> loadProductsAndSku() async {
    final res  = await _getProductsAndSkuIdsUseCase.call(NoParams());
    res.fold((l) => {

    }, (r) {
      log("Data: ${r.data}", name: "RESULT GET API PRODUCT AND SKUIDS");
      r.data.values.forEach((e) {
        e.forEach((f) {
          loadProductId(f);
        });
      });
    });
  }

  Future<void> loadProductId(int id) async {
    final res  = await _getProductIdUseCase.call(id);
    res.fold((l) => {

    }, (r) {
       this.products.add(r);
    });
  }

  @override
  void onReady() {
    loadProductsAndSku();
    super.onReady();
  }
}
