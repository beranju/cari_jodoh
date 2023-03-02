import 'package:cari_jodoh/common_widget/logo_widget.dart';
import 'package:cari_jodoh/features/likes_you/ui/people_love_screen.dart';
import 'package:cari_jodoh/theme_manager/assets_image_theme_manager.dart';
import 'package:flutter/material.dart';

class ExplorePeopleAppBarWidget extends StatelessWidget{
  const ExplorePeopleAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 55.0,
          height: 55.0,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('${AssetImageManager.assetPath}/user_image_default.png'),
              fit: BoxFit.cover
            ),
          ),
        ),
        const LogoWidget(),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, PeopleLoveScreen.routeName);
          },
          child: Container(
            width: 24.0,
            height: 24.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('${AssetImageManager.assetPath}/icon_notification.png'),
              )
            ),
          ),
        )
      ],
    );
  }
}