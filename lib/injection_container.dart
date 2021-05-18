import 'package:get_it/get_it.dart';
import 'package:store_vtex/src/features/data/datasource/product_remote_data_source.dart';
import 'package:store_vtex/src/features/data/repositories/product_repository_impl.dart';
import 'package:store_vtex/src/features/domain/repositories/product_repository.dart';
import 'package:store_vtex/src/features/domain/usecases/get_product_and_sku_ids_use_case.dart';
final sl = GetIt.instance;

Future<void> init() async {
  //-> Use Cases
   sl.registerLazySingleton(() => GetProductsAndSkuIdsUseCase(sl()));

   //-> Repository
   sl.registerLazySingleton<ProductRepository>(() => ProductRepositoryImpl(remoteDataSource: sl()));

   //-> Remote Data Source

  sl.registerLazySingleton<ProductRemoteDataSource>(() => ProductRemoteDataSourceImpl());
}