

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetHomePage extends StatelessWidget {
  const WidgetHomePage({Key key}) : super(key: key);

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
                Text('texto de descripcion'),
              ],
            ),
            Icon(Icons.arrow_forward_ios_outlined),
          ],
        )
      ),
    );
  }
}
