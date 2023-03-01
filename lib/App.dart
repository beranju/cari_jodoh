import 'package:cari_jodoh/theme_manager/assets_image_theme_manager.dart';
import 'package:cari_jodoh/theme_manager/theme_data_manager.dart';
import 'package:flutter/material.dart';

class AppScreen extends StatelessWidget{
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: getAppThemeData(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Material App"),
        ),
        body: Center(
          child: Image.asset('${AssetImageManager.assetPath}/hero_image.png'),
        ),
      ),
    );
  }
}