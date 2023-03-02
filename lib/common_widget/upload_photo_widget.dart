import 'dart:io';

import 'package:cari_jodoh/theme_manager/assets_image_theme_manager.dart';
import 'package:cari_jodoh/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

import '../theme_manager/color_manager.dart';

class UploadPhotoWidget extends StatelessWidget {
  const UploadPhotoWidget({super.key, required this.image});

  final File? image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
            width: 180.0,
            height: 180.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: ColorManager.secondary,
                  width: 8.0,
                  strokeAlign: BorderSide.strokeAlignOutside),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100.0),
              child: image != null
                  ? Image(
                      image: FileImage(image!),
                      fit: BoxFit.cover,
                    )
                  : const Image(
                      image: AssetImage(
                        '${AssetImageManager.assetPath}/icon_empty_profile.png',
                      ),
                      fit: BoxFit.cover,
                    ),
            )
        ),
        const Positioned(
            bottom: -25.0,
            child: SizedBox(
              width: AppSize.s50,
              height: AppSize.s50,
              child: Image(
                image:
                    AssetImage('${AssetImageManager.assetPath}/icon_add.png'),
              ),
            )
        )
      ],
    );
  }
}
