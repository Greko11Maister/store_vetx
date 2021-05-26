import 'package:get/route_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:store_vtex/src/features/app/presentation/controllers/account_controller.dart';
import 'package:store_vtex/src/features/app/presentation/controllers/home_controller.dart';
import 'package:store_vtex/src/features/app/presentation/pages/home/product_item.dart';
import 'package:store_vtex/src/features/app/presentation/pages/product/products_page.dart';
import 'package:store_vtex/src/features/app/presentation/pages/profile/profile_page.dart';

import '../../../../../../injection_container.dart';
import 'package:get/get.dart';

class HomePage2 extends StatelessWidget {
  static const routeName = 'home/page2/';
  HomeController _controller;

  HomePage2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _controller =
        HomeController(getProductsAndSkuIdsUseCase: sl(), getProductIdUseCase: sl(), getCategoryLevelUseCase: sl());
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          GetBuilder<AccountController>(
            builder: (_) {
              return InkWell(
                child: Container(
                  margin: EdgeInsets.only(top: 10.0, left: 15.0, right: 10.0),
                  height: 120,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Icon(
                            Icons.account_circle_outlined,
                            size: 80,
                            color: Colors.black,
                          ),
                        ),
                        constraints: BoxConstraints(
                          minHeight: 88,
                          maxHeight: 88,
                          minWidth: 88,
                          maxWidth: 88,
                        ),
                        color: Colors.white,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Container(
                          constraints: BoxConstraints(maxWidth: 180, maxHeight: 40),
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              _.user.email,
                              style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Get.toNamed(ProfilePage.routeName);
                },
              );
            },
          ),
          Divider(),
          GetBuilder<HomeController>(
              init: _controller,
              initState: (_) => _controller.loadCategory(),
              builder: (_) => Obx(() => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: _.category
                        .map(
                          (e) => Container(
                            child: TextButton(
                              onPressed: () {
                                _.loadProductsAndSku(categoryId: e.id.toString());
                              },
                              child: Text(e.name),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffDBDBDB)),
                              borderRadius: BorderRadius.circular(5.0),
                              color: Color(0xffF5F5F5),
                            ),
                          ),
                        )
                        .toList(),
                  ))),
          Divider(),
          GetBuilder<HomeController>(
            init: _controller,
            builder: (_) => Obx(() => Expanded(
                  child: ListView.separated(
                    itemCount: _.products.length,
                    separatorBuilder: (_, __) => Divider(),
                    itemBuilder: (ctx, i) => ProductItem(
                        onTap: () => Get.toNamed(ProductsPage.routeName, arguments: {"productId": _.products[i].id}),
                        p: _.products[i]),
                  ),
                )),
          ),
        ],
      ),
    ));
  }
}
