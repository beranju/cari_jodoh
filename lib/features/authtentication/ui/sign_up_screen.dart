import 'package:cari_jodoh/common_widget/hero_widget.dart';
import 'package:cari_jodoh/common_widget/logo_tagline_widget.dart';
import 'package:cari_jodoh/common_widget/logo_widget.dart';
import 'package:cari_jodoh/theme_manager/theme_data_manager.dart';
import 'package:cari_jodoh/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

import '../../../common_widget/banner_widget.dart';

class SignUpScreen extends StatelessWidget{

  /// route name
  static const String routeName = '/sign-up';

  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppPadding.p50,
          horizontal: AppPadding.p24
        ),
        child: SingleChildScrollView(
          child: Column(
            children: const <Widget>[
              BannerWidget(),
            ],
          ),
        )
      ),

    );
  }
}