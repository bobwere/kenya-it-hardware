import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kenya_it_hardware/common/constants/strings.dart';
import 'package:kenya_it_hardware/common/constants/styles.dart';
import 'package:kenya_it_hardware/common/constants/theme.dart';
import 'package:kenya_it_hardware/src/application/auth_cubit/auth_cubit.dart';
import 'package:kenya_it_hardware/src/presentation/widgets/button_text_fields_widgets.dart';
import 'package:page_view_indicators/page_view_indicators.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final _currentPageNotifier = ValueNotifier<int>(0);
  Uint8List imageData;

  final controller = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    onboardinPageIsSeen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 480, height: 854, allowFontScaling: true);

    return Scaffold(
      body: _buildBody(context),
    );
  }

  _buildPageOne(context) {
    AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
    return Column(
      children: [
        SizedBoxResponsive(
          height: 20,
        ),
        ContainerResponsive(
          height: 80,
          padding: EdgeInsetsResponsive.only(top: 20, right: 0),
          child: Align(
            alignment: Alignment.centerRight,
            child: CustomButton(
              backGroundColor: Colors.white,
              width: 100,
              elevation: 0,
              highlightElevation: 0,
              onButtonPressed: () {
                authCubit.logOut();
              },
              text: 'SKIP',
              textColor: colorScheme.primary,
            ),
          ),
        ),
        ContainerResponsive(
          height: 450,
          width: double.infinity,
          child: Image.asset('assets/images/one_onboarding.png',
              fit: BoxFit.cover),
        ),
        TextResponsive('Welcome to\nKenya IT Hardware',
            textAlign: TextAlign.center, style: kHeaderTextStyle),
        SizedBoxResponsive(
          height: 20,
        ),
        Padding(
          padding: EdgeInsetsResponsive.symmetric(horizontal: 20),
          child: TextResponsive(
              'Find the best electronics that meet your needs at a friendly price',
              textAlign: TextAlign.center,
              style: kNormalTextStyle),
        ),
      ],
    );
  }

  _buildPageTwo(context) {
    AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
    return Column(
      children: [
        SizedBoxResponsive(
          height: 20,
        ),
        ContainerResponsive(
          height: 80,
          padding: EdgeInsetsResponsive.only(right: 0),
          child: Align(
            alignment: Alignment.centerRight,
            child: CustomButton(
              backGroundColor: Colors.white,
              width: 100,
              elevation: 0,
              highlightElevation: 0,
              onButtonPressed: () {
                authCubit.logOut();
              },
              text: 'SKIP',
              textColor: colorScheme.primary,
            ),
          ),
        ),
        ContainerResponsive(
          height: 450,
          width: double.infinity,
          child: Image.asset('assets/images/two_onboarding.png',
              fit: BoxFit.cover),
        ),
        TextResponsive('Add to Cart',
            textAlign: TextAlign.center, style: kHeaderTextStyle),
        SizedBoxResponsive(
          height: 20,
        ),
        Padding(
          padding: EdgeInsetsResponsive.symmetric(horizontal: 20),
          child: TextResponsive(
              'Choose the product of your choice and put it into the shopping cart',
              textAlign: TextAlign.center,
              style: kNormalTextStyle),
        ),
      ],
    );
  }

  _buildPageThree(context) {
    AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
    return Column(
      children: [
        SizedBoxResponsive(
          height: 20,
        ),
        ContainerResponsive(
          height: 80,
          padding: EdgeInsetsResponsive.only(right: 0),
          child: Align(
            alignment: Alignment.centerRight,
            child: CustomButton(
              backGroundColor: Colors.white,
              width: 100,
              elevation: 0,
              highlightElevation: 0,
              onButtonPressed: () {
                authCubit.logOut();
              },
              text: 'SKIP',
              textColor: colorScheme.primary,
            ),
          ),
        ),
        ContainerResponsive(
          height: 450,
          width: double.infinity,
          child: Image.asset('assets/images/three_onboarding.png',
              fit: BoxFit.cover),
        ),
        TextResponsive('Confirm Order',
            textAlign: TextAlign.center, style: kHeaderTextStyle),
        SizedBoxResponsive(
          height: 20,
        ),
        Padding(
          padding: EdgeInsetsResponsive.symmetric(horizontal: 20),
          child: TextResponsive(
              'Enter shipping information to place your order and wait for delivery.(Pay on Delivery)',
              textAlign: TextAlign.center,
              style: kNormalTextStyle),
        ),
        SizedBoxResponsive(
          height: 20,
        ),
        CustomButton(
            onButtonPressed: () {
              authCubit.logOut();
            },
            text: 'EXPLORE STORE',
            backGroundColor: colorScheme.primary,
            textColor: Colors.white)
      ],
    );
  }

  _buildBody(context) {
    return Stack(
      children: <Widget>[
        _buildPageView(context),
        _buildCircleIndicator(),
      ],
    );
  }

  _buildPageView(context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      child: PageView(
          controller: controller,
          onPageChanged: (int index) {
            _currentPageNotifier.value = index;
          },
          scrollDirection: Axis.horizontal,
          children: [
            _buildPageOne(context),
            _buildPageTwo(context),
            _buildPageThree(context)
          ]),
    );
  }

  _buildCircleIndicator() {
    return Positioned(
      left: 0.0,
      right: 0.0,
      bottom: 50.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CirclePageIndicator(
          itemCount: 3,
          selectedDotColor: colorScheme.primary,
          dotColor: Colors.grey,
          currentPageNotifier: _currentPageNotifier,
        ),
      ),
    );
  }

  void onboardinPageIsSeen() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(ONBOARDING_PAGE_SEEN, true);
  }
}
