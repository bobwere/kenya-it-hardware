import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kenya_it_hardware/common/constants/strings.dart';
import 'package:kenya_it_hardware/common/constants/styles.dart';
import 'package:kenya_it_hardware/src/application/store_cubit/store_cubit.dart';
import 'package:kenya_it_hardware/src/data/store/store_model.dart';
import 'package:kenya_it_hardware/src/presentation/list_of_products_from_select_categorys/list_of_products.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class ListOfCategoriesPage extends StatefulWidget {
  const ListOfCategoriesPage({Key key}) : super(key: key);

  @override
  _ListOfCategoriesPageState createState() => _ListOfCategoriesPageState();
}

class _ListOfCategoriesPageState extends State<ListOfCategoriesPage> {
  @override
  Widget build(BuildContext context) {
    final list = kCategories;
    List<Widget> gridListItems;

    return BlocBuilder<StoreCubit, StoreState>(
      builder: (context, state) {
        return state.maybeMap(success: (state) {
          gridListItems = list
              .map((e) => gridItems(context, e[0], e[1], state.store))
              .toList();
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(72.h),
              child: AppBar(
                title: TextResponsive(
                  'Categories',
                  style: TextStyle(fontSize: 25, fontFamily: 'Avenir'),
                ),
                centerTitle: true,
                elevation: 3,
              ),
            ),
            body: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(10),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: <Widget>[
                ...gridListItems,
              ],
            ),
          );
        }, orElse: () {
          gridListItems =
              list.map((e) => gridItems(context, e[0], e[1], null)).toList();
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(72.h),
              child: AppBar(
                title: TextResponsive(
                  'Categories',
                  style: TextStyle(fontSize: 25, fontFamily: 'Avenir'),
                ),
                centerTitle: true,
                elevation: 3,
              ),
            ),
            body: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(10),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: <Widget>[
                ...gridListItems,
              ],
            ),
          );
        });
      },
    );
  }

  Widget gridItems(
      BuildContext context, String name, String image, StoreModel model) {
    var filterAginst;

    var lisofproducts;
    if (name == "Accessories") {
      filterAginst = 1;
    } else if (name == "Harddrives") {
      filterAginst = 2;
    } else if (name == "CPUs") {
      filterAginst = 3;
    }

    if (model != null) {
      lisofproducts = model.products
          .where((element) => element.categoryId == filterAginst)
          .toList();
    }

    var listOfProductsPageArguments =
        ListOfProductsPageArguments(products: lisofproducts, title: name);

    return Parent(
      gesture: Gestures()
        ..onTap(() {
          if (filterAginst != null) {
            Navigator.of(context).pushNamed('/listofproductspage',
                arguments: listOfProductsPageArguments);
          }
        }),
      style: kCategoryCardStyle,
      child: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            padding: EdgeInsets.all(20.h),
            height: 140.h,
            width: 210.h,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15.h)),
              child: Image.asset(
                'assets/images/categoryicons/$image',
                fit: BoxFit.contain,
              ),
            ),
          ),
          TextResponsive(name, style: kCategoryNameStyle),
        ]),
      ),
    );
  }
}
