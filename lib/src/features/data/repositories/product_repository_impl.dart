import 'package:dartz/dartz.dart';
import 'package:store_vtex/src/core/error/failures.dart';
import 'package:store_vtex/src/features/data/datasource/product_remote_data_source.dart';
import 'package:store_vtex/src/features/domain/entities/product_entity.dart';
import 'package:store_vtex/src/features/domain/entities/products_and_sku_entity.dart';
import 'package:store_vtex/src/features/domain/repositories/product_repository.dart';
import 'package:meta/meta.dart';
class ProductRepositoryImpl implements ProductRepository {
final ProductRemoteDataSource remoteDataSource;

  ProductRepositoryImpl({@required this.remoteDataSource});
  @override
  Future<Either<Failure, ProductsAndSkuEntity>> productAndSkuIds() async {
    try {
      final res = await remoteDataSource.productAndSkuIds();
      return Right(res);
    }catch (error){
      return Left(error);
    }
  }

  @override
  Future<Either<Failure, ProductEntity>> productId(int id) async {
    try {
      final res = await remoteDataSource.productId(id);
      return Right(res);
    }catch (error){
      return Left(error);
    }
  }

}