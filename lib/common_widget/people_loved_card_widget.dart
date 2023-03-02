import 'package:cari_jodoh/theme_manager/assets_image_theme_manager.dart';
import 'package:cari_jodoh/theme_manager/color_manager.dart';
import 'package:cari_jodoh/theme_manager/font_manager.dart';
import 'package:cari_jodoh/theme_manager/style_manager.dart';
import 'package:cari_jodoh/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

class PeopleLovedCardWidget extends StatelessWidget {
  const PeopleLovedCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p24
      ),
      child: Container(
        margin: const EdgeInsets.only(bottom: AppMargin.m18),
        decoration: BoxDecoration(
          color: ColorManager.secondary,
          borderRadius: BorderRadius.circular(AppSize.s20)
        ),
        child: ListTile(
          contentPadding: EdgeInsets.all(AppPadding.p10),
          leading: Container(
            width: 70.0,
            height: 70.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('${AssetImageManager.assetPath}/people_image_2.png')
              )
            ),
          ),
          title: Text(
            'Blessti Sinaga',
            style: getWhiteTextStyle(
              fontSize: FontSizeManager.f20,
              fontWeight: FontWeightManager.semiBold
            ),
          ),
          subtitle: Text(
            '20, Advokat',
            style: getGrayTextStyle(),
          ),

        ),
      ),
    );
  }
}
