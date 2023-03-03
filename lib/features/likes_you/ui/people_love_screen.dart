import 'package:cari_jodoh/features/likes_you/ui/bloc/people_loved/people_loved_bloc.dart';
import 'package:cari_jodoh/theme_manager/font_manager.dart';
import 'package:cari_jodoh/theme_manager/style_manager.dart';
import 'package:cari_jodoh/theme_manager/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common_widget/people_loved_card_widget.dart';

class PeopleLoveScreen extends StatefulWidget {
  static const String routeName = '/people-loved';

  const PeopleLoveScreen({super.key});

  @override
  State<PeopleLoveScreen> createState() => _PeopleLoveScreenState();
}

class _PeopleLoveScreenState extends State<PeopleLoveScreen> {
  @override
  void initState() {
    super.initState();
    context.read<PeopleLovedBloc>().add(OnPeopleLovedEventCalled());
  }

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
              onPressed: () {},
              icon: const Icon(
                Icons.search_outlined,
                size: AppSize.s30,
              ))
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: AppSize.s50,),

          /// bungkus list dengan bloc builder
          BlocBuilder<PeopleLovedBloc, PeopleLovedState>(
            builder: (context, state) {
              if (state is PeopleLovedLoading){
                return const Center(child: CircularProgressIndicator());
              }
              if (state is PeopleLovedLoaded){
                final users = state.userMatch;
                return users.isEmpty ? Center(
                  child: Text("No data user match",
                  style: getWhiteTextStyle(),
                  ),
                ) : Expanded(
                  child: ListView.builder(itemBuilder: (context, index) {
                    return PeopleLovedCardWidget(user: users[index],);
                  }, itemCount: users.length,),
                );
              }

              /// return container empty when inital state
              return Container();

            },
          ),
        ],
      ),
    );
  }
}