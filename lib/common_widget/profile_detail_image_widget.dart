import 'package:cari_jodoh/features/likes_you/domain/user.dart';
import 'package:cari_jodoh/features/likes_you/ui/explore_people_screen.dart';
import 'package:flutter/material.dart';

import '../theme_manager/assets_image_theme_manager.dart';
import '../theme_manager/font_manager.dart';
import '../theme_manager/style_manager.dart';
import '../theme_manager/values_manager.dart';
import 'match_button_widget.dart';

class ProfileDetailImageWidget extends StatelessWidget {
  const ProfileDetailImageWidget({
    super.key, required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 420.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(user.imagePath)
              )
          ),
        ),

        Padding(
          padding:const EdgeInsets.symmetric(
              vertical: AppPadding.p50,
              horizontal: AppPadding.p26
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MatchButtonWidget(
                  dimension: 24,
                  iconPath: "icon_arrow_back.png",
                  onTap: (){
                    Navigator.pop(context);
                  }
              ),
              Text(
                'Lover Profile\nDetail',
                textAlign: TextAlign.center,
                style: getWhiteTextStyle(
                    fontSize: FontSizeManager.f20,
                    fontWeight: FontWeightManager.semiBold
                ),
              ),
              MatchButtonWidget(
                  dimension: 24,
                  iconPath: "icon_closecircle.png",
                  onTap: (){
                    Navigator.pushNamedAndRemoveUntil(context, ExplorePeopleScreen.routeName, (route) => false);
                  }
              ),
            ],
          ),
        )
      ],
    );
  }
}

