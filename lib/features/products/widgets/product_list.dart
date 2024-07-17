import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t89/features/main/blocs/add_product_bloc/add_product_bloc.dart';
import 'package:t89/features/products/widgets/product_item.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddProductBloc, AddProductState>(
      builder: (context, state) {
        final item = state.products;
        return Column(
          children: List.generate(item.length, (index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: ProductItem(
                item: item[index],
              ),
            );
          }),
        );
      },
    );
  }
}
