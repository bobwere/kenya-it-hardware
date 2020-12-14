// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

// ignore: unused_element
  ServerError serverError() {
    return const ServerError();
  }

// ignore: unused_element
  CancelledByUser cancelledByUser() {
    return const CancelledByUser();
  }

// ignore: unused_element
  NoInternet noInternet() {
    return const NoInternet();
  }

// ignore: unused_element
  UserNotFound userNotFound() {
    return const UserNotFound();
  }
}

// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

mixin _$AuthFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result cancelledByUser(),
    @required Result noInternet(),
    @required Result userNotFound(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result cancelledByUser(),
    Result noInternet(),
    Result userNotFound(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result cancelledByUser(CancelledByUser value),
    @required Result noInternet(NoInternet value),
    @required Result userNotFound(UserNotFound value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result cancelledByUser(CancelledByUser value),
    Result noInternet(NoInternet value),
    Result userNotFound(UserNotFound value),
    @required Result orElse(),
  });
}

abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result cancelledByUser(),
    @required Result noInternet(),
    @required Result userNotFound(),
  }) {
    assert(serverError != null);
    assert(cancelledByUser != null);
    assert(noInternet != null);
    assert(userNotFound != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result cancelledByUser(),
    Result noInternet(),
    Result userNotFound(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result cancelledByUser(CancelledByUser value),
    @required Result noInternet(NoInternet value),
    @required Result userNotFound(UserNotFound value),
  }) {
    assert(serverError != null);
    assert(cancelledByUser != null);
    assert(noInternet != null);
    assert(userNotFound != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result cancelledByUser(CancelledByUser value),
    Result noInternet(NoInternet value),
    Result userNotFound(UserNotFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

abstract class $CancelledByUserCopyWith<$Res> {
  factory $CancelledByUserCopyWith(
          CancelledByUser value, $Res Function(CancelledByUser) then) =
      _$CancelledByUserCopyWithImpl<$Res>;
}

class _$CancelledByUserCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $CancelledByUserCopyWith<$Res> {
  _$CancelledByUserCopyWithImpl(
      CancelledByUser _value, $Res Function(CancelledByUser) _then)
      : super(_value, (v) => _then(v as CancelledByUser));

  @override
  CancelledByUser get _value => super._value as CancelledByUser;
}

class _$CancelledByUser implements CancelledByUser {
  const _$CancelledByUser();

  @override
  String toString() {
    return 'AuthFailure.cancelledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result cancelledByUser(),
    @required Result noInternet(),
    @required Result userNotFound(),
  }) {
    assert(serverError != null);
    assert(cancelledByUser != null);
    assert(noInternet != null);
    assert(userNotFound != null);
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result cancelledByUser(),
    Result noInternet(),
    Result userNotFound(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result cancelledByUser(CancelledByUser value),
    @required Result noInternet(NoInternet value),
    @required Result userNotFound(UserNotFound value),
  }) {
    assert(serverError != null);
    assert(cancelledByUser != null);
    assert(noInternet != null);
    assert(userNotFound != null);
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result cancelledByUser(CancelledByUser value),
    Result noInternet(NoInternet value),
    Result userNotFound(UserNotFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser implements AuthFailure {
  const factory CancelledByUser() = _$CancelledByUser;
}

abstract class $NoInternetCopyWith<$Res> {
  factory $NoInternetCopyWith(
          NoInternet value, $Res Function(NoInternet) then) =
      _$NoInternetCopyWithImpl<$Res>;
}

class _$NoInternetCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $NoInternetCopyWith<$Res> {
  _$NoInternetCopyWithImpl(NoInternet _value, $Res Function(NoInternet) _then)
      : super(_value, (v) => _then(v as NoInternet));

  @override
  NoInternet get _value => super._value as NoInternet;
}

class _$NoInternet implements NoInternet {
  const _$NoInternet();

  @override
  String toString() {
    return 'AuthFailure.noInternet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoInternet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result cancelledByUser(),
    @required Result noInternet(),
    @required Result userNotFound(),
  }) {
    assert(serverError != null);
    assert(cancelledByUser != null);
    assert(noInternet != null);
    assert(userNotFound != null);
    return noInternet();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result cancelledByUser(),
    Result noInternet(),
    Result userNotFound(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result cancelledByUser(CancelledByUser value),
    @required Result noInternet(NoInternet value),
    @required Result userNotFound(UserNotFound value),
  }) {
    assert(serverError != null);
    assert(cancelledByUser != null);
    assert(noInternet != null);
    assert(userNotFound != null);
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result cancelledByUser(CancelledByUser value),
    Result noInternet(NoInternet value),
    Result userNotFound(UserNotFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class NoInternet implements AuthFailure {
  const factory NoInternet() = _$NoInternet;
}

abstract class $UserNotFoundCopyWith<$Res> {
  factory $UserNotFoundCopyWith(
          UserNotFound value, $Res Function(UserNotFound) then) =
      _$UserNotFoundCopyWithImpl<$Res>;
}

class _$UserNotFoundCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $UserNotFoundCopyWith<$Res> {
  _$UserNotFoundCopyWithImpl(
      UserNotFound _value, $Res Function(UserNotFound) _then)
      : super(_value, (v) => _then(v as UserNotFound));

  @override
  UserNotFound get _value => super._value as UserNotFound;
}

class _$UserNotFound implements UserNotFound {
  const _$UserNotFound();

  @override
  String toString() {
    return 'AuthFailure.userNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result cancelledByUser(),
    @required Result noInternet(),
    @required Result userNotFound(),
  }) {
    assert(serverError != null);
    assert(cancelledByUser != null);
    assert(noInternet != null);
    assert(userNotFound != null);
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result cancelledByUser(),
    Result noInternet(),
    Result userNotFound(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result cancelledByUser(CancelledByUser value),
    @required Result noInternet(NoInternet value),
    @required Result userNotFound(UserNotFound value),
  }) {
    assert(serverError != null);
    assert(cancelledByUser != null);
    assert(noInternet != null);
    assert(userNotFound != null);
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result cancelledByUser(CancelledByUser value),
    Result noInternet(NoInternet value),
    Result userNotFound(UserNotFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class UserNotFound implements AuthFailure {
  const factory UserNotFound() = _$UserNotFound;
}
