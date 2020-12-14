import 'package:carousel_slider/carousel_slider.dart';
import 'package:dart_random_choice/dart_random_choice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kenya_it_hardware/common/constants/strings.dart';
import 'package:kenya_it_hardware/common/constants/styles.dart';
import 'package:kenya_it_hardware/common/constants/theme.dart';
import 'package:kenya_it_hardware/src/application/auth_cubit/auth_cubit.dart';
import 'package:kenya_it_hardware/src/application/store_cubit/store_cubit.dart';
import 'package:kenya_it_hardware/src/data/store/store_model.dart';
import 'package:kenya_it_hardware/src/presentation/orders_by_client/list_of_orders.dart';
import 'package:kenya_it_hardware/src/presentation/widgets/categories_name_horizontal.dart';
import 'package:kenya_it_hardware/src/presentation/widgets/categories_product_horizontal_widget.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 480, height: 854, allowFontScaling: true);
    AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
    return BlocBuilder<StoreCubit, StoreState>(builder: (context, storestate) {
      return storestate.map(
          initial: (_) => Container(
                color: Colors.white,
              ),
          loading: (_) {
            return Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Center(
                child: ContainerResponsive(
                  height: 50,
                  width: 50,
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          },
          success: (storestate) {
            List<Product> products = storestate.store.products
                .where((element) => element.productNew == true)
                .toList();

            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                iconTheme: IconThemeData(color: Colors.black87),
              ),
              drawer: Drawer(child: BlocBuilder<AuthCubit, AuthState>(
                builder: (context, state) {
                  return state.maybeMap(
                      authenticated: (state) {
                        var listOfOrdersArguments = ListOfOrdersArguments(
                            storeModel: storestate.store,
                            id: int.tryParse(state.id));
                        return ListView(
                          children: <Widget>[
                            ListTile(
                              leading: CircleAvatar(
                                  backgroundImage: NetworkImage(state.picture)),
                              title: TextResponsive(state.name,
                                  style: kNormalText2Style),
                              subtitle: TextResponsive(state.user.email,
                                  style: kNormalText2Style),
                            ),
                            Divider(),
                            ListTile(
                                onTap: () {
                                  Navigator.pop(context);
                                  Navigator.of(context).pushNamed(
                                    '/homepage',
                                  );
                                },
                                leading: Icon(LineAwesomeIcons.home,
                                    color: colorScheme.primary),
                                title: TextResponsive("Home",
                                    style: kNormalText2Style)),
                            ListTile(
                                onTap: () {
                                  Navigator.pop(context);
                                  Navigator.of(context).pushNamed(
                                    '/listOfcategoriespage',
                                  );
                                },
                                leading: Icon(LineAwesomeIcons.pie_chart,
                                    color: colorScheme.primary),
                                title: TextResponsive("Shop by Categories",
                                    style: kNormalText2Style)),
                            Divider(),
                            ListTile(
                                onTap: () {
                                  Navigator.pop(context);
                                  Navigator.of(context).pushNamed(
                                      '/listoforders',
                                      arguments: listOfOrdersArguments);
                                },
                                leading: Icon(LineAwesomeIcons.file_o,
                                    color: colorScheme.primary),
                                title: TextResponsive("Your Orders",
                                    style: kNormalText2Style)),
                            ContainerResponsive(
                              height: 270,
                            ),
                            ListTile(
                                onTap: () {
                                  authCubit.logOut();
                                  Navigator.pop(context);
                                  Navigator.of(context).pushNamed('/loginpage',
                                      arguments: listOfOrdersArguments);
                                },
                                leading: Icon(LineAwesomeIcons.sign_out,
                                    color: colorScheme.primary),
                                title: TextResponsive("Log Out",
                                    style: kNormalText2Style)),
                          ],
                        );
                      },
                      orElse: () => Container());
                },
              )),
              body: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  GreetingAndProfilePicRow(),
                  CategoryNameHorizontalListView(),
                  CarouselImages(),
                  CategoryHorizontalListView(
                    categoryName: 'New Categories',
                    products: products,
                  )
                ],
              ),
            );
          },
          failure: (_) => Container());
    });
  }
}

class GreetingAndProfilePicRow extends StatelessWidget {
  const GreetingAndProfilePicRow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, AuthState state) {
      return state.maybeMap(
        authenticated: (state) {
          var name = state.name ?? ' ';
          var picUrl = state.picture;

          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(picUrl),
            ),
            title: TextResponsive("Hi $name,", style: kHeaderText2Style),
            subtitle: TextResponsive("Discover exciting tech with us",
                style: kNormalText2Style),
          );
        },
        orElse: () => Text(''),
      );
    });
  }
}

class CarouselImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> list = [
      "assets/images/banners/2855.jpg",
      "assets/images/banners/samsunga20.png",
      "assets/images/banners/2865.jpg",
      "assets/images/banners/inifinixhot9.png",
      "assets/images/banners/bannerad2.png"
    ];
    return Container(
        child: CarouselSlider(
      options: CarouselOptions(autoPlay: true, viewportFraction: 1.0),
      items: list
          .map((item) => AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  child: Image.asset(
                    item,
                    fit: BoxFit.cover,
                  ),
                ),
              ))
          .toList(),
    ));
  }
}
