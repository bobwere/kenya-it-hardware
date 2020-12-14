import 'package:flutter/material.dart';
import 'package:kenya_it_hardware/src/data/store/store_model.dart';
import 'package:kenya_it_hardware/src/presentation/orders_by_client/order_detail.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class ListOfOrdersArguments {
  const ListOfOrdersArguments({@required this.storeModel, @required this.id});

  final StoreModel storeModel;
  final int id;
}

class ListOfOrders extends StatefulWidget {
  const ListOfOrders({Key key, @required this.listOfOrdersArguments})
      : super(key: key);

  final ListOfOrdersArguments listOfOrdersArguments;

  @override
  _ListOfOrdersState createState() => _ListOfOrdersState();
}

class _ListOfOrdersState extends State<ListOfOrders> {
  var id;
  List<Order> ordersList = [];
  @override
  void initState() {
    id = widget.listOfOrdersArguments.id;
    ordersList = widget.listOfOrdersArguments.storeModel.orders
        .where((element) => element.userId == id)
        .toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 480, height: 854, allowFontScaling: true);

    return Scaffold(
      appBar: AppBar(
        title: TextResponsive(
          'My Orders',
          style: TextStyle(fontSize: 25, fontFamily: 'Avenir'),
        ),
        centerTitle: true,
        elevation: 3,
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: ordersList.length,
          itemBuilder: (context, index) {
            final order = ordersList[index];
            final products = widget.listOfOrdersArguments.storeModel.products
                .where((element) => element.id == order.productId)
                .toList();
            var productName = products[0].name;

            final branches = widget
                .listOfOrdersArguments.storeModel.company.branches
                .where((element) => element.id == order.branchId)
                .toList();
            var branchName = branches[0].city;
            var myOrderDetailArguments = MyOrderDetailArguments(
              branchId: branchName,
              date: order.date,
              productId: productName,
              quantity: order.quantity.toString(),
              status: order.status,
            );
            return ListTile(
              title: TextResponsive(
                productName.toString(),
                style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Avenir',
                    fontSize: 21,
                    fontWeight: FontWeight.w500),
              ),
              subtitle: TextResponsive(
                order.status,
                style: TextStyle(
                    color: Colors.black54,
                    fontFamily: 'Avenir',
                    fontSize: 21,
                    fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/orderdetail',
                    arguments: myOrderDetailArguments);
              },
            );
          }),
    );
  }
}
