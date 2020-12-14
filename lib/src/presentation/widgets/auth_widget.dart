import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kenya_it_hardware/src/application/auth_cubit/auth_cubit.dart';
import 'package:kenya_it_hardware/src/presentation/home_page.dart/home_page.dart';
import 'package:kenya_it_hardware/src/presentation/login_page/login_page.dart';
import 'package:kenya_it_hardware/src/presentation/onboarding_page/onboarding_page.dart';
import 'package:kenya_it_hardware/src/presentation/splash_page/splash_page.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: 854,
      width: 480,
      allowFontScaling: false,
    );

    return ResponsiveWidgets.builder(
      height: 854,
      width: 480,
      allowFontScaling: false,
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          return state.map(
            uninitialized: (_) {
              return SplashPage();
            },
            authenticated: (state) {
              return Homepage();
            },
            unauthenticated: (_) {
              return LoginPage();
            },
            onboarding: (_) {
              return OnboardingPage();
            },
          );
        },
      ),
    );
  }
}
