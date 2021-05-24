import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:store_vtex/src/features/app/presentation/controllers/product_controller.dart';
import 'package:store_vtex/src/features/app/presentation/controllers/shopping_cart_controller.dart';
import 'package:store_vtex/src/features/app/presentation/pages/product/widget.dart';
import 'package:store_vtex/src/features/app/presentation/pages/shoping_car/car_shopping_page.dart';

import '../../../../../../injection_container.dart';

class ProductsPage extends StatelessWidget {
  static const routeName = '/products/page';
  ProductController _controller;
  ShoppingCartController _shoppingCartController;

  Map<String, dynamic> arguments = {};

  ProductsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _shoppingCartController = Get.find();
    _controller = ProductController(getProductIdVariationsUseCase: sl());
    arguments = ModalRoute
        .of(context)
        .settings
        .arguments;
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {
                    Get.toNamed(CarShoppingPage.routeName);
                  },
                  icon: Icon(Icons.add_shopping_cart)),
            ],
          ),
          body: Column(
            children: [
              Divider(),
              GetBuilder<ProductController>(
                  init: _controller,
                  initState: (_) => _controller.loadVariations(arguments["productId"]),
                  builder: (_) {
                    if(_.productVariations == null) return Center(child: CircularProgressIndicator());
                    return Column(
                      children: [
                        Container(
                          color: _.productVariations != null && _.productVariations.skus.first.image != null ? Colors
                              .grey : null,
                          constraints: BoxConstraints(
                            minHeight: 150,
                            maxHeight: 150,
                            minWidth: 150,
                            maxWidth: 150,
                          ),
                          child: _.productVariations != null && _.productVariations.skus.first.image != null ?
                          Image.network(_.productVariations.skus.first.image,
                            fit: BoxFit.cover,
                          )
                              : Center(
                              child: Text(
                                'Imagen',
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              )),
                        ),
                        Container(
                          height: 40,
                          width: 150,
                          child: Center(
                            child: Text(
                              _.productVariations.name.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        ElevatedButton(onPressed: () {
                          _shoppingCartController.addItems(_.productVariations.skus.first.sku, 1);
                        }, child: Text("Agregar al carrito"))
                      ],
                    );
                  }),
              Divider(),
              WidgetProduct(),
              Divider(),
              WidgetProduct(),
              Divider(),
              WidgetProduct(),
              Divider(),
              WidgetProduct(),
              Divider(),
            ],
          ),
        ));
  }
}
