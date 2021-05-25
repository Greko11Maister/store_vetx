import 'package:dartz/dartz.dart';
import 'package:store_vtex/src/core/error/failures.dart';
import 'package:store_vtex/src/core/usecases/usecase.dart';
import 'package:store_vtex/src/features/domain/entities/user_entity.dart';
import 'package:store_vtex/src/features/domain/repositories/user_repository.dart';

class GetUserAccountIdUseCase implements UseCase<UserEntity, String> {
  final  UserRepository repository;

  GetUserAccountIdUseCase(this.repository);

  @override
  Future<Either<Failure, UserEntity>> call(String params) async {
    return await repository.accountId(params);
  }
}