
import 'package:equatable/equatable.dart';
class  SkuEntity extends Equatable {
  final int sku;
  final String skuname;
  final String image;

  SkuEntity({this.sku, this.skuname, this.image});
  @override
  List<Object> get props => [sku, skuname, image];

}