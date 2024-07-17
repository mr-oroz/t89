import 'dart:typed_data';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:t89/core/theme/app_colors.dart';
import 'package:t89/core/theme/app_fonts.dart';
import 'package:t89/core/utils/pick_image.dart';
import 'package:t89/core/widgets/app_icon.dart';
import 'package:t89/features/main/blocs/add_product_bloc/add_product_bloc.dart';
import 'package:t89/features/main/models/product_model.dart';
import 'package:t89/features/main/widgets/custom_text_field.dart';

class ShowDialogAddProduct extends StatefulWidget {
  const ShowDialogAddProduct({super.key, this.product});

  final ProductModel? product;

  @override
  State<ShowDialogAddProduct> createState() => _ShowDialogAddProductState();
}

class _ShowDialogAddProductState extends State<ShowDialogAddProduct> {
  final _formKeyProduct = GlobalKey<FormState>();
  final TextEditingController _productCtrl = TextEditingController();
  final TextEditingController _priceCtrl = TextEditingController();
  final TextEditingController _priceStockCtrl = TextEditingController();

  Uint8List? image;
  Future<void> selectedImage() async {
    image = await pickImage(context);
    setState(() {});
  }

  @override
  void initState() {
    _productCtrl.text = widget.product?.name ?? '';
    _priceCtrl.text = widget.product?.price ?? '';
    _priceStockCtrl.text = widget.product?.stockPrice ?? '';
    setState(() {
      image = widget.product?.image;
    });
    super.initState();
  }

  @override
  void dispose() {
    _priceCtrl.dispose();
    _priceStockCtrl.dispose();
    _productCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.white,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: MediaQuery.of(context).size.width * 0.9,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
            key: _formKeyProduct,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomTextField(
                  companyCtrl: _productCtrl,
                  hintText: 'Product name',
                ),
                Gap(10),
                CustomTextField(
                  color: AppColors.green,
                  type: TextInputType.number,
                  companyCtrl: _priceCtrl,
                  hintText: 'Product Price',
                ),
                Gap(10),
                CustomTextField(
                  type: TextInputType.number,
                  companyCtrl: _priceStockCtrl,
                  hintText: 'Product in stock:',
                ),
                Gap(10),
                GestureDetector(
                  onTap: selectedImage,
                  child: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(16),
                    dashPattern: const [10, 5],
                    color: AppColors.lightGrey,
                    strokeWidth: 2,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: AppColors.lightGrey,
                          borderRadius: BorderRadius.circular(16)),
                      child: image != null
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: SizedBox(
                                child: Image.memory(
                                  image!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          : Column(
                              children: [
                                AppIcon(AppIcons.camera),
                                Text(
                                  '+ Add Logo',
                                  style: AppFonts.w600f18.copyWith(
                                    color: AppColors.darkGrey,
                                  ),
                                )
                              ],
                            ),
                    ),
                  ),
                ),
                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 44,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            border: Border.all(color: AppColors.darkBlue),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                topLeft: Radius.circular(30),
                                bottomRight: Radius.circular(4),
                                topRight: Radius.circular(4)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Cancel',
                                style: AppFonts.w500f15.copyWith(
                                  color: AppColors.darkGrey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Gap(1),
                    Flexible(
                      child: GestureDetector(
                        onTap: () {
                          if (_formKeyProduct.currentState!.validate()) {
                            if (_priceCtrl.text.isNotEmpty &&
                                _productCtrl.text.isNotEmpty &&
                                image != null &&
                                _priceStockCtrl.text.isNotEmpty) {
                              if (widget.product != null) {
                                context.read<AddProductBloc>().add(
                                      AddProductEvent.editProduct(
                                        id: widget.product!.id.toString(),
                                        image: image,
                                        price: _priceCtrl.text,
                                        stockPrice: _priceStockCtrl.text,
                                        name: _productCtrl.text,
                                      ),
                                    );
                                Navigator.pop(context);
                              } else {
                                context.read<AddProductBloc>().add(
                                      AddProductEvent.addProduct(
                                        ProductModel(
                                          image: image!,
                                          price: _priceCtrl.text,
                                          stockPrice: _priceStockCtrl.text,
                                          name: _productCtrl.text,
                                        ),
                                      ),
                                    );
                                Navigator.pop(context);
                              }
                            }
                          }
                        },
                        child: Container(
                          height: 44,
                          decoration: const BoxDecoration(
                            color: AppColors.darkBlue,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(4),
                                topLeft: Radius.circular(4),
                                bottomRight: Radius.circular(30),
                                topRight: Radius.circular(30)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Save',
                                style: AppFonts.w500f15.copyWith(
                                  color: AppColors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
