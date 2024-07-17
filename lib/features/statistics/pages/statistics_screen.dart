import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:t89/core/theme/app_colors.dart';
import 'package:t89/core/theme/app_fonts.dart';
import 'package:t89/core/widgets/app_icon.dart';
import 'package:t89/core/widgets/gl_app_bar.dart';
import 'package:t89/features/main/widgets/custom_container_card.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({super.key});

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlAppBar(
        opacity: 0.75,
        leading: Center(
          child: AppIcon(
            AppIcons.chart,
            color: AppColors.mainColor,
          ),
        ),
        title: 'Statistics',
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Text(
                        'Total profit:',
                        style: AppFonts.w500f18.copyWith(color: AppColors.grey),
                      ),
                      const Gap(10),
                      Text(
                        '\$ 3324.25',
                        style:
                            AppFonts.w500f18.copyWith(color: AppColors.green),
                      )
                    ],
                  ),
                ),
                const Gap(10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: CustomContainerCard(
                    child: Image.asset(
                      'assets/images/carts.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            //Gap(10),
            Positioned.fill(child: AllProductsPanel()),
          ],
        ),
      ),
    );
  }
}

class AllProductsPanel extends StatefulWidget {
  const AllProductsPanel({
    super.key,
  });

  @override
  State<AllProductsPanel> createState() => _AllProductsPanelState();
}

class _AllProductsPanelState extends State<AllProductsPanel> {
  late final DraggableScrollableController controller;

  double initialSize = 0.4;

  @override
  void initState() {
    super.initState();
    controller = DraggableScrollableController();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return DraggableScrollableSheet(
        controller: controller,
        minChildSize: 0.35,
        maxChildSize: 0.7,
        initialChildSize: initialSize,
        builder: (context, scrollController) {
          return DecoratedBox(
            decoration: const BoxDecoration(
              color: AppColors.lightGrey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: SingleChildScrollView(
              controller: scrollController,
              physics: const ClampingScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: constraints.maxHeight),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      AppIcon(AppIcons.arrowUp),
                      Text(
                        'Scroll Up to see All products',
                        style: AppFonts.w500f14.copyWith(color: AppColors.grey),
                      ),
                      Gap(10),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Row(
                              children: [
                                AppIcon(AppIcons.list),
                                Gap(5),
                                Text(
                                  'All products',
                                  style: AppFonts.w600f14,
                                )
                              ],
                            ),
                            AppIcon(AppIcons.arrow_up)
                          ],
                        ),
                      ),
                      Gap(15),
                      Expanded(
                        child: ListView(
                          children: List.generate(
                            10,
                            (index) {
                              return Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 10,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: AppColors.white,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'assets/images/cardPhone2.png',
                                      fit: BoxFit.fill,
                                      width: 54,
                                    ),
                                    Gap(10),
                                    Flexible(
                                      child: Text(
                                        'Logitech G Pro X Superlight Wireless Gaming Mouse',
                                        style: AppFonts.w600f14,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      );
    });
  }
}
