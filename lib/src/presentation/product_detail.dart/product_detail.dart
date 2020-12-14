import 'package:cached_network_image/cached_network_image.dart';
import 'package:dart_random_choice/dart_random_choice.dart';
import 'package:division/division.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:kenya_it_hardware/common/constants/styles.dart';
import 'package:kenya_it_hardware/common/constants/theme.dart';
import 'package:kenya_it_hardware/src/data/store/store_model.dart';
import 'package:kenya_it_hardware/src/presentation/widgets/categories_product_horizontal_widget.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({Key key, @required this.product}) : super(key: key);
  final Product product;
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int _current = 0;
  bool _isExpanded = false;

  void _expand() {
    setState(() {
      _isExpanded ? _isExpanded = false : _isExpanded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 480, height: 854, allowFontScaling: true);
    final String imageURL = widget.product.picture;
    final String hash = randomChoice<String>(hashOptions);

    return Scaffold(
      appBar: AppBar(
        title: TextResponsive(
          'Product',
          style: TextStyle(fontSize: 25, fontFamily: 'Avenir'),
        ),
        centerTitle: true,
        elevation: 3,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.35,
                child: CachedNetworkImage(
                  width: double.infinity,
                  imageUrl: imageURL,
                  fadeOutDuration: const Duration(milliseconds: 200),
                  fadeInDuration: const Duration(milliseconds: 200),
                  placeholder: (context, url) => BlurHash(
                    hash: hash,
                    imageFit: BoxFit.contain,
                  ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Align(
              alignment: Alignment.centerLeft,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width / 2),
                child: TextResponsive(
                  widget.product.name,
                  style: TextStyle(
                      color: Colors.black87,
                      fontFamily: 'Avenir',
                      fontSize: 23,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Align(
              alignment: Alignment.centerLeft,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width / 2),
                child: TextResponsive(
                  "Ksh. ${widget.product.price.toString()}",
                  style: TextStyle(
                      color: Colors.black54,
                      fontFamily: 'Avenir',
                      fontSize: 23,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsets.only(left: 20.h, right: 20.h),
            child: Align(
              alignment: Alignment.centerLeft,
              child: AnimatedCrossFade(
                firstChild: TextResponsive(
                  widget.product.description,
                  maxLines: 2,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black87,
                      fontFamily: 'Avenir',
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                secondChild: TextResponsive(
                  widget.product.description,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black87,
                      fontFamily: 'Avenir',
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                crossFadeState: _isExpanded
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                duration: kThemeAnimationDuration,
              ),
            ),
          ),
          GestureDetector(
            onTap: _expand,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h, bottom: 20.h, right: 30.h),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextResponsive(
                  _isExpanded ? "Less" : "Read More...",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: colorScheme.primary,
                      fontFamily: 'Avenir',
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100.h,
          ),
          Padding(
            padding: EdgeInsets.all(20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //Make A Call Button
                Parent(
                  gesture: Gestures()
                    ..onTap(() {
                      Flushbar(
                        title: 'Service unavailable currently',
                        message:
                            "Our Engineers are at work implementing this feature stick around",
                        margin: EdgeInsets.all(20.h),
                        flushbarPosition: FlushbarPosition.TOP,
                        duration: Duration(seconds: 3),
                        isDismissible: true,
                        backgroundColor: Color(0xFFFD9726),
                        borderRadius: 15.h,
                      ).show(context);
                    }),
                  style: kProjectDetailCallButton2Style,
                  child: Container(
                    child: Center(
                      child: Text('Order Now',
                          style: kProjectDetailCallText2Style),
                    ),
                  ),
                ),
                //Make A Call Button
                Parent(
                  gesture: Gestures()
                    ..onTap(() {
                      Flushbar(
                        title: 'Service unavailable currently',
                        message:
                            "Our Engineers are at work implementing this feature stick around",
                        margin: EdgeInsets.all(20.h),
                        flushbarPosition: FlushbarPosition.TOP,
                        duration: Duration(seconds: 3),
                        isDismissible: true,
                        backgroundColor: Color(0xFFFD9726),
                        borderRadius: 15.h,
                      ).show(context);
                    }),
                  style: kProjectDetailCallButtonStyle,
                  child: Container(
                    child: Center(
                        child: Text('Add To Cart',
                            style: kProjectDetailCallTextStyle)),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
