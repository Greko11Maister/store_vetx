import 'package:dartz/dartz.dart';
import 'package:store_vtex/src/core/error/failures.dart';
import 'package:store_vtex/src/features/data/datasource/category_remote_data_source.dart';
import 'package:store_vtex/src/features/domain/entities/category_entity.dart';
import 'package:store_vtex/src/features/domain/repositories/category_repository.dart';
import 'package:meta/meta.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryRemoteDataSource remoteDataSource;

  CategoryRepositoryImpl({@required this.remoteDataSource});

  @override
  Future<Either<Failure, List<CategoryEntity>>> level(String level) async {
    try {
      final res = await remoteDataSource.level(level);
      return Right(res);
    } catch (error) {
      return Left(error);
    }
  }
}
