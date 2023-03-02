import 'dart:io';
import 'package:cari_jodoh/common_widget/custom_button_widget.dart';
import 'package:cari_jodoh/common_widget/custom_text_button_widget.dart';
import 'package:cari_jodoh/common_widget/upload_photo_widget.dart';
import 'package:cari_jodoh/features/likes_you/ui/explore_people_screen.dart';
import 'package:cari_jodoh/theme_manager/font_manager.dart';
import 'package:cari_jodoh/theme_manager/style_manager.dart';
import 'package:cari_jodoh/theme_manager/values_manager.dart';
import 'package:cari_jodoh/utils/image_picker_util.dart';
import 'package:flutter/material.dart';

import '../../../common_widget/logo_tagline_widget.dart';

class SignUpPhotoScreen extends StatefulWidget{
  static const String routeName = '/sign-up-upload-photo';
  const SignUpPhotoScreen({super.key});

  @override
  State<SignUpPhotoScreen> createState() => _SignUpPhotoScreenState();
}

class _SignUpPhotoScreenState extends State<SignUpPhotoScreen> {
  /// get image
  File? image;

  /// sebuah method get image
  /// penggunaan setstate digunakan untuk menghandle state yang jalan pada satu page
  void getImageProfile(GetImageFrom source) async {
    final result = await ImagePickerUtils.getImage(source);
    if (result != null){
      setState(() {
        /// jangan lupa convert hasil file yang berupa xfile menjadi file
        image = File(result.path);
      });
    }
  }

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
              const LogoAndTagLineWidget(),
              const SizedBox(height: AppSize.s50,),
              GestureDetector(
                onTap: (){
                  showModalBottomSheet(
                      context: context,
                      builder: (context){
                        return Container(
                          padding: const EdgeInsets.all(AppPadding.p24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(onPressed: (){
                                getImageProfile(GetImageFrom.camera);
                              },
                                  icon: const Icon(
                                    Icons.camera,
                                    size: AppSize.s50,
                                  )
                              ),
                              IconButton(onPressed: (){
                                getImageProfile(GetImageFrom.gallery);
                              },
                                  icon: const Icon(
                                    Icons.photo,
                                    size: AppSize.s50,
                                  )
                              ),
                            ],
                          ),
                        );
                      }
                  );
                },
                child: UploadPhotoWidget(image: image)
              ),
              const SizedBox(height: 53.0,),
              Text(
                'Beranju Sihombing',
                style: getWhiteTextStyle(
                  fontSize: FontSizeManager.f22,
                  fontWeight: FontWeightManager.semiBold
                ),
              ),
              const SizedBox(height: AppSize.s4,),
              Text(
                "21, Programmer",
                style: getGreyTextStyle(),
              ),
              const SizedBox(height: 150,),
              CustomButtonWidget(
                  textButton: "Update My Profile",
                  ontap: (){}
              ),
              const SizedBox(height: AppSize.s20,),
              CustomTextButtonWidget(
                textButton: "Skip For Now",
                onPressed: (){
                  Navigator.pushNamed(context, ExplorePeopleScreen.routeName);
                },
              ),

            ],
          ),
        )
      ),
    );
  }
}