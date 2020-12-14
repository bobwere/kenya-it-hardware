import 'package:flutter/material.dart';
import 'package:kenya_it_hardware/src/presentation/allCategories/all_categories.dart';
import 'package:kenya_it_hardware/src/presentation/home_page.dart/home_page.dart';
import 'package:kenya_it_hardware/src/presentation/list_of_products_from_select_categorys/list_of_products.dart';
import 'package:kenya_it_hardware/src/presentation/login_page/login_page.dart';
import 'package:kenya_it_hardware/src/presentation/onboarding_page/onboarding_page.dart';
import 'package:kenya_it_hardware/src/presentation/orders_by_client/list_of_orders.dart';
import 'package:kenya_it_hardware/src/presentation/orders_by_client/order_detail.dart';
import 'package:kenya_it_hardware/src/presentation/product_detail.dart/product_detail.dart';
import 'package:kenya_it_hardware/src/presentation/splash_page/splash_page.dart';
import 'package:kenya_it_hardware/src/presentation/widgets/auth_widget.dart';

class RouteCatalog {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => AuthWidget());
      case '/onboardingpage':
        return MaterialPageRoute(builder: (_) => OnboardingPage());

      case '/listoforders':
        return MaterialPageRoute(
            builder: (_) => ListOfOrders(
                  listOfOrdersArguments: arguments,
                ));
      case '/productdetailpage':
        return MaterialPageRoute(
            builder: (_) => ProductDetailPage(
                  product: arguments,
                ));
      case '/listofproductspage':
        return MaterialPageRoute(
            builder: (_) =>
                ListOfProductsPage(listOfProductsPageArguments: arguments));
      case '/homepage':
        return MaterialPageRoute(builder: (_) => Homepage());
      case '/listOfcategoriespage':
        return MaterialPageRoute(builder: (_) => ListOfCategoriesPage());
      case '/loginpage':
        return MaterialPageRoute(builder: (_) => LoginPage());

      case '/orderdetail':
        return MaterialPageRoute(
            builder: (_) => OrderDetail(
                  myOrderDetailArguments: arguments,
                ));

      default:
        return MaterialPageRoute(builder: (_) => SplashPage());
    }
  }
}
