import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kenya_it_hardware/common/constants/strings.dart';
import 'package:kenya_it_hardware/src/data/auth/auth_repository.dart';
import 'package:kenya_it_hardware/src/data/auth/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._iAuthFacade, this._pref) : super(AuthState.uninitialized());

  final IAuthFacade _iAuthFacade;

  final SharedPreferences _pref;

  void appStarted() async {
    final userOption = _iAuthFacade.getSignedInUser();

    final userId = _pref.getString(USER_ID) ?? "";
    final photoUrl = _pref.getString(USER_PHOTO_URL) ?? "";
    final name = _pref.getString(USER_NAME) ?? "";

    //time for splash screen to animate first then proceed
    await Future.delayed(Duration(seconds: 3));

    final value = _pref.getBool(ONBOARDING_PAGE_SEEN) ?? false;
    if (!value) {
      emit(AuthState.onboarding());
    } else {
      userOption.fold(
          () => emit(AuthState.unauthenticated()),
          (user) =>
              emit(AuthState.authenticated(user, name, photoUrl, userId)));
    }
  }

  void logIn() {
    final userOption = _iAuthFacade.getSignedInUser();
    final user = userOption.getOrElse(() => null);

    final userId = _pref.getString(USER_ID) ?? "";
    final photoUrl = _pref.getString(USER_PHOTO_URL) ?? "";
    final name = _pref.getString(USER_NAME) ?? "";

    user != null
        ? emit(AuthState.authenticated(user, name, photoUrl, userId))
        : emit(AuthState.unauthenticated());
  }

  void logOut() async {
    await _iAuthFacade.signOut();
    emit(AuthState.unauthenticated());
  }
}
