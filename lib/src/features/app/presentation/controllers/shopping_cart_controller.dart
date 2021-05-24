import 'dart:developer';

import 'package:get/get.dart';
import 'package:store_vtex/src/features/domain/usecases/add_shopping_cart_use_case.dart';
import 'package:meta/meta.dart';

class ShoppingCartController extends GetxController {
  final AddShoppingCartUseCase _addShoppingCartUseCase;

  ShoppingCartController({@required AddShoppingCartUseCase addShoppingCartUseCase})
      : assert(addShoppingCartUseCase != null),
        _addShoppingCartUseCase = addShoppingCartUseCase;

  Map<String, dynamic> cart = {"items": <Map<String, dynamic>>[]};

  Future<void> addCart() async {
    final res = await _addShoppingCartUseCase.call(cart);
    res.fold((l) => null, (r) {
      log("Agregado", name: "Add Shopping Cart");
    });
  }

  void addItems(int sku, int quantity) {
    Map<String, dynamic> _items = {
      "id": sku,
      "quantity": quantity,
      "seller": "1"
    };
    cart["items"] = [...cart["items"], _items];
    addCart();
    update();
  }
}
