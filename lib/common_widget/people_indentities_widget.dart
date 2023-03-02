import 'package:flutter/material.dart';

import '../theme_manager/font_manager.dart';
import '../theme_manager/style_manager.dart';
import '../theme_manager/values_manager.dart';

class PeopleIdentities extends StatelessWidget {
  const PeopleIdentities({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Blessta Elina Sinaga",
            style: getWhiteTextStyle(
                fontSize: FontSizeManager.f28,
                fontWeight: FontWeightManager.semiBold
            ),
          ),
          Text(
            '20, Civil Engineer',
            style: getGreyTextStyle(),
          ),
          const SizedBox(height: AppSize.s16,),
          Text(
            "I love solving problem in terms of finance, business, and any case. With you, we will solve all world problems.",
            style: getWhiteTextStyle(),
          ),
          const SizedBox(height: AppSize.s16,)
        ],
      ),
    );
  }
}