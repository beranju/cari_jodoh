import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:cari_jodoh/common_widget/explore_button_widget.dart';
import 'package:cari_jodoh/common_widget/explore_people_app_bar_widget.dart';
import 'package:cari_jodoh/common_widget/match_card_widget.dart';
import 'package:cari_jodoh/features/authtentication/data/data_user_account_local.dart';
import 'package:cari_jodoh/features/authtentication/domain/user_account.dart';
import 'package:cari_jodoh/features/likes_you/ui/bloc/explore_people_bloc.dart';
import 'package:cari_jodoh/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExplorePeopleScreen extends StatefulWidget {
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

    /// call user bloc
    context.read<ExplorePeopleBloc>().add(OnExplorePeopleEventCalled());
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

            /// wrap this expanded with blocbuilder
            BlocBuilder<ExplorePeopleBloc, ExplorePeopleState>(
              builder: (context, state) {
                if (state is ExplorePeopleLoading){
                  return const CircularProgressIndicator();
                }
                if (state is ExplorePeopleLoaded){
                  final users = state.result;
                  List<Widget> cards = [];
                  /// looping
                  for (var user in users){
                    cards.add(MatchCardWidget(user: user));
                  }
                  return Expanded(
                    child: Column(
                      children: [
                        /// disini tidak lai manggil matchcardwidget tapi appinium swipper
                        Expanded(child: AppinioSwiper(
                            cards: cards,
                          /// tambahakan parameter on onend untuk mengambil data ulang ketika data habis
                          onEnd: (){
                              context.read<ExplorePeopleBloc>()
                                  .add(OnExplorePeopleEventCalled());
                          },
                        )),
                        const SizedBox(height: AppSize.s50,),
                        const ExploreButtonWidget(),
                      ],
                    ),
                  );
                }
                /// jika initial maka akan return container empty
                return Container();
              },
            ),
          ],
        ),
      ),
    );
  }
}