import 'package:cari_jodoh/theme_manager/color_manager.dart';
import 'package:cari_jodoh/theme_manager/style_manager.dart';
import 'package:cari_jodoh/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget{
  const CustomTextField({
    super.key,
    required this.labelName,
    required this.textHint,
    required this.controller,
    this.isObsecure = false
  });

  /// parameter for customize textfield
  final String labelName;
  final String textHint;
  final bool isObsecure;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelName,
          style: getWhiteTextStyle(),
        ),
        const SizedBox(height: AppSize.s8),
        TextField(
          controller: controller,
          obscureText: isObsecure,
          style: getWhiteTextStyle(),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              vertical: AppPadding.p15,
              horizontal: AppPadding.p30
            ),
            filled: true,
            fillColor: ColorManager.secondary,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSize.s50)
            ),
            hintText: textHint,
            hintStyle: getGrey40TextStyle()
          ),
        ),
        const SizedBox(height: AppSize.s14,)
      ],
    );
  }
}