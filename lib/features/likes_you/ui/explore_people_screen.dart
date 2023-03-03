import 'package:cari_jodoh/common_widget/explore_button_widget.dart';
import 'package:cari_jodoh/common_widget/explore_people_app_bar_widget.dart';
import 'package:cari_jodoh/common_widget/match_card_widget.dart';
import 'package:cari_jodoh/features/authtentication/data/data_user_account_local.dart';
import 'package:cari_jodoh/features/authtentication/domain/user_account.dart';
import 'package:cari_jodoh/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';

class ExplorePeopleScreen extends StatefulWidget{
  static const String routeName = '/explore-people';
  const ExplorePeopleScreen({super.key});

  @override
  State<ExplorePeopleScreen> createState() => _ExplorePeopleScreenState();
}

class _ExplorePeopleScreenState extends State<ExplorePeopleScreen> {

  UserAccount? userAccount;

  getDataUser() async {
    final data = await DataUserAccountLocal.getDataUserAccountFromStorage();
    final result = UserAccount.fromMap(data);
    userAccount = result;
    setState(() {

    });
  }

  @override
  void initState() {
    super.initState();
    getDataUser();
  }

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
            ExplorePeopleAppBarWidget(imagePath: userAccount?.imageProfile,),
            const SizedBox(height: AppSize.s50,),
            Expanded(
              child: Column(
                children: const [
                  Expanded(child: MatchCardWidget()),
                  SizedBox(height: AppSize.s50,),
                  ExploreButtonWidget()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}