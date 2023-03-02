import 'package:cari_jodoh/common_widget/glass_card_widget.dart';
import 'package:cari_jodoh/theme_manager/assets_image_theme_manager.dart';
import 'package:cari_jodoh/theme_manager/color_manager.dart';
import 'package:flutter/material.dart';

import '../theme_manager/font_manager.dart';

class MatchCardWidget extends StatelessWidget{
  const MatchCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('${AssetImageManager.assetPath}/people_image_1.png')
            ),
            border: Border.all(
              color: ColorManager.secondary,
              width: 10.0,
              strokeAlign: BorderSide.strokeAlignInside
            ),
            borderRadius: BorderRadius.circular(70.0)
          ),
        ),
        const GlassCardWidget()
      ],
    );
  }
}

