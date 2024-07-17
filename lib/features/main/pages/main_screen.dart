import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:t89/core/theme/app_colors.dart';
import 'package:t89/core/theme/app_fonts.dart';
import 'package:t89/core/widgets/app_icon.dart';
import 'package:t89/core/widgets/gl_app_bar.dart';
import 'package:t89/features/main/blocs/add_company_bloc/add_company_bloc.dart';
import 'package:t89/features/main/widgets/first_modal.dart';
import 'package:t89/features/main/widgets/product_card.dart';
import 'package:t89/features/main/widgets/product_total_card.dart';
import 'package:t89/features/products/widgets/show_dialog_add_product.dart';
import 'package:t89/features/products/widgets/show_dialog_sell_product.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
    final state = context.read<AddCompanyBloc>().state;
   if (state?.companyName?.isEmpty ?? true) { 
    WidgetsBinding.instance.addPostFrameCallback((_) => _showModalAddCompany(context));
  }
  }

  void _showModalAddCompany(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (
        context,
      ) {
        return FirstModal();
      },
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

  void _showSellModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ShowDialogSellProduct();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlAppBar(
          leading: const Center(
            child: AppIcon(
              AppIcons.home,
              color: AppColors.mainColor,
            ),
          ),
          title: 'MAIN'),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductCard(),
            Gap(10),
            ProductTotalCard(),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: GestureDetector(
                onTap: () {
                  _showSecondModal(context);
                },
                child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                    color: AppColors.darkBlue,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        topLeft: Radius.circular(30),
                        bottomRight: Radius.circular(4),
                        topRight: Radius.circular(4)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const AppIcon(AppIcons.box),
                      const Gap(5),
                      Text(
                        'Add a Product',
                        style: AppFonts.w500f15.copyWith(
                          color: AppColors.white,
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
                  _showSellModal(context);
                },
                child: Container(
                  height: 50,
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
                      const AppIcon(AppIcons.shopping),
                      const Gap(5),
                      Text(
                        'Add a Sale',
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
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
