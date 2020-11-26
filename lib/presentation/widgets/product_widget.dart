import 'package:flutter/material.dart';
import 'package:finaltest/domain/entities/product_entity.dart';

class ProductWidget extends StatelessWidget {
  final ProductEntity product;

  ProductWidget({@required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Image(
              image: NetworkImage(product.image),
            ),
            title: Text('${product.description}'),
            subtitle: Text('${product.price}'),
          ),
        ],
      ),
    );
  }
}
