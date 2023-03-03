import 'package:cari_jodoh/features/authtentication/ui/auth_bloc.dart';
import 'package:cari_jodoh/features/likes_you/ui/bloc/people_explore/explore_people_bloc.dart';
import 'package:cari_jodoh/features/likes_you/ui/bloc/people_loved/people_loved_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'App.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    /// bungkus app dengan multibloc karna akan banyak blok yang digunakan
    /// di init din app screen supaya bisa digunakan disemua turunan app screen
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthBloc()),
        BlocProvider(create: (context) => ExplorePeopleBloc()),
        BlocProvider(create: (context) => PeopleLovedBloc()),
      ],
      child: const AppScreen(),
    );
  }
}