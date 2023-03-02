import 'package:cari_jodoh/common_widget/custom_button_widget.dart';
import 'package:cari_jodoh/common_widget/match_button_widget.dart';
import 'package:cari_jodoh/common_widget/people_indentities_widget.dart';
import 'package:cari_jodoh/theme_manager/assets_image_theme_manager.dart';
import 'package:cari_jodoh/theme_manager/style_manager.dart';
import 'package:cari_jodoh/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

import '../../../common_widget/profile_detail_image_widget.dart';
import '../../../theme_manager/font_manager.dart';

class PeopleProfileScreen extends StatelessWidget {
  static const String routeName = '/people-profile';
  const PeopleProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ProfileDetailImageWidget(),
          const SizedBox(height: AppSize.s30,),
          const PeopleIdentities(),
          Container(
            height: 80.0,
            margin: const EdgeInsets.only(left: AppMargin.m24),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return Container(
                  width: 120.0,
                  height: 80.0,
                  margin: const EdgeInsets.only(right: AppMargin.m16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppSize.s18),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('${AssetImageManager.assetPath}/album_image_1.png')
                    )
                  ),
                );
              },
              itemCount: 4,),
          ),
          const SizedBox(height: AppSize.s40,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppMargin.m24),
            child: CustomButtonWidget(
                textButton: "Chat Now",
                ontap: (){},
            ),
          ),
        ],
      ),

    );
  }
}

