import 'package:cari_jodoh/theme_manager/style_manager.dart';
import 'package:flutter/material.dart';

class CustomTextButtonWidget extends StatelessWidget{
  const CustomTextButtonWidget({super.key, required this.textButton, required this.onPressed});

  final String textButton;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          textButton,
          style: getGrey60TextStyle().copyWith(
            decoration: TextDecoration.underline
          ),
        ),
    );
  }
}