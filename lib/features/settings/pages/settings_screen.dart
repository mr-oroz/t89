import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:gap/gap.dart';
import 'package:t89/core/theme/app_colors.dart';
import 'package:t89/core/theme/app_fonts.dart';
import 'package:t89/core/widgets/app_icon.dart';
import 'package:t89/core/widgets/gl_app_bar.dart';
import 'package:t89/features/main/blocs/add_company_bloc/add_company_bloc.dart';
import 'package:t89/features/main/models/company_model.dart';
import 'package:t89/features/settings/widgets/delete_account_dialog.dart';
import 'package:t89/features/settings/widgets/edit_company_dialog.dart';
import 'package:t89/features/settings/widgets/feedback_dialog.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

void _showModalAddCompany(BuildContext context, CompanyModel state) {
  showDialog(
    context: context,
    builder: (
      context,
    ) {
      return EditCompanyDialog(
        company: state,
      );
    },
  );
}

void _showModalFeedback(BuildContext context) {
  showDialog(
    context: context,
    builder: (
      context,
    ) {
      return FeedbackDialog();
    },
  );
}

void _showModalDeleteAccount(BuildContext context) {
  showDialog(
    context: context,
    builder: (
      context,
    ) {
      return DeleteAccountDialog();
    },
  );
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlAppBar(
        opacity: 0.75,
        leading: Center(
          child: AppIcon(
            AppIcons.setting,
            color: AppColors.mainColor,
          ),
        ),
        title: 'Settings',
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: BlocBuilder<AddCompanyBloc, CompanyModel?>(
            builder: (context, state) {
              return Column(
                children: [
                  Gap(50),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox(
                          width: 75,
                          height: 75,
                          child: state != null && state.image != null
                              ? Image.memory(
                                  state.image!,
                                  fit: BoxFit.cover,
                                )
                              : Image.asset(
                                  'assets/images/avatar.jpeg',
                                  fit: BoxFit.cover,
                                ),
                        ),
                      ),
                      const Gap(10),
                      Flexible(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: AppColors.lightGrey,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(6),
                              bottomRight: Radius.circular(16),
                              topLeft: Radius.circular(6),
                              topRight: Radius.circular(16),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              if (state != null && state.companyName != null )
                                Text(state.companyName.toString(),
                                    style: AppFonts.w600f14),
                              GestureDetector(
                                onTap: () {
                                  _showModalAddCompany(context, state!);
                                },
                                child: AppIcon(
                                  AppIcons.edit,
                                  color: AppColors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Gap(15),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.lightGrey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            AppIcon(AppIcons.notification),
                            Gap(10),
                            Text(
                              'Notifications',
                              style: AppFonts.w500f15,
                            )
                          ],
                        ),
                        FlutterSwitch(
                          activeColor: AppColors.green,
                          inactiveColor: AppColors.grey100,
                          width: 54.0,
                          height: 34.0,
                          toggleSize: 26.0,
                          value: _isSwitched,
                          borderRadius: 30.0,
                          onToggle: (val) {
                            setState(() {
                              _isSwitched = val;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Gap(15),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.lightGrey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Row(
                          children: [
                            AppIcon(AppIcons.like_shapes),
                            Gap(10),
                            Text(
                              'Rate Us',
                              style: AppFonts.w500f15,
                            )
                          ],
                        ),
                        AppIcon(AppIcons.arrow_up)
                      ],
                    ),
                  ),
                  Gap(15),
                  GestureDetector(
                    onTap: () {
                      _showModalFeedback(context);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.lightGrey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Row(
                            children: [
                              AppIcon(AppIcons.like_shapes),
                              Gap(10),
                              Text(
                                'Feedback',
                                style: AppFonts.w500f15,
                              )
                            ],
                          ),
                          AppIcon(AppIcons.arrow_up)
                        ],
                      ),
                    ),
                  ),
                  Gap(15),
                  GestureDetector(
                    onTap: () {
                      _showModalDeleteAccount(context);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xffFFE7E7),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              AppIcon(
                                AppIcons.trash,
                                color: AppColors.red,
                              ),
                              Gap(10),
                              Text(
                                'Delete Profile',
                                style: AppFonts.w500f15.copyWith(
                                  color: AppColors.red,
                                ),
                              )
                            ],
                          ),
                          AppIcon(
                            AppIcons.arrow_up,
                            color: AppColors.red,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
