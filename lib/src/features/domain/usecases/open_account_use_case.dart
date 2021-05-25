import 'package:dartz/dartz.dart';
import 'package:store_vtex/src/core/error/failures.dart';
import 'package:store_vtex/src/core/usecases/usecase.dart';
import 'package:store_vtex/src/features/domain/entities/user_entity.dart';
import 'package:store_vtex/src/features/domain/repositories/user_repository.dart';

class OpenAccountUseCase implements UseCase<UserEntity, Map<String, dynamic>> {
  final UserRepository repository;

  OpenAccountUseCase(this.repository);

  @override
  Future<Either<Failure, UserEntity>> call(Map<String, dynamic> params) async {
    return await repository.openAccount(params);
  }
}
