import 'package:store_vtex/src/core/error/failures.dart';
import 'package:store_vtex/src/core/http/api_provider.dart';
import 'package:store_vtex/src/features/data/models/category_model.dart';
import 'package:dio/dio.dart';

abstract class CategoryRemoteDataSource {
  Future<List<CategoryModel>> level(String level);
}

class CategoryRemoteDataSourceImpl extends ApiProvider implements CategoryRemoteDataSource {
  @override
  Future<List<CategoryModel>> level(String level) async {
    try {
      final res = await dio.get("");
      return (res.data as List).map((json) => CategoryModel.fromJson(json)).toList();
    } on DioError catch (error) {
      throw ServerFailure(error: error).extract;
    }
  }
}
