import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:t89/core/theme/app_colors.dart';
import 'package:t89/core/theme/app_fonts.dart';
import 'package:t89/core/widgets/app_icon.dart';
import 'package:t89/features/main/blocs/add_product_bloc/add_product_bloc.dart';
import 'package:t89/features/main/models/product_model.dart';
import 'package:t89/features/main/widgets/custom_container_card.dart';
import 'package:t89/features/products/widgets/show_dialog_add_product.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.item,
  });

  final ProductModel item;

  @override
  Widget build(BuildContext context) {
    return CustomContainerCard(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Container(
                padding: EdgeInsets.all(10),
                width: 75,
                height: 75,
                decoration: BoxDecoration(color: AppColors.white),
                child: Image.memory(
                  item.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Gap(10),
          Flexible(
            flex: 3,
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        item.name,
                        overflow: TextOverflow.ellipsis,
                        style: AppFonts.w600f14,
                      ),
                    ),
                    Gap(5),
                    AppIcon(
                      AppIcons.arrow_up,
                      size: 10,
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Total profit:',
                      style: AppFonts.w500f14.copyWith(color: AppColors.grey),
                    ),
                    const Gap(10),
                    Text(
                      '\$ ${item.price}',
                      style: AppFonts.w500f14.copyWith(
                        color: AppColors.green,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'In stock:',
                      style: AppFonts.w500f14.copyWith(color: AppColors.grey),
                    ),
                    const Gap(10),
                    Text(item.stockPrice, style: AppFonts.w500f14)
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  _showSecondModal(context);
                },
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: AppColors.darkBlue,
                      borderRadius: BorderRadius.circular(10)),
                  child: AppIcon(AppIcons.edit),
                ),
              ),
              Gap(10),
              GestureDetector(
                onTap: () {
                  context.read<AddProductBloc>().add(
                        AddProductEvent.deleteProduct(
                          id: item.id.toString(),
                        ),
                      );
                },
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Color(0xFfFB7C7C),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: AppIcon(AppIcons.trash),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  void _showSecondModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ShowDialogAddProduct(product: item,);
      },
    );
  }
}
