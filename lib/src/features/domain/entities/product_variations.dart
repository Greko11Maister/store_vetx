import 'package:equatable/equatable.dart';
import 'package:store_vtex/src/features/domain/entities/sku_entity.dart';

class ProductVariationsEntity extends Equatable {
  final int productId;
  final String name;
  final List<SkuEntity> skus;

  ProductVariationsEntity({this.productId, this.name, this.skus});

  @override
  List<Object> get props => [productId, name, skus];
}
