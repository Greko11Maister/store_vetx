import 'package:dartz/dartz.dart';
import 'package:store_vtex/src/core/error/failures.dart';
import 'package:store_vtex/src/features/data/datasource/shopping_cart_remote_data_source.dart';
import 'package:store_vtex/src/features/domain/repositories/shopping_cart_repository.dart';
import 'package:meta/meta.dart';

class ShoppingCartRepositoryImpl implements ShoppingCartRepository {
  final ShoppingCartRemoteDataSource remoteDataSource;

  ShoppingCartRepositoryImpl({@required this.remoteDataSource});

  @override
  Future<Either<Failure, bool>> addSimulation(Map<String, dynamic> data) async {
   try{
     final res = await remoteDataSource.addSimulation(data);
     return Right(true);
   }catch (error){
     return Left(error);
   }
  }
}
