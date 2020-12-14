// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'src/application/auth_cubit/auth_cubit.dart';
import 'common/configs/firebase_injectable_module.dart';
import 'src/data/auth/firebase_user_mapper.dart';
import 'src/data/auth/auth_repository.dart';
import 'src/data/store/store_repository.dart';
import 'src/application/login_cubit/login_cubit.dart';
import 'src/application/store_cubit/store_cubit.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<FirebaseUserMapper>(() => FirebaseUserMapper());
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<IStoreFacade>(() => StoreFacade());
  final sharedPreferences = await firebaseInjectableModule.pref;
  gh.factory<SharedPreferences>(() => sharedPreferences);
  gh.factory<StoreCubit>(() => StoreCubit(get<IStoreFacade>()));
  gh.lazySingleton<IAuthFacade>(() => FirebaseAuthFacade(
        get<FirebaseAuth>(),
        get<GoogleSignIn>(),
        get<FirebaseUserMapper>(),
        get<FirebaseFirestore>(),
        get<SharedPreferences>(),
      ));
  gh.factory<LoginCubit>(() => LoginCubit(get<IAuthFacade>()));
  gh.factory<AuthCubit>(
      () => AuthCubit(get<IAuthFacade>(), get<SharedPreferences>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
