import 'package:cari_jodoh/common_widget/hero_widget.dart';
import 'package:cari_jodoh/common_widget/logo_tagline_widget.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget{
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        LogoAndTagLineWidget(),
        HeroWidget()
      ],
    );
  }
}