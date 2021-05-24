import 'package:get_it/get_it.dart';
import 'package:store_vtex/src/features/data/datasource/category_remote_data_source.dart';
import 'package:store_vtex/src/features/data/datasource/product_remote_data_source.dart';
import 'package:store_vtex/src/features/data/datasource/shopping_cart_remote_data_source.dart';
import 'package:store_vtex/src/features/data/repositories/category_repository_impl.dart';
import 'package:store_vtex/src/features/data/repositories/product_repository_impl.dart';
import 'package:store_vtex/src/features/data/repositories/shopping_cart_repository_impl.dart';
import 'package:store_vtex/src/features/domain/repositories/category_repository.dart';
import 'package:store_vtex/src/features/domain/repositories/product_repository.dart';
import 'package:store_vtex/src/features/domain/repositories/shopping_cart_repository.dart';
import 'package:store_vtex/src/features/domain/usecases/add_shopping_cart_use_case.dart';
import 'package:store_vtex/src/features/domain/usecases/get_category_level_use_case.dart';
import 'package:store_vtex/src/features/domain/usecases/get_product_and_sku_ids_use_case.dart';
import 'package:store_vtex/src/features/domain/usecases/get_product_id_use_case.dart';
import 'package:store_vtex/src/features/domain/usecases/get_product_id_variations_use_case.dart';
final sl = GetIt.instance;

Future<void> init() async {
  //-> Use Cases
   sl.registerLazySingleton(() => GetProductsAndSkuIdsUseCase(sl()));

   sl.registerLazySingleton(() => GetProductIdUseCase(sl()));

   sl.registerLazySingleton(() => GetCategoryLevelUseCase(sl()));

   sl.registerLazySingleton(() => GetProductIdVariationsUseCase(sl()));

   sl.registerLazySingleton(() => AddShoppingCartUseCase(sl()));

   //-> Repository
   sl.registerLazySingleton<ProductRepository>(() => ProductRepositoryImpl(remoteDataSource: sl()));

   sl.registerLazySingleton<CategoryRepository>(() => CategoryRepositoryImpl(remoteDataSource: sl()));

   sl.registerLazySingleton<ShoppingCartRepository>(() => ShoppingCartRepositoryImpl(remoteDataSource: sl()));

   //-> Remote Data Source

  sl.registerLazySingleton<ProductRemoteDataSource>(() => ProductRemoteDataSourceImpl());

  sl.registerLazySingleton<CategoryRemoteDataSource>(() => CategoryRemoteDataSourceImpl());

  sl.registerLazySingleton<ShoppingCartRemoteDataSource>(() => ShoppingCartRemoteDataSourceImpl());
}