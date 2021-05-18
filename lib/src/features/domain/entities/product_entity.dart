import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  /*
  {
  "Id": 2,
  "Name": "SAMSUNG A11",
  "DepartmentId": 1,
  "CategoryId": 1,
  "BrandId": 2000000,
  "LinkId": "samsung-a11",
  "RefId": "",
  "IsVisible": true,
  "Description": "El Samsung A11 tiene una cámara ultra ancha para capturar las mejores fotos ¡Compra ahora!",
  "DescriptionShort": "El Samsung A11 tiene una cámara ultra ancha para capturar las mejores fotos ¡Compra ahora!",
  "ReleaseDate": "2021-05-13T00:00:00",
  "KeyWords": "A11",
  "Title": "Samsung A11",
  "IsActive": true,
  "TaxCode": "",
  "MetaTagDescription": "El Samsung A11 tiene una cámara ultra ancha para capturar las mejores fotos ¡Compra ahora!",
  "SupplierId": null,
  "ShowWithoutStock": true,
  "AdWordsRemarketingCode": null,
  "LomadeeCampaignCode": null,
  "Score": null
}
   */
  final int id;
  final String name;
  final int departamentId;
  final int categoryId;
  final int brandId;
  final String linkId;
  final String refId;
  final bool isVisible;
  final String description;
  final String descriptionShort;
  final DateTime releaseDate;
  final String keyWords;
  final String title;
  final bool isActive;
  final String taxCode;
  final String metaTagDescription;
  final dynamic supplerId;
  final bool showWithoutStock;
  final dynamic adWordsRemarketingCode;
  final dynamic lomadeeCampaignCode;
  final dynamic score;

  ProductEntity(
      {this.id,
      this.name,
      this.departamentId,
      this.categoryId,
      this.brandId,
      this.linkId,
      this.refId,
      this.isVisible,
      this.description,
      this.descriptionShort,
      this.releaseDate,
      this.keyWords,
      this.title,
      this.isActive,
      this.taxCode,
      this.metaTagDescription,
      this.supplerId,
      this.showWithoutStock,
      this.adWordsRemarketingCode,
      this.lomadeeCampaignCode,
      this.score});

  @override
  List<Object> get props => [
        this.id,
        this.name,
        this.departamentId,
        this.categoryId,
        this.brandId,
        this.linkId,
        this.refId,
        this.isVisible,
        this.description,
        this.descriptionShort,
        this.releaseDate,
        this.keyWords,
        this.title,
        this.isActive,
        this.taxCode,
        this.metaTagDescription,
        this.supplerId,
        this.showWithoutStock,
        this.adWordsRemarketingCode,
        this.lomadeeCampaignCode,
        this.score
      ];
}
