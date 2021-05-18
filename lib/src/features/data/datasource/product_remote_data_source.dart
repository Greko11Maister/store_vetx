import 'package:store_vtex/src/core/error/failures.dart';
import 'package:store_vtex/src/core/http/api_provider.dart';
import 'package:store_vtex/src/features/data/models/product_and_sku_model.dart';

abstract class ProductRemoteDataSource {
 Future<ProductsAndSkuModel> productAndSkuIds();
}

class ProductRemoteDataSourceImpl extends ApiProvider implements ProductRemoteDataSource {
  @override
  Future<ProductsAndSkuModel> productAndSkuIds() async {
   try {
    final res = await dio.get("/catalog_system/pvt/products/GetProductAndSkuIds");
    return ProductsAndSkuModel.fromJson(res.data);
   }catch (error){
    throw ServerFailure(error: error).extract;
   }
  }
}