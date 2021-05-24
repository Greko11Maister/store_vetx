
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:store_vtex/src/features/app/presentation/pages/home/home_page.dart';
import 'package:store_vtex/src/features/app/presentation/pages/home/home_page2.dart';
import 'package:store_vtex/src/features/app/presentation/pages/product/widget.dart';
import 'package:get/route_manager.dart';
import 'package:store_vtex/src/features/app/presentation/pages/shoping_car/car_shopping_page.dart';
class ProductsPage extends StatelessWidget {
  static const routeName = '/products/page';
  const ProductsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading:
                IconButton(onPressed: (){
                  Get.toNamed(HomePage2.routeName);
                }, icon:Icon(Icons.keyboard_arrow_down_outlined)),
            actions: [
              IconButton(onPressed: (){
                Get.toNamed(CarShoppingPage.routeName);
              }, icon:Icon(Icons.add_shopping_cart)),],),
          body: Column(
            children: [
              Divider(),
              Container(
                color: Colors.grey,
                constraints: BoxConstraints(
                  minHeight: 150,
                  maxHeight: 150,
                  minWidth: 150,
                  maxWidth: 150,
                ),
                child: Center(child: Text('Imagen', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
              ),
              Container(
                height: 40,
                width: 150,
                child: Center(
                  child: Text('Descripcion',style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20,
                  ),),
                ),
              ),
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
        )
    );
  }
}
