import 'package:flutter/material.dart';
import 'package:store_vtex/src/features/app/presentation/controllers/home_controller.dart';

import '../../../../../../injection_container.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "/home/page";

  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController _controller;

  @override
  void initState() {
    _controller = HomeController(getProductsAndSkuIdsUseCase: sl(), getProductIdUseCase: sl());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prductos de la tienda VTEX"),
      ),
      body: GetBuilder<HomeController>(
          init: _controller,
          builder: (_) {
            return Column(
              children: [
                Container(
                  child: TextButton(
                    child: Text("load"),
                    onPressed: () {
                      _.loadProductsAndSku();
                    },
                  ),
                ),
                Obx(() => Expanded(
                      child: ListView.builder(
                          itemCount: _.products.length,
                          itemBuilder: (ctx, i) => ListTile(
                                title: Text(_.products[i].title),
                                subtitle: Text(_.products[i].metaTagDescription),
                              )),
                    ))
              ],
            );
          }),
    );
  }
}
