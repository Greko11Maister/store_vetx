import 'package:dartz/dartz.dart';
import 'package:store_vtex/src/core/error/failures.dart';
import 'package:store_vtex/src/core/usecases/usecase.dart';
import 'package:store_vtex/src/features/domain/entities/product_entity.dart';
import 'package:store_vtex/src/features/domain/repositories/product_repository.dart';

class GetProductIdUseCase implements UseCase<ProductEntity, int> {
  final ProductRepository repository;

  GetProductIdUseCase(this.repository);
  @override
  Future<Either<Failure, ProductEntity>> call(int params) async {
   return await repository.productId(params);
  }

}