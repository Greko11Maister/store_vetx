import 'package:equatable/equatable.dart';
import 'package:store_vtex/src/features/domain/entities/range_entiity.dart';

class ProductsAndSkuEntity extends Equatable {
  final Map<String, List<dynamic>> data;
  final RangeEntity range;

  ProductsAndSkuEntity({this.data, this.range});

  @override
  List<Object> get props => [this.data, this.range];
}
