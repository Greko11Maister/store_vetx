import 'package:dartz/dartz.dart';
import 'package:store_vtex/src/core/error/failures.dart';
import 'package:store_vtex/src/features/data/datasource/user_remote_data_source.dart';
import 'package:store_vtex/src/features/domain/entities/user_entity.dart';
import 'package:store_vtex/src/features/domain/repositories/user_repository.dart';
import 'package:meta/meta.dart';
class UserRepositoryImpl implements UserRepository {

  final UserRemoteDataSource remoteDataSource;

  UserRepositoryImpl({@required this.remoteDataSource});
  @override
  Future<Either<Failure, UserEntity>> accountId(String data) async {
    try {
      final res = await remoteDataSource.accountId(data);
      return  Right(res);
    }catch (error){
      return Left(error);
    }
  }

  @override
  Future<Either<Failure, UserEntity>> openAccount(Map<String, dynamic> data) async {
    try {
      final res = await remoteDataSource.openAccount(data);
      return  Right(res);
    }catch (error){
      print(error);
      return Left(error);
    }
  }

}