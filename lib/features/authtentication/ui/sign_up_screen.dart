import 'package:cari_jodoh/common_widget/custom_button_widget.dart';
import 'package:cari_jodoh/common_widget/custom_text_button_widget.dart';
import 'package:cari_jodoh/common_widget/custom_text_field.dart';
import 'package:cari_jodoh/features/authtentication/ui/sign_up_job_age_screen.dart';
import 'package:cari_jodoh/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

import '../../../common_widget/banner_widget.dart';

class SignUpScreen extends StatefulWidget {
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

  String? validationInput() {
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty) {
      return "Field name, email and password can\'t be empty";
    }
    if (passwordController.text.length < 6) {
      return "Password to short, minimal 6 character";
    }
    if (!emailController.text.contains('@')) {
      return "Email not valid";
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: AppPadding.p50, horizontal: AppPadding.p24),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const BannerWidget(),
                CustomTextField(
                    labelName: "Complete Name",
                    textHint: "Write your name",
                    controller: nameController),
                CustomTextField(
                    labelName: "Email Address",
                    textHint: "Write your mail address",
                    controller: emailController),
                CustomTextField(
                  labelName: "Password",
                  textHint: "Write your security",
                  controller: passwordController,
                  isObsecure: true,
                ),
                const SizedBox(
                  height: AppSize.s16,
                ),
                CustomButtonWidget(
                  textButton: "Get Started",
                  ontap: () {
                    /// check input validation
                    final message = validationInput();
                    if (message != null) {
                      /// hide latest snackbar
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(message)));

                      /// return ini dibuat agar kode dibawahnya tidak dijalankan
                      return;
                    }

                    /// karena perlu send data to next screen ubah mnajfi push
                    // Navigator.pushNamed(context, SignUpJobAgeScreen.routeName);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUpJobAgeScreen(
                                fullName: nameController.text,
                                email: emailController.text,
                                password: passwordController.text)));
                  },
                ),
                const SizedBox(
                  height: AppSize.s20,
                ),
                CustomTextButtonWidget(
                    textButton: "Sign In to My Account", onPressed: () {}),
              ],
            ),
          )),
    );
  }

  @override
  void dispose() {
    nameController.clear();
    emailController.clear();
    passwordController.clear();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
