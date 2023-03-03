import 'package:cari_jodoh/common_widget/glass_card_widget.dart';
import 'package:cari_jodoh/theme_manager/assets_image_theme_manager.dart';
import 'package:cari_jodoh/theme_manager/color_manager.dart';
import 'package:flutter/material.dart';

import '../features/likes_you/domain/user.dart';
import '../theme_manager/font_manager.dart';

class MatchCardWidget extends StatelessWidget{
  const MatchCardWidget({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(user.imagePath)
            ),
            border: Border.all(
              color: ColorManager.secondary,
              width: 10.0,
              strokeAlign: BorderSide.strokeAlignInside
            ),
            borderRadius: BorderRadius.circular(70.0)
          ),
        ),
        GlassCardWidget(user: user,)
      ],
    );
  }
}

