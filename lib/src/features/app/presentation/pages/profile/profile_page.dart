

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class  ProfilePage extends StatelessWidget {
 static const routeName = '/profile/page';
  const  ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 80, left: 20.0,bottom: 15.0),
            child: Row(
              children: [
                Container(
                  child: CircleAvatar(
                    backgroundColor:Colors.grey,
                    child: Icon(Icons.account_circle_outlined, size: 120, color: Colors.black,),
                  ),
                  constraints: BoxConstraints(
                    minHeight: 120,
                    maxHeight: 120,
                    minWidth: 120,
                    maxWidth: 120,
                  ),
                  color: Colors.white,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Nombre: Juan Carlos Rojas', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Documento: 12345695',  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Id:  B1-52364', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),),
                    )
                  ],
                )
              ],
            ),
          ),
          Divider(),
          Padding(
            padding:  EdgeInsets.only(left: 18, top: 8.0),
            child: Text('Direccion: Lorem ipsum dolor sit amet ', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 18, top: 8.0),
            child: Text('Telefono: 1234567',style: TextStyle(fontSize:18.0, fontWeight: FontWeight.w500),),
          ),
          Padding(
            padding:   EdgeInsets.only(left: 18, top: 8.0),
            child: Text('Fecha de ingreso: 25/12/2020',style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),),
          ),





        ],
      ),
    );
  }
}
