// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:typed_data';

class ProductModel {
  final String? id;
  final String name;
  final Uint8List image;
  final String price;
  final String stockPrice;

  ProductModel({this.id, required this.name, required this.image, required this.price, required this.stockPrice});

  ProductModel copyWith({
    String? id,
    String? name,
    Uint8List? image,
    String? price,
    String? stockPrice,
  }) {
    return ProductModel(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      price: price ?? this.price,
      stockPrice: stockPrice ?? this.stockPrice,
    );
  }

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, image: $image, price: $price, stockPrice: $stockPrice)';
  }
}
