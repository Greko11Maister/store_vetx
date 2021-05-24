


import 'package:get/route_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:store_vtex/src/features/app/presentation/pages/home/widget.dart';
import 'package:store_vtex/src/features/app/presentation/pages/product/products_page.dart';
import 'package:store_vtex/src/features/app/presentation/pages/profile/profile_page.dart';

class  HomePage2 extends StatelessWidget {
  static const routeName = 'home/page2/';

  const  HomePage2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(),
      body: ListView(
        children:[ Column(
          children: [
            InkWell(
              child: Container(
                margin: EdgeInsets.only(top: 10.0, left: 15.0,right: 10.0),
                height: 120,

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center
                  ,
                  children: [
                    Container(
                      child: CircleAvatar(
                        backgroundColor:Colors.grey,
                        child: Icon(Icons.account_circle_outlined, size: 80, color: Colors.black,),
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
                      padding:  EdgeInsets.only(left: 15.0),
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 180,
                          minWidth: 180,
                          maxHeight: 30,
                          minHeight: 30

                        ),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.all(Radius.circular(5.0),
                          )
                        ),
                        child: Center(child: Text('aqui descripcion', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),)),
                      ),
                    )
                  ],
                ),
              ),
              onTap: (){
                Get.toNamed(ProfilePage.routeName);},
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    child: TextButton(onPressed: (){}, child:Text('C1'),),
                    decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffDBDBDB)),
                    borderRadius: BorderRadius.circular(5.0),
                    color: Color(0xffF5F5F5),
                   ),),


                Container(child: TextButton(onPressed: (){}, child:Text('C2')),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffDBDBDB)),
                       borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xffF5F5F5),
                        ), ),
                Container(child: TextButton(onPressed: (){}, child:Text('C3')),
                     decoration: BoxDecoration(
                     border: Border.all(color: Color(0xffDBDBDB)),
                     borderRadius: BorderRadius.circular(5.0),
                     color: Color(0xffF5F5F5),
                      ),),

              ],
            ),
            Divider(),
            InkWell(
                onTap: (){
                  Get.toNamed(ProductsPage.routeName);
                },
                child: WidgetHomePage()),
            Divider(),
            InkWell(
                onTap: (){
                  Get.toNamed(ProductsPage.routeName);
                },
                child: WidgetHomePage()),
            Divider(),
            InkWell(
                onTap: (){
                  Get.toNamed(ProductsPage.routeName);
                },
                child: WidgetHomePage()),
            Divider(),
            InkWell(
                onTap: (){
                  Get.toNamed(ProductsPage.routeName);
                },
                child: WidgetHomePage()),
            Divider(),
            InkWell(
                onTap: (){
                  Get.toNamed(ProductsPage.routeName);
                },
                child: WidgetHomePage()),
            Divider(),
            InkWell(
                onTap: (){
                  Get.toNamed(ProductsPage.routeName);
                },
                child: WidgetHomePage()),


          ],
        ),
    ]
      ),
    ));
  }
}
