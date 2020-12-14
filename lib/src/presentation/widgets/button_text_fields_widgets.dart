import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key key,
    this.backGroundColor,
    this.textColor,
    this.text,
    this.elevation = 2,
    this.highlightElevation = 2,
    this.width,
    this.onButtonPressed,
    this.height = 65.0,
    this.margin = 20,
    this.borderRadius = 10.0,
  }) : super(key: key);

  final Color backGroundColor;
  final Color textColor;
  final String text;
  final Function onButtonPressed;
  final double margin;
  final double elevation;
  final double highlightElevation;
  final double height;
  final double width;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return ContainerResponsive(
      padding: EdgeInsetsResponsive.symmetric(horizontal: margin),
      widthResponsive: false,
      width: width ?? MediaQuery.of(context).size.width,
      height: height,
      child: RaisedButtonResponsive(
        elevation: elevation,
        highlightElevation: highlightElevation,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
        child: TextResponsive(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 22,
            //  fontFamily: 'Avenir',
            fontWeight: FontWeight.w500,
          ),
        ),
        color: backGroundColor,
        onPressed: onButtonPressed,
      ),
    );
  }
}
