import 'package:cari_jodoh/common_widget/banner_widget.dart';
import 'package:cari_jodoh/common_widget/custom_button_widget.dart';
import 'package:cari_jodoh/features/authtentication/ui/sign_up_photo_screen.dart';
import 'package:cari_jodoh/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

import '../../../common_widget/custom_text_field.dart';

class SignUpJobAgeScreen extends StatefulWidget{
  static const String routeName = '/sign-up-job-age';
  const SignUpJobAgeScreen({super.key});

  @override
  State<SignUpJobAgeScreen> createState() => _SignUpJobAgeScreenState();
}

class _SignUpJobAgeScreenState extends State<SignUpJobAgeScreen> {
  final jobController = TextEditingController();
  final ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p24,
          vertical: AppPadding.p50
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const BannerWidget(),
              CustomTextField(
                controller: jobController,
                textHint: "Write your occupation",
                labelName: "Occupation",
              ),
              CustomTextField(
                controller: ageController,
                textHint: "Write your age",
                labelName: "Age",
              ),
              const SizedBox(height: 100,),
              CustomButtonWidget(
                  textButton: "Continue Signup",
                  ontap: (){
                    Navigator.pushNamed(context, SignUpPhotoScreen.routeName);
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    ageController.clear();
    jobController.clear();
    super.dispose();
  }
}