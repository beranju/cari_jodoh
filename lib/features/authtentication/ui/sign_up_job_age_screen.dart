import 'package:cari_jodoh/common_widget/banner_widget.dart';
import 'package:cari_jodoh/common_widget/custom_button_widget.dart';
import 'package:cari_jodoh/features/authtentication/domain/user_account.dart';
import 'package:cari_jodoh/features/authtentication/ui/sign_up_photo_screen.dart';
import 'package:cari_jodoh/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

import '../../../common_widget/custom_text_field.dart';

class SignUpJobAgeScreen extends StatefulWidget {
  static const String routeName = '/sign-up-job-age';

  const SignUpJobAgeScreen(
      {super.key,
      required this.fullName,
      required this.email,
      required this.password});

  final String fullName;
  final String email;
  final String password;

  @override
  State<SignUpJobAgeScreen> createState() => _SignUpJobAgeScreenState();
}

class _SignUpJobAgeScreenState extends State<SignUpJobAgeScreen> {
  final jobController = TextEditingController();
  final ageController = TextEditingController();

  String? validationInput() {
    if (jobController.text.isEmpty || ageController.text.isEmpty) {
      return "Field job or age can\'t be empty";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p24, vertical: AppPadding.p50),
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
              const SizedBox(
                height: 100,
              ),
              CustomButtonWidget(
                  textButton: "Continue Signup",
                  ontap: () {
                    /// check input validation
                    final message = validationInput();
                    if (message != null) {
                      /// hide latest snackbar
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      /// add new snackbar
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(message)));

                      /// return ini dibuat agar kode dibawahnya tidak dijalankan
                      return;
                    }
                    UserAccount userAccount = UserAccount(
                        fullName: widget.fullName,
                        email: widget.email,
                        password: widget.password,
                        job: jobController.text,
                        age: ageController.text);
                    Navigator.pushNamed(context, SignUpPhotoScreen.routeName,
                        arguments: userAccount);
                  }),
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
    ageController.dispose();
    jobController.dispose();
    super.dispose();
  }
}
