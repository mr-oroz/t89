import 'dart:typed_data';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:t89/core/theme/app_colors.dart';
import 'package:t89/core/theme/app_fonts.dart';
import 'package:t89/core/utils/pick_image.dart';
import 'package:t89/core/widgets/app_icon.dart';
import 'package:t89/features/main/blocs/add_company_bloc/add_company_bloc.dart';
import 'package:t89/features/main/models/company_model.dart';
import 'package:t89/features/main/widgets/custom_text_field.dart';

class EditCompanyDialog extends StatefulWidget {
  const EditCompanyDialog({super.key, required this.company});

  final CompanyModel company;

  @override
  _EditCompanyDialogState createState() => _EditCompanyDialogState();
}

class _EditCompanyDialogState extends State<EditCompanyDialog> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _companyCtrl = TextEditingController();
  Uint8List? image;

  Future<void> selectedImage() async {
    image = await pickImage(context);
    setState(() {});
  }

  @override
  void initState() {
    _companyCtrl.text = widget.company.companyName ?? '';
    image = widget.company.image!;
    setState(() {});
    super.initState();
  }

  @override
  void dispose() {
    _companyCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.white,
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTextField(
                companyCtrl: _companyCtrl,
                hintText: 'Company name',
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
                        if (_formKey.currentState!.validate() &&
                            image != null &&
                            _companyCtrl.text.isNotEmpty) {
                          context.read<AddCompanyBloc>().add(
                                AddCompanyEvent.editCompany(
                                    companyName: _companyCtrl.text,
                                    image: image!),
                              );
                          _formKey.currentState!.save();
                          Navigator.of(context).pop();
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
    );
  }
}
