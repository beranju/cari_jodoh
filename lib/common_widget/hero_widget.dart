import 'package:cari_jodoh/theme_manager/assets_image_theme_manager.dart';
import 'package:cari_jodoh/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget{
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 215,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: AppMargin.m30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s18),
        image: const DecorationImage(
          image: AssetImage('${AssetImageManager.assetPath}/hero_image.png'),
          fit: BoxFit.cover,
        )
      ),
    );
  }
}