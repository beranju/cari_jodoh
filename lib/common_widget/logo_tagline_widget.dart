import 'package:cari_jodoh/common_widget/logo_widget.dart';
import 'package:cari_jodoh/theme_manager/style_manager.dart';
import 'package:cari_jodoh/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';
class LogoAndTagLineWidget extends StatelessWidget{
  const LogoAndTagLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const LogoWidget(),
        const SizedBox(height: AppSize.s6,),
        Text("Find your perfect love", style: getWhiteTextStyle(),)
      ],
    );
  }
}