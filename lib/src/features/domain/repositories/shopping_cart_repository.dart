import 'package:store_vtex/src/core/error/failures.dart';
import 'package:dartz/dartz.dart';
abstract  class ShoppingCartRepository {

 Future<Either<Failure, bool>> addSimulation(Map<String, dynamic> data);
 
}