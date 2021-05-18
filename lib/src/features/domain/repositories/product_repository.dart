import 'package:store_vtex/src/core/error/failures.dart';
import 'package:store_vtex/src/features/domain/entities/product_entity.dart';
import 'package:store_vtex/src/features/domain/entities/products_and_sku_entity.dart';
import 'package:dartz/dartz.dart';

abstract class ProductRepository {
  Future<Either<Failure, ProductsAndSkuEntity>> productAndSkuIds();

  Future<Either<Failure, ProductEntity>> productId(int id);
}
