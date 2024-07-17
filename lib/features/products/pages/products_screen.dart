import 'package:flutter/material.dart';
import 'package:t89/core/theme/app_colors.dart';
import 'package:t89/core/widgets/app_button.dart';
import 'package:t89/core/widgets/app_icon.dart';
import 'package:t89/core/widgets/gl_app_bar.dart';
import 'package:t89/features/products/widgets/product_list.dart';
import 'package:t89/features/products/widgets/show_dialog_add_product.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlAppBar(
        opacity: 0.75,
        leading: const Center(
          child: AppIcon(
            AppIcons.bag,
            color: AppColors.mainColor,
          ),
        ),
        title: 'PRODUCTS',
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          children: const [
            ProductList(),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: AppButton(
          onPressed: () {
            _showSecondModal(context);
          },
          title: '+ Add a Product',
          height: 50,
          icon: AppIcons.box,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void _showSecondModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ShowDialogAddProduct();
      },
    );
  }
  
}
