import 'package:flutter/material.dart';
import 'package:t89/core/theme/app_colors.dart';
import 'package:t89/core/theme/app_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required TextEditingController companyCtrl,
    required this.hintText,
    this.type,
    this.color,
  }) : _companyCtrl = companyCtrl;

  final TextEditingController _companyCtrl;
  final String hintText;
  final TextInputType? type;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            hintText,
            style: AppFonts.w500f12.copyWith(
              color: AppColors.grey,
            ),
          ),
        ),
        TextFormField(
          keyboardType: type ?? TextInputType.name,
          controller: _companyCtrl,
          style: AppFonts.w600f14.copyWith(
            color: color ?? AppColors.darkBlue,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            prefix: color != null
                ? Text(
                    '\$',
                    style: AppFonts.w600f14.copyWith(
                      color: color,
                    ),
                  )
                : null,
            hintStyle: AppFonts.w600f14.copyWith(
              color: color ?? AppColors.darkBlue,
            ),
            fillColor: AppColors.lightGrey,
            filled: true,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(16)),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter ${hintText.toLowerCase()}';
            }
            return null;
          },
        ),
      ],
    );
  }
}
