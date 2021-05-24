import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_vtex/src/features/app/presentation/pages/home/home_page.dart';
import 'package:store_vtex/src/features/app/presentation/pages/home/home_page2.dart';
import 'package:store_vtex/src/features/app/presentation/pages/product/products_page.dart';
import 'package:store_vtex/src/features/app/presentation/pages/profile/profile_page.dart';
import 'package:store_vtex/src/features/app/presentation/pages/shoping_car/car_shopping_page.dart';


class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: HomePage2.routeName,
      routes:  {
        HomePage.routeName: (_)=> HomePage(),
        HomePage2.routeName: (_)=> HomePage2(),
        ProductsPage.routeName: (_)=> ProductsPage(),
        CarShoppingPage.routeName: (_)=> CarShoppingPage(),
        ProfilePage.routeName: (_)=> ProfilePage(),
      },
    );
  }
}
