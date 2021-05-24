import 'package:dartz/dartz.dart';
import 'package:store_vtex/src/core/error/failures.dart';
import 'package:store_vtex/src/core/usecases/usecase.dart';
import 'package:store_vtex/src/features/domain/entities/category_entity.dart';
import 'package:store_vtex/src/features/domain/repositories/category_repository.dart';

class GetCategoryLevelUseCase implements UseCase<List<CategoryEntity>, String>{
  final  CategoryRepository repository;


  GetCategoryLevelUseCase(this.repository);

  @override
  Future<Either<Failure, List<CategoryEntity>>> call(String params) async {
   return await repository.level(params);
  }

}

