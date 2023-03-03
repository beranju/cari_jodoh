part of 'explore_people_bloc.dart';

@immutable
abstract class ExplorePeopleState {}

class ExplorePeopleInitial extends ExplorePeopleState {}

/// init state
class ExplorePeopleLoading extends ExplorePeopleState{}
class ExplorePeopleLoaded extends ExplorePeopleState{
  final List<User> result;

  ExplorePeopleLoaded(this.result);
}
