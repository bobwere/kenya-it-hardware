import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kenya_it_hardware/common/failures/auth_failure.dart';
import 'package:kenya_it_hardware/src/data/auth/auth_repository.dart';
import 'package:kenya_it_hardware/src/data/auth/user_model.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._iAuthFacade) : super(LoginState.initial());

  final IAuthFacade _iAuthFacade;

  void usernameChanged(String username) {
    emit(state.copyWith.call(
      username: username,
      isSubmitting: false,
      authFailureOrSuccessOption: none(),
    ));
  }

  void passwordChanged(String password) {
    emit(state.copyWith.call(
      password: password,
      isSubmitting: false,
      authFailureOrSuccessOption: none(),
    ));
  }

  void signInWithUsernameAndPassword() async {
    Either<AuthFailure, UserModel> failureOrSuccess;

    emit(state.copyWith.call(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    ));

    failureOrSuccess = await _iAuthFacade.signInWithEmailAndPassword(
      password: state.password,
      username: state.username,
    );

    emit(state.copyWith.call(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }

  void loginWithGooglePressed() async {
    Either<AuthFailure, UserModel> failureOrSuccess;

    emit(state.copyWith.call(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    ));

    failureOrSuccess = await _iAuthFacade.signInWithGoogle();

    emit(state.copyWith.call(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }
}
