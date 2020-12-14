import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kenya_it_hardware/src/data/store/store_model.dart';
import 'package:kenya_it_hardware/src/presentation/widgets/categories_product_horizontal_widget.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class ListOfProductsPageArguments {
  const ListOfProductsPageArguments(
      {@required this.products, @required this.title});

  final List<Product> products;
  final String title;
}

class ListOfProductsPage extends StatefulWidget {
  const ListOfProductsPage(
      {Key key, @required this.listOfProductsPageArguments})
      : super(key: key);

  final ListOfProductsPageArguments listOfProductsPageArguments;

  @override
  _ListOfProductsPageState createState() => _ListOfProductsPageState();
}

class _ListOfProductsPageState extends State<ListOfProductsPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 480, height: 854, allowFontScaling: true);
    final list = widget.listOfProductsPageArguments.products;
    List<Widget> gridListItems = list
        .map((e) => ProductCard(
              product: e,
            ))
        .toList();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(72.h),
        child: AppBar(
          title: TextResponsive(
            widget.listOfProductsPageArguments.title,
            style: TextStyle(fontSize: 25, fontFamily: 'Avenir'),
          ),
          centerTitle: true,
          elevation: 3,
        ),
      ),
      body: GridView.count(
        childAspectRatio: 210 / 315,
        crossAxisCount: 2,
        padding: EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: <Widget>[
          ...gridListItems,
        ],
      ),
    );
  }
}
