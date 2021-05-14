import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:store_vtex/src/core/env/env.dart';

import '../../../injection_container.dart';

class AppInterceptors extends Interceptor {
  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {

      //remove the auxiliary header

    options.headers.addAll({"X-VTEX-API-AppKey": Env.xVtexApiAppKey, "X-VTEX-API-AppToken": Env.xVtexApiAppToken});

    return super.onRequest(options, handler);
  }

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    String errorDescription = "";
    switch (err.type) {
      case DioErrorType.cancel:
        errorDescription = "Request to API server was cancelled";
        break;
      case DioErrorType.connectTimeout:
        errorDescription = "Connection timeout with API server";
        break;
      case DioErrorType.other:
        errorDescription = "Connection to API server failed due to internet connection";
        break;
      case DioErrorType.receiveTimeout:
        errorDescription = "Receive timeout in connection with API server";
        break;
      case DioErrorType.response:
        errorDescription = "Received invalid status code: ${err.response.statusCode} ";

        break;
      case DioErrorType.sendTimeout:
        errorDescription = "Send timeout in connection with API server";
        break;
    }
    print("errorDescription:\t" + errorDescription);
    err.error = errorDescription;
    return super.onError(err, handler);
  }
}
