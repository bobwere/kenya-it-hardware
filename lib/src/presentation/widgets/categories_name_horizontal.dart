import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kenya_it_hardware/common/constants/styles.dart';
import 'package:kenya_it_hardware/src/application/store_cubit/store_cubit.dart';
import 'package:kenya_it_hardware/src/data/store/store_model.dart';
import 'package:kenya_it_hardware/src/presentation/list_of_products_from_select_categorys/list_of_products.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class CategoryNameHorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreCubit, StoreState>(
      builder: (context, state) {
        return state.maybeMap(success: (state) {
          return Column(
            children: <Widget>[
              //Name and See All Text
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 0.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    TextResponsive('Categories', style: kHeaderText3Style), //
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          '/listOfcategoriespage',
                        );
                      },
                      child: Padding(
                        padding: EdgeInsetsResponsive.all(10),
                        child: TextResponsive(
                          'See all',
                          style: kHeaderText6Style,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 65.h,
                child: ListView(
                  padding: EdgeInsets.only(left: 20.h),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    for (var categoryName in categories)
                      categoryChip(categoryName, state.store)
                  ],
                ),
              ),
            ],
          );
        }, orElse: () {
          return Column(
            children: <Widget>[
              //Name and See All Text
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 0.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    TextResponsive('Categories', style: kHeaderText3Style), //
                    TextResponsive(
                      'See all',
                      style: kHeaderText6Style,
                    ),
                  ],
                ),
              ),
              Container(
                height: 65.h,
                child: ListView(
                  padding: EdgeInsets.only(left: 20.h),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    for (var categoryName in categories)
                      categoryChip(categoryName, null)
                  ],
                ),
              ),
            ],
          );
        });
      },
    );
  }
}

const categories = ["Accessories", "Hardrives", "CPUs"];

Widget categoryChip(String name, StoreModel model) {
  var filterAginst;

  var lisofproducts;
  if (name == "Accessories") {
    filterAginst = 1;
  } else if (name == "Hardrives") {
    filterAginst = 2;
  } else if (name == "CPUs") {
    filterAginst = 3;
  }

  if (model != null) {
    lisofproducts = model.products
        .where((element) => element.categoryId == filterAginst)
        .toList();
  }

  return Builder(
    builder: (context) {
      var listOfProductsPageArguments =
          ListOfProductsPageArguments(products: lisofproducts, title: name);
      return GestureDetector(
        onTap: () {
          if (filterAginst != null) {
            Navigator.of(context).pushNamed('/listofproductspage',
                arguments: listOfProductsPageArguments);
          }
        },
        child: Container(
          padding: EdgeInsetsResponsive.symmetric(horizontal: 20),
          height: 70.h,
          child: Center(
            child: TextResponsive(name, style: kHeaderText4Style),
          ),
        ),
      );
    },
  );
}
