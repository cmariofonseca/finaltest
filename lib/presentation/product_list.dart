import 'package:flutter/material.dart';
import 'package:finaltest/data/remote/products_api.dart';
import 'package:finaltest/presentation/widgets/product_widget.dart';
import 'package:finaltest/domain/entities/product_entity.dart';

class ProductList extends StatelessWidget {
  final productApi = new ProductListApi();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: productApi.getProductsList(),
        builder: (BuildContext context,
            AsyncSnapshot<List<ProductEntity>> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (countext, i) =>
                  ProductWidget(product: snapshot.data[i]),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
              ),
            );
          }
        },
      ),
    );
  }
}
