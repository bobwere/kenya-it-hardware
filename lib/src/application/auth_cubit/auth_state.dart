part of 'auth_cubit.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.uninitialized() = Uninitialized;
  const factory AuthState.authenticated(
      UserModel user, String name, String picture, String id) = Authenticated;
  const factory AuthState.unauthenticated() = UnAuthenticated;

  const factory AuthState.onboarding() = Onboarding;
}
