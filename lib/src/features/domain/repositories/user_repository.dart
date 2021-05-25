import 'package:store_vtex/src/core/error/failures.dart';
import 'package:store_vtex/src/features/domain/entities/user_entity.dart';
import 'package:dartz/dartz.dart';

abstract class UserRepository {
  Future<Either<Failure, UserEntity>> openAccount(Map<String, dynamic> data);

  Future<Either<Failure, UserEntity>> accountId(String data);
}
