import 'package:cari_jodoh/theme_manager/assets_image_theme_manager.dart';
import 'package:flutter/cupertino.dart';

class LogoWidget extends StatelessWidget{
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 143.0,
      height: 43.0,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('${AssetImageManager.assetPath}/logo_app.png')
        )
      ),
    );
  }
}