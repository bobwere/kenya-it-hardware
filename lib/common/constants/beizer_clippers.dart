import 'package:flutter/material.dart';

class BottomBezierClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 480;
    final double _yScaling = size.height / 854;
    path.lineTo(433.69100000000003 * _xScaling, 0.6730000000000018 * _yScaling);
    path.cubicTo(
      433.69100000000003 * _xScaling,
      0.6730000000000018 * _yScaling,
      433.69100000000003 * _xScaling,
      258.673 * _yScaling,
      433.69100000000003 * _xScaling,
      258.673 * _yScaling,
    );
    path.cubicTo(
      433.69100000000003 * _xScaling,
      258.673 * _yScaling,
      0.6910000000000025 * _xScaling,
      258.673 * _yScaling,
      0.6910000000000025 * _xScaling,
      258.673 * _yScaling,
    );
    path.cubicTo(
      0.6910000000000025 * _xScaling,
      258.673 * _yScaling,
      30.691000000000003 * _xScaling,
      167.673 * _yScaling,
      158.691 * _xScaling,
      198.673 * _yScaling,
    );
    path.cubicTo(
      286.69100000000003 * _xScaling,
      229.673 * _yScaling,
      305.69100000000003 * _xScaling,
      121.673 * _yScaling,
      307.69100000000003 * _xScaling,
      112.673 * _yScaling,
    );
    path.cubicTo(
      309.69100000000003 * _xScaling,
      103.673 * _yScaling,
      329.69100000000003 * _xScaling,
      -4.326999999999998 * _yScaling,
      433.69100000000003 * _xScaling,
      0.6730000000000018 * _yScaling,
    );
    path.cubicTo(
      433.69100000000003 * _xScaling,
      0.6730000000000018 * _yScaling,
      433.69100000000003 * _xScaling,
      0.6730000000000018 * _yScaling,
      433.69100000000003 * _xScaling,
      0.6730000000000018 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class TopBezierClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 480;
    final double _yScaling = size.height / 854;
    path.lineTo(0.5 * _xScaling, 258.90999999999997 * _yScaling);
    path.cubicTo(
      0.5 * _xScaling,
      258.90999999999997 * _yScaling,
      95.167 * _xScaling,
      257.577 * _yScaling,
      116.5 * _xScaling,
      169.57699999999997 * _yScaling,
    );
    path.cubicTo(
      137.833 * _xScaling,
      81.57699999999997 * _yScaling,
      193.833 * _xScaling,
      79.57699999999997 * _yScaling,
      264.5 * _xScaling,
      92.24399999999997 * _yScaling,
    );
    path.cubicTo(
      335.16700000000003 * _xScaling,
      104.91099999999997 * _yScaling,
      393.167 * _xScaling,
      57.576 * _yScaling,
      403.167 * _xScaling,
      1.5759999999999998 * _yScaling,
    );
    path.cubicTo(
      403.833 * _xScaling,
      2.243 * _yScaling,
      0.5 * _xScaling,
      1.5759999999999998 * _yScaling,
      0.5 * _xScaling,
      1.5759999999999998 * _yScaling,
    );
    path.cubicTo(
      0.5 * _xScaling,
      1.5759999999999998 * _yScaling,
      0.5 * _xScaling,
      258.90999999999997 * _yScaling,
      0.5 * _xScaling,
      258.90999999999997 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class BottomLeftBezierClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 480;
    final double _yScaling = size.height / 854;
    path.lineTo(0.5 * _xScaling, 166.37 * _yScaling);
    path.cubicTo(
      0.5 * _xScaling,
      166.37 * _yScaling,
      132.5 * _xScaling,
      130.37 * _yScaling,
      112.5 * _xScaling,
      44.370000000000005 * _yScaling,
    );
    path.cubicTo(
      92.5 * _xScaling,
      -41.629999999999995 * _yScaling,
      0.5 * _xScaling,
      25.370000000000005 * _yScaling,
      0.5 * _xScaling,
      25.370000000000005 * _yScaling,
    );
    path.cubicTo(
      0.5 * _xScaling,
      25.370000000000005 * _yScaling,
      0.5 * _xScaling,
      166.37 * _yScaling,
      0.5 * _xScaling,
      166.37 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class OvalBezierClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 480;
    final double _yScaling = size.height / 854;
    path.lineTo(5.192999999999998 * _xScaling, 76.334 * _yScaling);
    path.cubicTo(
      11.86 * _xScaling,
      89.001 * _yScaling,
      29.192999999999998 * _xScaling,
      102.001 * _yScaling,
      71.526 * _xScaling,
      76.334 * _yScaling,
    );
    path.cubicTo(
      113.859 * _xScaling,
      50.667 * _yScaling,
      103.526 * _xScaling,
      24.001000000000005 * _yScaling,
      99.526 * _xScaling,
      16.334000000000003 * _yScaling,
    );
    path.cubicTo(
      95.526 * _xScaling,
      8.667000000000002 * _yScaling,
      76.193 * _xScaling,
      -12.665999999999997 * _yScaling,
      34.525999999999996 * _xScaling,
      12.334000000000003 * _yScaling,
    );
    path.cubicTo(
      -7.141000000000005 * _xScaling,
      37.334 * _yScaling,
      -1.4740000000000038 * _xScaling,
      63.667 * _yScaling,
      5.192999999999998 * _xScaling,
      76.334 * _yScaling,
    );
    path.cubicTo(
      5.192999999999998 * _xScaling,
      76.334 * _yScaling,
      5.192999999999998 * _xScaling,
      76.334 * _yScaling,
      5.192999999999998 * _xScaling,
      76.334 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
