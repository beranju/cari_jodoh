import 'package:cari_jodoh/theme_manager/color_manager.dart';
import 'package:cari_jodoh/theme_manager/font_manager.dart';
import 'package:cari_jodoh/theme_manager/style_manager.dart';
import 'package:cari_jodoh/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget{
  const CustomButtonWidget({super.key, required this.textButton, required this.ontap});

  final String textButton;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        height: 55.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s50),
          gradient: LinearGradient(
            colors: [
              ColorManager.pink,
              ColorManager.purple
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          )
        ),
        child: Text(
          textButton,
          style: getWhiteTextStyle(fontWeight: FontWeightManager.semiBold),
        ),
      ),
    );
  }
}