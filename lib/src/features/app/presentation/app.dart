import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_vtex/src/features/app/presentation/pages/home/home_page.dart';


class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: HomePage.routeName,
      routes:  {
        HomePage.routeName: (_)=> HomePage()
      },
    );
  }
}
