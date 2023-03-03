import 'package:cari_jodoh/features/authtentication/data/data_user_account_local.dart';
import 'package:cari_jodoh/features/authtentication/ui/sign_up_job_age_screen.dart';
import 'package:cari_jodoh/features/authtentication/ui/sign_up_photo_screen.dart';
import 'package:cari_jodoh/features/authtentication/ui/sign_up_screen.dart';
import 'package:cari_jodoh/features/likes_you/ui/explore_people_screen.dart';
import 'package:cari_jodoh/features/likes_you/ui/people_profile_screen.dart';
import 'package:cari_jodoh/theme_manager/assets_image_theme_manager.dart';
import 'package:cari_jodoh/theme_manager/theme_data_manager.dart';
import 'package:flutter/material.dart';

import 'features/likes_you/ui/people_love_screen.dart';

class AppScreen extends StatefulWidget{
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  bool isRegister = false;

  isUserRegister() async {
    isRegister = await UserAccountRegister.getUserAccountRegister();
    setState(() {

    });
  }

  @override
  void initState() {
    super.initState();
    isUserRegister();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: getAppThemeData(),
      // initialRoute: SignUpScreen.routeName,
      home: isRegister ? const ExplorePeopleScreen() : const SignUpScreen(),
      routes: {
        SignUpScreen.routeName : (context) => const SignUpScreen(),
        SignUpPhotoScreen.routeName : (context) => const SignUpPhotoScreen(),
        ExplorePeopleScreen.routeName : (context) => const ExplorePeopleScreen(),
        PeopleLoveScreen.routeName : (context) => const PeopleLoveScreen(),
        PeopleProfileScreen.routeName : (context) => const PeopleProfileScreen(),
      },
    );
  }
}