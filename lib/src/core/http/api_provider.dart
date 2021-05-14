import 'package:dio/dio.dart';
import 'package:store_vtex/src/core/env/env.dart';

import '../../../injection_container.dart';
import 'app_iterceptors.dart';

class ApiProvider  {
  final String _baseApiURL = sl<Env>().api;


  String get urlApi => _baseApiURL;
  Dio dio;

  ApiProvider() {
    dio = Dio(BaseOptions(baseUrl: _baseApiURL));
    dio.interceptors.add(AppInterceptors());
  }

}