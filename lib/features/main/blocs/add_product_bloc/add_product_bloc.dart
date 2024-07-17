import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:t89/features/main/models/product_model.dart';
import 'package:uuid/uuid.dart';

part 'add_product_event.dart';
part 'add_product_state.dart';
part 'add_product_bloc.freezed.dart';

@injectable
class AddProductBloc extends Bloc<AddProductEvent, AddProductState> {
  AddProductBloc() : super(_SelectedProducts()) {
    on<_AddProduct>((event, emit) {
      final updateProduct = event.product.copyWith(id: Uuid().v1());
      emit(
        state.copyWith(
          products: [updateProduct, ...state.products],
        ),
      );
    });
    on<_EditProduct>((event, emit) {
      print(event.id);
      var updatedProducts = state.products.map((product) {
        if (product.id == event.id) {
          return product.copyWith(
              name: event.name ?? product.name,
              price: event.price ?? product.price,
              stockPrice: event.stockPrice ?? product.stockPrice,
              image: event.image ?? product.image);
        }
        return product;
      }).toList();
      emit(
        state.copyWith(
          products: updatedProducts,
        ),
      );
    });
    on<_DeleteProduct>((event, emit) {
      var updatedProducts =
          state.products.where((product) => product.id != event.id).toList();
      emit(state.copyWith(products: updatedProducts));
    });
    on<_RemoveProducts>((event, emit) {
      emit(state.copyWith(products: []));
    });
  }
}
