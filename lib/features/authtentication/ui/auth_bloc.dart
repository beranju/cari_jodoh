import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cari_jodoh/features/authtentication/data/data_user_account_local.dart';
import 'package:meta/meta.dart';

import '../domain/user_account.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<RegisterAuthEvent>((event, emit) async {
      /// ketika button trigger jalankan loading
      emit(AuthLoading());
      /// set data ke local storage
      DataUserAccountLocal.setDataUserAccountToStorage(event.userAccount);
      UserAccountRegister.setUserRegisterAccount(event.isRegister);
      /// manipulasi dengan delay untuk membuat loading efek
      await Future.delayed(const Duration(seconds: 2));
      emit(AuthSuccess(userAccount: event.userAccount, isRegister: event.isRegister));
    });
  }
}
