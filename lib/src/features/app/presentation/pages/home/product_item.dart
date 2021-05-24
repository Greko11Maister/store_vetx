

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_vtex/src/features/domain/entities/product_entity.dart';

class ProductItem extends StatelessWidget {
  final ProductEntity p;
  final VoidCallback onTap;
  const ProductItem({Key key, this.p, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) => ListTile(
     onTap: onTap,
      leading: Container(
        color: Colors.grey,
        height: 60,
        width: 60,
      ),
      title: Text( p.name) ,
      subtitle: Text(p.description),
      trailing:  Icon(Icons.arrow_forward_ios_outlined),
    );


}
