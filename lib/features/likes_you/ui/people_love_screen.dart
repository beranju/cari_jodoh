import 'package:cari_jodoh/theme_manager/font_manager.dart';
import 'package:cari_jodoh/theme_manager/style_manager.dart';
import 'package:cari_jodoh/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

import '../../../common_widget/people_loved_card_widget.dart';

class PeopleLoveScreen extends StatelessWidget{
  static const String routeName = '/people-loved';
  const PeopleLoveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "People you\nloved",
          textAlign: TextAlign.center,
          style: getWhiteTextStyle(
            fontSize: FontSizeManager.f20,
            fontWeight: FontWeightManager.semiBold
          ),
        ),
        actions: [
          IconButton(
              onPressed: (){} ,
              icon: const Icon(
                Icons.search_outlined,
                size: AppSize.s30,
              ))
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: AppSize.s50,),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index){
              return const PeopleLovedCardWidget();
            }, itemCount: 10,),
          ),
        ],
      ),
    );
  }
}