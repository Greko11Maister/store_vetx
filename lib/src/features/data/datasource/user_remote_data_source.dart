import 'dart:developer';


import 'package:store_vtex/src/core/error/failures.dart';
import 'package:store_vtex/src/core/http/api_provider.dart';
import 'package:store_vtex/src/features/data/models/user_model.dart';
import 'package:dio/dio.dart';

abstract class UserRemoteDataSource {
  Future<UserModel> openAccount(Map<String, dynamic> data);

  Future<UserModel> accountId(String data);
}

class UserRemoteDataSourceImpl extends ApiProvider implements UserRemoteDataSource {
  @override
  Future<UserModel> accountId(String data) async {
    try {
      log("$data");
      final res = await dio.get("/creditcontrol/accounts/$data");
      return UserModel.fromJson(res.data);
    } on DioError catch (error) {
      throw ServerFailure(error: error).extract;
    }
  }

  @override
  Future<UserModel> openAccount(Map<String, dynamic> data) async {
    try {
      final res = await dio.post("/creditcontrol/accounts", data: data);
      log(res.data);
      return UserModel.fromJson(res.data);
    } on DioError catch (error) {
      print(error);
      throw ServerFailure(error: error).extract;
    }
  }
}
