import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:store_vtex/src/features/app/presentation/controllers/account_controller.dart';

import 'create_account_page.dart';
import 'package:intl/intl.dart';

class ProfilePage extends StatelessWidget {
  static const routeName = '/profile/page';
  AccountController _controller;

  ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _controller = Get.find();
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<AccountController>(builder: (_)=> Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 80, left: 20.0, bottom: 15.0),
            child: Row(
              children: [
                Container(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.account_circle_outlined,
                      size: 120,
                      color: Colors.black,
                    ),
                  ),
                  constraints: BoxConstraints(
                    minHeight: 120,
                    maxHeight: 120,
                    minWidth: 120,
                    maxWidth: 120,
                  ),
                  color: Colors.white,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                'Nombre: ${_.user.email}',
                                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Documento: ${_.user.document}',
                            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Id:  ${_.user.id}',
                            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.only(left: 18, top: 8.0),
            child: Text(
              'Descripcion: ${_.user.description}',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 18, top: 8.0),
            child: Text(
              'Telefono:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 18, top: 8.0),
            child: Text(
              'Fecha de ingreso: ${_.user.createdAt}',
             // 'Fecha de ingreso: ${DateFormat("Y/MMM/dd").format(_.user.createdAt)}',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Get.to(CreateAccountPage());
        },
      ),
    );
  }
}
