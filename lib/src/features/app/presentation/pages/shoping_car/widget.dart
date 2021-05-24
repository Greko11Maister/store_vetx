

import 'package:flutter/material.dart';

class WidgetDetailCarShopping extends StatelessWidget {
  const WidgetDetailCarShopping({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Card(
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.grey,
                height: 60,
                width: 60,
              ),
              Column(
                children: [
                  Text('texto de Producto'),

                ],
              ),
              Icon(Icons.cancel_outlined),
            ],
          )
      ),
    );
  }
}
