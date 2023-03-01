import 'package:cari_jodoh/theme_manager/assets_image_theme_manager.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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