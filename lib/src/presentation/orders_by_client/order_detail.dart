import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class MyOrderDetailArguments {
  const MyOrderDetailArguments(
      {@required this.branchId,
      @required this.date,
      @required this.productId,
      @required this.quantity,
      @required this.status});

  final String productId;
  final String status;
  final String quantity;
  final String date;
  final String branchId;
}

class OrderDetail extends StatelessWidget {
  const OrderDetail({Key key, @required this.myOrderDetailArguments})
      : super(key: key);

  final MyOrderDetailArguments myOrderDetailArguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextResponsive(
          'Orders Details',
          style: TextStyle(fontSize: 25, fontFamily: 'Avenir'),
        ),
        centerTitle: true,
        elevation: 3,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding:
                EdgeInsetsResponsive.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextResponsive('Product', style: textStyle),
                TextResponsive(myOrderDetailArguments.productId,
                    style: textStyle),
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsetsResponsive.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextResponsive('Status', style: textStyle),
                TextResponsive(myOrderDetailArguments.status, style: textStyle),
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsetsResponsive.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextResponsive('Quantity', style: textStyle),
                TextResponsive(myOrderDetailArguments.quantity,
                    style: textStyle),
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsetsResponsive.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextResponsive('Date', style: textStyle),
                TextResponsive(myOrderDetailArguments.date, style: textStyle),
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsetsResponsive.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextResponsive('Branch', style: textStyle),
                TextResponsive(myOrderDetailArguments.branchId,
                    style: textStyle),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

final textStyle = TextStyle(
    color: Colors.black54,
    fontFamily: 'Avenir',
    fontSize: 21,
    fontWeight: FontWeight.w500);
