import 'package:store_vtex/src/features/domain/entities/sku_entity.dart';

class SkuModel extends SkuEntity {
  SkuModel({int sku, String skuname, String image}) : super(sku: sku, skuname: skuname, image: image);

  factory SkuModel.fromJson(Map<String, dynamic> json) {
    return SkuModel(sku: json["sku"], skuname: json["skuname"], image: json["image"]);
  }
}
