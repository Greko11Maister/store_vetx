import 'package:flutter/material.dart';
import 'package:store_vtex/src/features/app/presentation/controllers/create_user_controller.dart';

import '../../../../../../injection_container.dart';
import 'package:get/get.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({Key key}) : super(key: key);

  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  CreateUserController _controller;

  @override
  void initState() {
    _controller = CreateUserController(openAccountUseCase: sl());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<CreateUserController>(
          init: _controller,
          builder: (_) => Form(
                  child: Column(
                children: [
                  // Document
                  TextFormField(
                    controller: _.documentCtrl,
                    decoration: InputDecoration(labelText: "Documento"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Type Document
                  TextFormField(
                    controller: _.typeDocumentCtrl,
                    decoration: InputDecoration(labelText: "Tipo Documento"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Email
                  TextFormField(
                    controller: _.emailCtrl,
                    decoration: InputDecoration(labelText: "Email"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // CreditLimit
                  TextFormField(
                    controller: _.limitCreditCtrl,
                    decoration: InputDecoration(labelText: "Limite de credito"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Description
                  TextFormField(
                    controller: _.descriptionCtrl,
                    decoration: InputDecoration(labelText: "Descripcion"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Tolerance
                  TextFormField(
                    controller: _.toleranceCtrl,
                    decoration: InputDecoration(labelText: "Tolerancia"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(onPressed: _.onSubmit, child: Text("Enviar"))
                ],
              ))),
    );
  }
}
