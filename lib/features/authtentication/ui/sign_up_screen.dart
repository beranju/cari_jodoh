import 'package:cari_jodoh/common_widget/custom_text_field.dart';
import 'package:cari_jodoh/common_widget/hero_widget.dart';
import 'package:cari_jodoh/common_widget/logo_tagline_widget.dart';
import 'package:cari_jodoh/common_widget/logo_widget.dart';
import 'package:cari_jodoh/theme_manager/theme_data_manager.dart';
import 'package:cari_jodoh/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

import '../../../common_widget/banner_widget.dart';

class SignUpScreen extends StatefulWidget{

  /// route name
  static const String routeName = '/sign-up';

  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
            children: <Widget>[
              const BannerWidget(),
              CustomTextField(
                  labelName: "Complete Name",
                  textHint: "Write your name",
                  controller: nameController
              ),
              CustomTextField(
                  labelName: "Email Address",
                  textHint: "Write your mail address",
                  controller: emailController
              ),
              CustomTextField(
                  labelName: "Password",
                  textHint: "Write your security",
                  controller: passwordController,
                  isObsecure: true,
              ),
            ],
          ),
        )
      ),

    );
  }

  @override
  void dispose() {
    nameController.clear();
    emailController.clear();
    passwordController.clear();
    super.dispose();
  }
}