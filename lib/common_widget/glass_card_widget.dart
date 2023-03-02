import 'package:flutter/material.dart';

import '../theme_manager/assets_image_theme_manager.dart';
import '../theme_manager/font_manager.dart';
import '../theme_manager/style_manager.dart';
import '../theme_manager/values_manager.dart';

class GlassCardWidget extends StatelessWidget {
  const GlassCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80.0,
      padding: const EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: AppPadding.p24
      ),
      margin: const EdgeInsets.symmetric(
          horizontal: AppMargin.m30,
          vertical: AppMargin.m26
      ),
      decoration: BoxDecoration(
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('${AssetImageManager.assetPath}/glass_card_image.png')
          ),
          borderRadius: BorderRadius.circular(33.0)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Blessta",
                style: getWhiteTextStyle(
                    fontSize: FontSizeManager.f20,
                    fontWeight: FontWeightManager.semiBold
                ),
              ),
              Text(
                "20, Sipil Engineer",
                style: getWhiteTextStyle(
                  fontSize: FontSizeManager.f14,
                ),
              )
            ],
          ),
          Container(
            width: AppSize.s50,
            height: AppSize.s50,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('${AssetImageManager.assetPath}/icon_profile.png')
                )
            ),
          )
        ],
      ),
    );
  }
}