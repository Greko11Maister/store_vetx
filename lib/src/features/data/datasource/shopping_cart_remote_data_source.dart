import 'dart:developer';

import 'package:store_vtex/src/core/error/failures.dart';
import 'package:store_vtex/src/core/http/api_provider.dart';
import 'package:dio/dio.dart';
abstract class ShoppingCartRemoteDataSource {
 Future<bool> addSimulation(Map<String, dynamic> data);
}

class ShoppingCartRemoteDataSourceImpl extends ApiProvider implements ShoppingCartRemoteDataSource{
  @override
  Future<bool> addSimulation(Map<String, dynamic> data) async {
    try {
      print(data);
       await dio.post("/checkout/pub/orderforms/simulation",
      data: data
      );
      return true;
    } on DioError catch (error){
      print(error);
      throw ServerFailure(error: error).extract;
    }
  }

}