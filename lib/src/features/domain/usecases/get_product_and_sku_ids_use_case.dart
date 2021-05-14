import 'package:dartz/dartz.dart';
import 'package:store_vtex/src/core/error/failures.dart';
import 'package:store_vtex/src/core/usecases/usecase.dart';
import 'package:store_vtex/src/features/domain/entities/products_and_sku_entity.dart';
import 'package:store_vtex/src/features/domain/repositories/product_repository.dart';

class  GetProductsAndSkuIdsUseCase implements UseCase<ProductsAndSkuEntity, NoParams> {
  final ProductRepository repository;

  GetProductsAndSkuIdsUseCase(this.repository);

  @override
  Future<Either<Failure, ProductsAndSkuEntity>> call(NoParams params) async {
    return await repository.productAndSkuIds();
  }

}