import 'package:animation_director/animation_director.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:kenya_it_hardware/src/presentation/widgets/splash_page_widget.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  String group;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 480, height: 854, allowFontScaling: false);

    //Enable app to be responsive to different screen resolutions initialised only once at the root page of the app *splashpage*
    ResponsiveWidgets.init(
      context,
      height: 480, //base height itel A33
      width: 854, //base width  itel A33
      allowFontScaling: false,
    );

    return Scaffold(
      body: Center(
        child: AnimationDirector(
          repeatTimes: 1,
          speed: 2,
          autoStart: true,
          onCompleted: (int repeated, Duration runtime) {
            print("FINISHED - REPEATED $repeated in ${runtime.inMilliseconds}");
          },
          cast: <ActorWidget>[
            logo(context: context, startInMilliseconds: 600, duration: 1500),
          ],
        ),
      ),
    );
  }
}
