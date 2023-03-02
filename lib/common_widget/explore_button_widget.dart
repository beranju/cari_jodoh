import 'package:cari_jodoh/common_widget/match_button_widget.dart';
import 'package:flutter/material.dart';

class ExploreButtonWidget extends StatelessWidget{
  const ExploreButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MatchButtonWidget(
            iconPath: "icon_close.png",
            onTap: (){}
        ),
        MatchButtonWidget(
            iconPath: "icon_love.png",
            dimension: 80.0,
            onTap: (){}
        ),
        MatchButtonWidget(
            iconPath: "icon_favorite.png",
            onTap: (){}
        )
      ],
    );
  }
}