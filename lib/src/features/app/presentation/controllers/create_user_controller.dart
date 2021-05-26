import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:store_vtex/src/features/domain/entities/user_entity.dart';
import 'package:store_vtex/src/features/domain/usecases/open_account_use_case.dart';
import 'package:meta/meta.dart';
class CreateUserController extends GetxController {
  final OpenAccountUseCase _openAccountUseCase;
  UserEntity userEntity;
  TextEditingController documentCtrl = TextEditingController();
  TextEditingController typeDocumentCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController limitCreditCtrl = TextEditingController();
  TextEditingController descriptionCtrl = TextEditingController();
  TextEditingController toleranceCtrl = TextEditingController();
  CreateUserController({@required OpenAccountUseCase openAccountUseCase}) : assert(
  openAccountUseCase !=  null
  ), _openAccountUseCase = openAccountUseCase;



 Future<void> onSubmit() async {
    Map<String, dynamic> params = {
      "document": documentCtrl.value.text,
      "documentType": typeDocumentCtrl.value.text,
      "email": emailCtrl.value.text,
      "creditLimit": limitCreditCtrl.value.text,
      "description": descriptionCtrl.value.text,
      "tolerance": toleranceCtrl.value.text
    };
    final res = await  _openAccountUseCase.call(params);
    res.fold((l) {
      log("$l", name: "Error");
    }, (r) {
      userEntity = r;
    });
  }
}