import 'dart:typed_data';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:t89/core/theme/app_colors.dart';
import 'package:t89/core/theme/app_fonts.dart';
import 'package:t89/core/utils/pick_image.dart';
import 'package:t89/core/widgets/app_button.dart';
import 'package:t89/core/widgets/app_icon.dart';
import 'package:t89/features/main/blocs/add_company_bloc/add_company_bloc.dart';
import 'package:t89/features/main/widgets/custom_text_field.dart';
import 'package:t89/features/main/widgets/second_modal.dart';

class FirstModal extends StatefulWidget {
  const FirstModal({super.key});

  @override
  _FirstModalState createState() => _FirstModalState();
}

class _FirstModalState extends State<FirstModal> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _companyCtrl = TextEditingController();
  Uint8List? image;

  Future<void> selectedImage() async {
    image = await pickImage(context);
    setState(() {});
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
              AppButton(
                onPressed: () {
                  if (_formKey.currentState!.validate() &&
                      image != null &&
                      _companyCtrl.text.isNotEmpty) {
                    context.read<AddCompanyBloc>().add(
                          AddCompanyEvent.addCompany(
                              companyName: _companyCtrl.text, image: image!),
                        );
                    _formKey.currentState!.save();
                    Navigator.of(context).pop();
                    _showSecondModal(context);
                  } else {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Error"),
                          content: Text(
                              "Please fill all fields and select an image."),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("OK"),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                title: 'Next',
                height: 44,
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showSecondModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SecondModal();
      },
    );
  }
}
