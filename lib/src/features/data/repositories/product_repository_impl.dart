import 'package:dartz/dartz.dart';
import 'package:store_vtex/src/core/error/failures.dart';
import 'package:store_vtex/src/features/domain/entities/products_and_sku_entity.dart';
import 'package:store_vtex/src/features/domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {

  @override
  Future<Either<Failure, ProductsAndSkuEntity>> productAndSkuIds() {
    // TODO: implement productAndSkuIds
    throw UnimplementedError();
  }

}