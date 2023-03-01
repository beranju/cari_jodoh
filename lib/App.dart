import 'package:cari_jodoh/features/authtentication/ui/sign_up_screen.dart';
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
      initialRoute: SignUpScreen.routeName,
      routes: {
        SignUpScreen.routeName : (context) => const SignUpScreen(),
      },
    );
  }
}