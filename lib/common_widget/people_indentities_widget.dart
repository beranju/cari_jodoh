import 'package:cari_jodoh/features/likes_you/domain/user.dart';
import 'package:flutter/material.dart';

import '../theme_manager/font_manager.dart';
import '../theme_manager/style_manager.dart';
import '../theme_manager/values_manager.dart';

class PeopleIdentities extends StatelessWidget {
  const PeopleIdentities({
    super.key, required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            user.fullName,
            style: getWhiteTextStyle(
                fontSize: FontSizeManager.f28,
                fontWeight: FontWeightManager.semiBold
            ),
          ),
          Text(
            '${user.age}, ${user.occupation}',
            style: getGreyTextStyle(),
          ),
          const SizedBox(height: AppSize.s16,),
          Text(
            user.description,
            style: getWhiteTextStyle(),
          ),
          const SizedBox(height: AppSize.s16,)
        ],
      ),
    );
  }
}