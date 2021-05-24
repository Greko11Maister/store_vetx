import 'package:dartz/dartz.dart';
import 'package:store_vtex/src/core/error/failures.dart';
import 'package:store_vtex/src/core/usecases/usecase.dart';
import 'package:store_vtex/src/features/domain/entities/product_entity.dart';
import 'package:store_vtex/src/features/domain/entities/product_variations.dart';
import 'package:store_vtex/src/features/domain/repositories/product_repository.dart';

class GetProductIdVariationsUseCase implements UseCase<ProductVariationsEntity, int> {
  final ProductRepository repository;

  GetProductIdVariationsUseCase(this.repository);
  @override
  Future<Either<Failure, ProductVariationsEntity>> call(int params) async {
   return await repository.productIdVariations(params);
  }

}