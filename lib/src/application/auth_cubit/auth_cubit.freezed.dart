// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  Uninitialized uninitialized() {
    return const Uninitialized();
  }

// ignore: unused_element
  Authenticated authenticated(
      UserModel user, String name, String picture, String id) {
    return Authenticated(
      user,
      name,
      picture,
      id,
    );
  }

// ignore: unused_element
  UnAuthenticated unauthenticated() {
    return const UnAuthenticated();
  }

// ignore: unused_element
  Onboarding onboarding() {
    return const Onboarding();
  }
}

// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

mixin _$AuthState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result uninitialized(),
    @required
        Result authenticated(
            UserModel user, String name, String picture, String id),
    @required Result unauthenticated(),
    @required Result onboarding(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result uninitialized(),
    Result authenticated(
        UserModel user, String name, String picture, String id),
    Result unauthenticated(),
    Result onboarding(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result uninitialized(Uninitialized value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(UnAuthenticated value),
    @required Result onboarding(Onboarding value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result uninitialized(Uninitialized value),
    Result authenticated(Authenticated value),
    Result unauthenticated(UnAuthenticated value),
    Result onboarding(Onboarding value),
    @required Result orElse(),
  });
}

abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

abstract class $UninitializedCopyWith<$Res> {
  factory $UninitializedCopyWith(
          Uninitialized value, $Res Function(Uninitialized) then) =
      _$UninitializedCopyWithImpl<$Res>;
}

class _$UninitializedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $UninitializedCopyWith<$Res> {
  _$UninitializedCopyWithImpl(
      Uninitialized _value, $Res Function(Uninitialized) _then)
      : super(_value, (v) => _then(v as Uninitialized));

  @override
  Uninitialized get _value => super._value as Uninitialized;
}

class _$Uninitialized implements Uninitialized {
  const _$Uninitialized();

  @override
  String toString() {
    return 'AuthState.uninitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Uninitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result uninitialized(),
    @required
        Result authenticated(
            UserModel user, String name, String picture, String id),
    @required Result unauthenticated(),
    @required Result onboarding(),
  }) {
    assert(uninitialized != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(onboarding != null);
    return uninitialized();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result uninitialized(),
    Result authenticated(
        UserModel user, String name, String picture, String id),
    Result unauthenticated(),
    Result onboarding(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (uninitialized != null) {
      return uninitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result uninitialized(Uninitialized value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(UnAuthenticated value),
    @required Result onboarding(Onboarding value),
  }) {
    assert(uninitialized != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(onboarding != null);
    return uninitialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result uninitialized(Uninitialized value),
    Result authenticated(Authenticated value),
    Result unauthenticated(UnAuthenticated value),
    Result onboarding(Onboarding value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (uninitialized != null) {
      return uninitialized(this);
    }
    return orElse();
  }
}

abstract class Uninitialized implements AuthState {
  const factory Uninitialized() = _$Uninitialized;
}

abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
  $Res call({UserModel user, String name, String picture, String id});
}

class _$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;

  @override
  $Res call({
    Object user = freezed,
    Object name = freezed,
    Object picture = freezed,
    Object id = freezed,
  }) {
    return _then(Authenticated(
      user == freezed ? _value.user : user as UserModel,
      name == freezed ? _value.name : name as String,
      picture == freezed ? _value.picture : picture as String,
      id == freezed ? _value.id : id as String,
    ));
  }
}

class _$Authenticated implements Authenticated {
  const _$Authenticated(this.user, this.name, this.picture, this.id)
      : assert(user != null),
        assert(name != null),
        assert(picture != null),
        assert(id != null);

  @override
  final UserModel user;
  @override
  final String name;
  @override
  final String picture;
  @override
  final String id;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user, name: $name, picture: $picture, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Authenticated &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality()
                    .equals(other.picture, picture)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(picture) ^
      const DeepCollectionEquality().hash(id);

  @override
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      _$AuthenticatedCopyWithImpl<Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result uninitialized(),
    @required
        Result authenticated(
            UserModel user, String name, String picture, String id),
    @required Result unauthenticated(),
    @required Result onboarding(),
  }) {
    assert(uninitialized != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(onboarding != null);
    return authenticated(user, name, picture, id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result uninitialized(),
    Result authenticated(
        UserModel user, String name, String picture, String id),
    Result unauthenticated(),
    Result onboarding(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(user, name, picture, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result uninitialized(Uninitialized value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(UnAuthenticated value),
    @required Result onboarding(Onboarding value),
  }) {
    assert(uninitialized != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(onboarding != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result uninitialized(Uninitialized value),
    Result authenticated(Authenticated value),
    Result unauthenticated(UnAuthenticated value),
    Result onboarding(Onboarding value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthState {
  const factory Authenticated(
      UserModel user, String name, String picture, String id) = _$Authenticated;

  UserModel get user;
  String get name;
  String get picture;
  String get id;
  $AuthenticatedCopyWith<Authenticated> get copyWith;
}

abstract class $UnAuthenticatedCopyWith<$Res> {
  factory $UnAuthenticatedCopyWith(
          UnAuthenticated value, $Res Function(UnAuthenticated) then) =
      _$UnAuthenticatedCopyWithImpl<$Res>;
}

class _$UnAuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $UnAuthenticatedCopyWith<$Res> {
  _$UnAuthenticatedCopyWithImpl(
      UnAuthenticated _value, $Res Function(UnAuthenticated) _then)
      : super(_value, (v) => _then(v as UnAuthenticated));

  @override
  UnAuthenticated get _value => super._value as UnAuthenticated;
}

class _$UnAuthenticated implements UnAuthenticated {
  const _$UnAuthenticated();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result uninitialized(),
    @required
        Result authenticated(
            UserModel user, String name, String picture, String id),
    @required Result unauthenticated(),
    @required Result onboarding(),
  }) {
    assert(uninitialized != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(onboarding != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result uninitialized(),
    Result authenticated(
        UserModel user, String name, String picture, String id),
    Result unauthenticated(),
    Result onboarding(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result uninitialized(Uninitialized value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(UnAuthenticated value),
    @required Result onboarding(Onboarding value),
  }) {
    assert(uninitialized != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(onboarding != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result uninitialized(Uninitialized value),
    Result authenticated(Authenticated value),
    Result unauthenticated(UnAuthenticated value),
    Result onboarding(Onboarding value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class UnAuthenticated implements AuthState {
  const factory UnAuthenticated() = _$UnAuthenticated;
}

abstract class $OnboardingCopyWith<$Res> {
  factory $OnboardingCopyWith(
          Onboarding value, $Res Function(Onboarding) then) =
      _$OnboardingCopyWithImpl<$Res>;
}

class _$OnboardingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $OnboardingCopyWith<$Res> {
  _$OnboardingCopyWithImpl(Onboarding _value, $Res Function(Onboarding) _then)
      : super(_value, (v) => _then(v as Onboarding));

  @override
  Onboarding get _value => super._value as Onboarding;
}

class _$Onboarding implements Onboarding {
  const _$Onboarding();

  @override
  String toString() {
    return 'AuthState.onboarding()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Onboarding);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result uninitialized(),
    @required
        Result authenticated(
            UserModel user, String name, String picture, String id),
    @required Result unauthenticated(),
    @required Result onboarding(),
  }) {
    assert(uninitialized != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(onboarding != null);
    return onboarding();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result uninitialized(),
    Result authenticated(
        UserModel user, String name, String picture, String id),
    Result unauthenticated(),
    Result onboarding(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onboarding != null) {
      return onboarding();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result uninitialized(Uninitialized value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(UnAuthenticated value),
    @required Result onboarding(Onboarding value),
  }) {
    assert(uninitialized != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(onboarding != null);
    return onboarding(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result uninitialized(Uninitialized value),
    Result authenticated(Authenticated value),
    Result unauthenticated(UnAuthenticated value),
    Result onboarding(Onboarding value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onboarding != null) {
      return onboarding(this);
    }
    return orElse();
  }
}

abstract class Onboarding implements AuthState {
  const factory Onboarding() = _$Onboarding;
}
