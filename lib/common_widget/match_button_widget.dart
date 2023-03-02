import 'package:cari_jodoh/theme_manager/assets_image_theme_manager.dart';
import 'package:cari_jodoh/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

class MatchButtonWidget extends StatelessWidget{
  const MatchButtonWidget({
    super.key,
    required this.iconPath,
    required this.onTap,
    this.dimension = AppSize.s50
  });

  final double dimension;
  final String iconPath;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: dimension,
        height: dimension,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('${AssetImageManager.assetPath}/$iconPath'),
            fit: BoxFit.cover,
          )
        ),
      ),
    );
  }
}