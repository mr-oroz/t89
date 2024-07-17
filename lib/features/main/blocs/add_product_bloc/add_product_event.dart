part of 'add_product_bloc.dart';

@freezed
class AddProductEvent with _$AddProductEvent {
  const factory AddProductEvent.editProduct({
    required String id,
    String? name,
    String? price,
    String? stockPrice,
    Uint8List? image,
  }) = _EditProduct;
  const factory AddProductEvent.addProduct(ProductModel product) = _AddProduct;
  const factory AddProductEvent.deleteProduct({required String id}) = _DeleteProduct;
  const factory AddProductEvent.removeProducts() = _RemoveProducts;
}
