import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kenya_it_hardware/common/constants/strings.dart';
import 'package:kenya_it_hardware/common/constants/theme.dart';
import 'package:kenya_it_hardware/common/routes/route.dart';
import 'package:kenya_it_hardware/injection_container.dart';
import 'package:kenya_it_hardware/src/application/auth_cubit/auth_cubit.dart';
import 'package:kenya_it_hardware/src/application/login_cubit/login_cubit.dart';
import 'package:kenya_it_hardware/src/application/store_cubit/store_cubit.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          currentFocus.focusedChild.unfocus();
        }
      },
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthCubit>(create: (_) => sl<AuthCubit>()..appStarted()),
          BlocProvider<StoreCubit>(create: (_) => sl<StoreCubit>()..getStore()),
          BlocProvider<LoginCubit>(create: (_) => sl<LoginCubit>()),
        ],
        child: MaterialApp(
          title: NAME_OF_APP,
          debugShowCheckedModeBanner: false,
          theme: kenyaItHardwareTheme,
          initialRoute: '/',
          onGenerateRoute: RouteCatalog.generateRoute,
        ),
      ),
    );
  }
}
