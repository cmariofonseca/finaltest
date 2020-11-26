import 'dart:convert';

ProductEntity productEntityFromJson(String str) =>
    ProductEntity.fromJson(json.decode(str));

String productEntityToJson(ProductEntity data) => json.encode(data.toJson());

class ProductEntity {
  ProductEntity({
    this.barcode,
    this.brand,
    this.description,
    this.price,
    this.name,
    this.sku,
    this.image,
  });

  int barcode;
  String brand;
  String description;
  int price;
  String name;
  int sku;
  String image;

  factory ProductEntity.fromJson(Map<String, dynamic> json) => ProductEntity(
        barcode: json["barcode"],
        brand: json["brand"],
        description: json["description"],
        price: json["price"],
        name: json["name"],
        sku: json["sku"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "barcode": barcode,
        "brand": brand,
        "description": description,
        "price": price,
        "name": name,
        "sku": sku,
        "image": image,
      };
}
