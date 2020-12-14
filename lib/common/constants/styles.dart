import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:kenya_it_hardware/common/constants/theme.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

final kHeaderTextStyle = TextStyle(
    color: colorScheme.primary,
    fontFamily: 'Avenir',
    fontSize: 33,
    fontWeight: FontWeight.w800);

final kHeaderText2Style = TextStyle(
    color: colorScheme.primary,
    fontFamily: 'Avenir',
    fontSize: 25,
    fontWeight: FontWeight.w800);

final kHeaderText3Style = TextStyle(
    color: Colors.black87,
    fontFamily: 'Avenir',
    fontSize: 25,
    fontWeight: FontWeight.w800);

final kHeaderText5Style = TextStyle(
    color: Colors.black87,
    fontFamily: 'Avenir',
    fontSize: 21,
    fontWeight: FontWeight.w400);

final kHeaderText4Style = TextStyle(
    color: Colors.grey,
    fontFamily: 'Avenir',
    fontSize: 23,
    fontWeight: FontWeight.w800);

final kHeaderText6Style = TextStyle(
    color: colorScheme.primary,
    fontFamily: 'Avenir',
    fontSize: 23,
    fontWeight: FontWeight.w800);

final kNormalTextStyle = TextStyle(
    color: Colors.black87,
    fontFamily: 'Avenir',
    fontSize: 21,
    fontWeight: FontWeight.w400);

final kNormalText3Style = TextStyle(
    color: colorScheme.primary,
    fontFamily: 'Avenir',
    fontSize: 21,
    fontWeight: FontWeight.w400);

final kNormalText4Style = TextStyle(
    color: Colors.grey,
    fontFamily: 'Avenir',
    fontSize: 21,
    fontWeight: FontWeight.w400);

final kNormalText2Style = TextStyle(
    color: Colors.black87,
    fontFamily: 'Avenir',
    fontSize: 21,
    fontWeight: FontWeight.w500);

final kProductCardStyle = ParentStyle()
  ..background.color(Colors.white)
  ..height(315.h)
  ..width(210.w)
  ..borderRadius(all: 15.h)
  ..margin(bottom: 15.h, right: 12.5.h)
  ..alignment.centerLeft()
  ..boxShadow(
    color: Colors.grey.shade300,
    offset: Offset(0.h, 3.5.h),
    blur: 3.5.h,
  );

final kProjectDetailCallButtonStyle = ParentStyle()
  ..height(70.h)
  ..ripple(true)
  ..width(210.h)
  ..borderRadius(all: 15.h)
  ..boxShadow(
    color: Colors.grey.shade200,
    offset: Offset(0.h, 3.5.h),
    blur: 3.5.h,
  )
  ..background.color(colorScheme.primary);

final kProjectDetailCallButton2Style = ParentStyle()
  ..height(70.h)
  ..ripple(true)
  ..width(210.h)
  ..borderRadius(all: 15.h)
  ..boxShadow(
    color: Colors.grey.shade200,
    offset: Offset(0.h, 3.5.h),
    blur: 3.5.h,
  )
  ..background.color(Colors.white);

final kProjectDetailCallTextStyle = TextStyle(
    color: Colors.white,
    fontFamily: 'Avenir',
    fontSize: 21,
    fontWeight: FontWeight.w400);

final kProjectDetailCallText2Style = TextStyle(
    color: colorScheme.primary,
    fontFamily: 'Avenir',
    fontSize: 21,
    fontWeight: FontWeight.w400);

final kCategoryCardStyle = ParentStyle()
  ..background.color(Colors.white)
  ..height(210.h)
  ..width(210.h)
  ..borderRadius(all: 15.h)
  ..margin(bottom: 15.h, right: 12.5.h)
  ..alignment.centerLeft()
  ..boxShadow(
    color: Colors.grey.shade300,
    offset: Offset(0.h, 3.5.h),
    blur: 3.5.h,
  );

final kCategoryNameStyle = TextStyle(
    color: Colors.black87,
    fontFamily: 'Avenir',
    fontSize: 22,
    fontWeight: FontWeight.w500);
