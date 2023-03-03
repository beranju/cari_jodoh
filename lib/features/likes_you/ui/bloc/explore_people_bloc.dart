import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'explore_people_event.dart';
part 'explore_people_state.dart';

class ExplorePeopleBloc extends Bloc<ExplorePeopleEvent, ExplorePeopleState> {
  ExplorePeopleBloc() : super(ExplorePeopleInitial()) {
    on<ExplorePeopleEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
