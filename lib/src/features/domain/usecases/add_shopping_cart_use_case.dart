import 'package:dartz/dartz.dart';
import 'package:store_vtex/src/core/error/failures.dart';
import 'package:store_vtex/src/core/usecases/usecase.dart';
import 'package:store_vtex/src/features/domain/repositories/shopping_cart_repository.dart';

class AddShoppingCartUseCase implements UseCase<bool, Map<String, dynamic>> {
  final ShoppingCartRepository repository;

  AddShoppingCartUseCase(this.repository);

  @override
  Future<Either<Failure, bool>> call(Map<String, dynamic> params) async {
    return await repository.addSimulation(params);
  }

}