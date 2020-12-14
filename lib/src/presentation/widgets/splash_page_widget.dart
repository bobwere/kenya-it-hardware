import 'package:animation_director/animation_director.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animations/loading_animations.dart';
import 'package:flutter/material.dart';
import 'package:kenya_it_hardware/common/constants/beizer_clippers.dart';

Widget curvesContainer({BuildContext context, double width, double height}) {
  return Container(
    color: Color(0xFFFFF8ED),
    height: height,
    width: width,
  );
}

Widget backGround({BuildContext context}) {
  return Container(
    color: Colors.white,
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
  );
}

Widget bottomCurve({BuildContext context}) {
  return Positioned(
    top: 600.h,
    bottom: -600.h,
    right: -50.h,
    left: 50.h,
    child: ClipPath(
      clipper: BottomBezierClipper(),
      child: curvesContainer(
          context: context,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width),
    ),
  );
}

Widget topCurve({BuildContext context}) {
  return Positioned(
    top: -1,
    left: -1,
    child: ClipPath(
      clipper: TopBezierClipper(),
      child: curvesContainer(
          context: context,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width),
    ),
  );
}

Widget topOvalShape(
    {BuildContext context, int startInMilliseconds, int duration}) {
  return Positioned(
    top: 0,
    left: 0,
    child: ClipPath(
      clipper: OvalBezierClipper(),
      child: curvesContainer(
        context: context,
        height: 100.h,
        width: 100.h,
      ),
    ),
  );
}

ActorWidget logo(
    {BuildContext context, int startInMilliseconds, int duration}) {
  return ActorWidget(name: 'Logo', actions: [
    ActorAction(
        waitBeforeStart: Duration(milliseconds: startInMilliseconds),
        character: ActorCharacter(
          child: Center(
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.cover,
              scale: 1.5,
            ),
          ),
        ),
        scale: ActorScale(startScale: 0, finishScale: 0)),
    ActorAction(
      scale: ActorScale(
          alignment: Alignment.center,
          startScale: 0,
          finishScale: 1,
          curve: Curves.elasticOut,
          duration: Duration(milliseconds: duration)),
    ),
  ]);
}

ActorWidget loadingAnimation(
    {BuildContext context,
    int startInMilliseconds,
    int opacityStartInMilliseconds,
    int duration}) {
  return ActorWidget(name: 'loadinganimation', actions: [
    ActorAction(
      waitBeforeStart: Duration(milliseconds: startInMilliseconds),
      position: ActorPosition(
          top: MediaQuery.of(context).size.height / 2 + 80.h,
          left: MediaQuery.of(context).size.width / 2 - 30.h),
      opacity: ActorOpacity(opacity: 0),
      character: ActorCharacter(
        child: LoadingFlipping.circle(
          backgroundColor: Colors.white,
          borderColor: Color(0xFFED622C),
          borderSize: 3.0,
          size: 55.h,
          duration: Duration(milliseconds: 500),
        ),
      ),
    ),
    ActorAction(
      waitBeforeStart: Duration(milliseconds: opacityStartInMilliseconds),
      opacity: ActorOpacity(
        opacity: 1,
        duration: Duration(milliseconds: duration),
      ),
    ),
  ]);
}

Widget bottomLeftCurve({BuildContext context}) {
  return Positioned(
    bottom: 0,
    left: 0,
    child: ClipPath(
      clipper: BottomLeftBezierClipper(),
      child: curvesContainer(
        context: context,
        height: 100.h,
        width: 100.h,
      ),
    ),
  );
}
