


import 'package:flutter/material.dart';

class WidgetProduct extends StatelessWidget {
  const WidgetProduct({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child:Card(
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                children:[
                Container(
                  color: Colors.grey,
                  height: 60,
                  width: 60,
                ),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)), color: Colors.white,
                      ),
                      constraints: BoxConstraints(
                        maxHeight: 24,
                        minHeight: 24,
                        maxWidth: 24,
                        minWidth: 24,),
                      child: Icon(Icons.add, )),
                ]
              ),
              Column(
                children: [
                  Text('texto de Producto'),
                  Text('texto de descripcion'),
                ],
              ),
              SizedBox(
                height: 60,
                width: 60,
              )
            ],
          )
      ),
    );
  }
}
