part of 'add_product_bloc.dart';

@freezed
class AddProductState with _$AddProductState {
  const factory AddProductState.selectedProducts({
    @Default(<ProductModel>[]) List<ProductModel> products,
  }) = _SelectedProducts;
}
