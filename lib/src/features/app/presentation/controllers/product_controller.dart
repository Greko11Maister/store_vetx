
import 'package:get/get.dart';
import 'package:store_vtex/src/features/domain/entities/product_variations.dart';
import 'package:store_vtex/src/features/domain/usecases/get_product_id_variations_use_case.dart';
import 'package:meta/meta.dart';
class ProductController extends GetxController {
  final GetProductIdVariationsUseCase _getProductIdVariationsUseCase;
  ProductVariationsEntity productVariations;
  ProductController({@required GetProductIdVariationsUseCase getProductIdVariationsUseCase}): assert(
  getProductIdVariationsUseCase != null
  ), _getProductIdVariationsUseCase = getProductIdVariationsUseCase;


  Future<void> loadVariations(int productId) async {
    final res = await  _getProductIdVariationsUseCase.call(productId);

    res.fold((l) => null, (r) {
      productVariations =  r;
      update();
    });
  }
}