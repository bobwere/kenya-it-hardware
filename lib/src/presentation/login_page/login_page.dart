import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kenya_it_hardware/common/constants/strings.dart';
import 'package:kenya_it_hardware/common/constants/styles.dart';
import 'package:kenya_it_hardware/common/constants/theme.dart';
import 'package:kenya_it_hardware/src/application/auth_cubit/auth_cubit.dart';
import 'package:kenya_it_hardware/src/application/login_cubit/login_cubit.dart';
import 'package:kenya_it_hardware/src/presentation/widgets/button_text_fields_widgets.dart';
import 'package:kenya_it_hardware/src/presentation/widgets/login_page_widget.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import 'package:smart_form/smart_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 480, height: 854, allowFontScaling: true);
    final AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);

    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        return state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              failure.map(
                serverError: (_) {
                  Flushbar(
                    title: 'An Error Occurred',
                    message: SERVER_ERROR_MESSAGE,
                    margin: EdgeInsets.all(20.h),
                    flushbarPosition: FlushbarPosition.TOP,
                    duration: Duration(seconds: 3),
                    isDismissible: true,
                    backgroundColor: Color(0xFFFD9726),
                    borderRadius: 15.h,
                  ).show(context);
                },
                noInternet: (_) {
                  Flushbar(
                    title: 'An Error Occurred',
                    message: NO_INTERNET_MESSAGE,
                    margin: EdgeInsets.all(20.h),
                    flushbarPosition: FlushbarPosition.TOP,
                    duration: Duration(seconds: 3),
                    isDismissible: true,
                    backgroundColor: Color(0xFFFD9726),
                    borderRadius: 15.h,
                  ).show(context);
                },
                userNotFound: (_) {
                  Flushbar(
                    title: 'An Error Occurred',
                    message: 'USER_NOT_FOUND',
                    margin: EdgeInsets.all(20.h),
                    flushbarPosition: FlushbarPosition.TOP,
                    duration: Duration(seconds: 3),
                    isDismissible: true,
                    backgroundColor: Color(0xFFFD9726),
                    borderRadius: 15.h,
                  ).show(context);
                },
                cancelledByUser: (_) {},
                //   formValidation: (_) {}
              );
            },
            (_) {
              Flushbar(
                title: 'Login Successful',
                message: 'Welcome Back',
                margin: EdgeInsets.all(20.h),
                flushbarPosition: FlushbarPosition.TOP,
                duration: Duration(seconds: 3),
                isDismissible: true,
                backgroundColor: Colors.green,
                borderRadius: 15.h,
              ).show(context);
              authCubit.logIn();
              Navigator.pop(context);
              Navigator.of(context).pushNamed(
                '/homepage',
              );
            },
          ),
        );
        if (state.isSubmitting) {
          Flushbar(
            title: 'Attempting to login',
            message: 'Please wait a moment...',
            margin: EdgeInsets.all(20.h),
            flushbarPosition: FlushbarPosition.TOP,
            duration: Duration(seconds: 3),
            isDismissible: true,
            backgroundColor: Colors.green,
            borderRadius: 15.h,
          ).show(context);
        }
      },
      builder: (context, state) {
        return Stack(
          children: [
            LoginBody(state: state),
            SubmittingOverlay(isSubmitting: state.isSubmitting)
          ],
        );
      },
    );
  }
}

class LoginBody extends StatefulWidget {
  LoginBody({Key key, @required this.state}) : super(key: key);
  final LoginState state;

  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final _formKey = GlobalKey<SmartFormState>();
  @override
  Widget build(BuildContext context) {
    final LoginCubit loginCubit = BlocProvider.of<LoginCubit>(context);
    final AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SmartForm(
          key: _formKey,
          autovalidate: widget.state.showErrorMessages,
          child: Column(
            children: [
              SizedBoxResponsive(height: 100),
              ContainerResponsive(
                height: 160,
                padding: EdgeInsetsResponsive.only(left: 20, top: 60),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextResponsive('Welcome', style: kHeaderTextStyle),
                      TextResponsive('Shop with us\nthis festive season',
                          style: kNormalText2Style),
                    ],
                  ),
                ),
              ),

              SizedBoxResponsive(height: 30),
              //Username Input
              CustomField(
                hintText: 'Email',
                validationErrorText: 'Please enter a email address',
                onChanged: (value) {
                  loginCubit.usernameChanged(value);
                },
              ),
              SizedBoxResponsive(height: 30),
              //Password Input
              CustomField(
                hintText: 'Password',
                validationErrorText: 'Please enter a password',
                obscureText: true,
                onChanged: (value) {
                  loginCubit.passwordChanged(value);
                },
              ),

              SizedBoxResponsive(height: 30),
              //Login Button
              CustomButton(
                backGroundColor: colorScheme.primary,
                borderRadius: 10,
                textColor: Colors.white,
                text: 'Login',
                onButtonPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  if (_formKey.currentState.validate()) {
                    loginCubit.signInWithUsernameAndPassword();
                  } else {
                    Flushbar(
                      title: 'Unable to login',
                      message: 'Provide the missing details to proceed',
                      margin: EdgeInsets.all(20.h),
                      flushbarPosition: FlushbarPosition.TOP,
                      duration: Duration(seconds: 3),
                      isDismissible: true,
                      backgroundColor: Color(0xFFFD9726),
                      borderRadius: 15.h,
                    ).show(context);
                  }
                },
              ),

              SizedBoxResponsive(height: 50),
              // BonyezaDivider(),
              BlocBuilder<LoginCubit, LoginState>(
                builder: (context, state) {
                  if (state.isSubmitting) {
                    return Container(
                        height: 50.h,
                        width: 50.h,
                        child: CircularProgressIndicator());
                  } else {
                    return Container(
                      height: 50.h,
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
