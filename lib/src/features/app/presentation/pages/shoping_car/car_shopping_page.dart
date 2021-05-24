
import 'package:flutter/material.dart';
import 'package:store_vtex/src/features/app/presentation/pages/shoping_car/widget.dart';

class CarShoppingPage extends StatelessWidget {
  static const routeName = '/car_shopping/page';
  const CarShoppingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          appBar: AppBar(),
          body: ListView(
           children:[ Column(
              children: [
                Center(
                  child: Container(
                    color: Colors.grey,
                    constraints: BoxConstraints(
                      maxWidth: 280,
                      minWidth: 280,
                      maxHeight: 280,
                      minHeight: 280,),
                    child: Center(
                     child: Text('Resumen de Productos'),
                    ),
                  ),
                ),
                Divider(),
                WidgetDetailCarShopping(),
                Divider(),
                WidgetDetailCarShopping(),
                Divider(),
                WidgetDetailCarShopping(),
                Divider(),
                WidgetDetailCarShopping(),
                Divider(),
                WidgetDetailCarShopping(),
                Divider(),
                WidgetDetailCarShopping(),
                Divider(),


              ],
            ),
        ]
          ) ,
        )
    );
  }
}
