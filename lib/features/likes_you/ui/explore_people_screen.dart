import 'package:cari_jodoh/common_widget/explore_people_app_bar_widget.dart';
import 'package:cari_jodoh/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

class ExplorePeopleScreen extends StatelessWidget{
  static const String routeName = '/explore-people';
  const ExplorePeopleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p24,
          vertical: AppPadding.p40
        ),
        child: Column(
          children: [
            ExplorePeopleAppBarWidget(),
          ],
        ),
      ),
    );
  }
}