import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:t89/core/theme/app_colors.dart';
import 'package:t89/core/theme/app_fonts.dart';
import 'package:t89/features/main/models/product_model.dart';
import 'package:t89/features/main/widgets/custom_text_field.dart';

class ShowDialogSellProduct extends StatefulWidget {
  const ShowDialogSellProduct({super.key, this.product});

  final ProductModel? product;

  @override
  State<ShowDialogSellProduct> createState() => _ShowDialogSellProductState();
}

class _ShowDialogSellProductState extends State<ShowDialogSellProduct> {
  final TextEditingController _controller = TextEditingController();
  int _selectedIndex = 1;

  @override
  void initState() {
    _controller.text = '1';
    super.initState();
  }

  void _onTapSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Row(
                      children: [
                        Flexible(
                          child: Image.asset(
                            'assets/images/cardPhone.png',
                            width: 54,
                            height: 54,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Gap(10),
                        Flexible(
                          child: Text(
                            'Logitech G Pro X Superlight Wireless Gaming Mouse',
                            overflow: TextOverflow.ellipsis,
                            style: AppFonts.w600f14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: GestureDetector(
                      onTap: () => _onTapSelected(0),
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: AppColors.darkGrey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: _selectedIndex == 0
                            ? Container(
                                decoration: BoxDecoration(
                                  color: AppColors.mainColor,
                                  borderRadius: BorderRadius.circular(
                                    8,
                                  ),
                                ),
                              )
                            : null,
                      ),
                    ),
                  ),
                ],
              ),
              Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/cardPhone.png',
                          width: 54,
                          height: 54,
                          fit: BoxFit.cover,
                        ),
                        Gap(10),
                        Flexible(
                          child: Text(
                            'Logitech G Pro X Superlight Wireless Gaming Mouse',
                            overflow: TextOverflow.ellipsis,
                            style: AppFonts.w600f14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: GestureDetector(
                      onTap: () => _onTapSelected(1),
                      child: Container(
                        width: 30,
                        height: 30,
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: AppColors.darkGrey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: _selectedIndex == 1
                            ? Container(
                                decoration: BoxDecoration(
                                  color: AppColors.mainColor,
                                  borderRadius: BorderRadius.circular(
                                    8,
                                  ),
                                ),
                              )
                            : null,
                      ),
                    ),
                  ),
                ],
              ),
              Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/cardPhone.png',
                          width: 54,
                          height: 54,
                          fit: BoxFit.cover,
                        ),
                        Gap(10),
                        Flexible(
                          child: Text(
                            'Logitech G Pro X Superlight Wireless Gaming Mouse',
                            overflow: TextOverflow.ellipsis,
                            style: AppFonts.w600f14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: GestureDetector(
                      onTap: () => _onTapSelected(2),
                      child: Container(
                        width: 30,
                        height: 30,
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: AppColors.darkGrey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: _selectedIndex == 2
                            ? Container(
                                decoration: BoxDecoration(
                                  color: AppColors.mainColor,
                                  borderRadius: BorderRadius.circular(
                                    8,
                                  ),
                                ),
                              )
                            : null,
                      ),
                    ),
                  ),
                ],
              ),
              Gap(20),
              CustomTextField(
                companyCtrl: _controller,
                hintText: 'Amount:',
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
                        Navigator.pop(context);
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
                              'Sell',
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
    );
  }
}
