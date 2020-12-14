import 'package:cached_network_image/cached_network_image.dart';
import 'package:dart_random_choice/dart_random_choice.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:kenya_it_hardware/common/constants/styles.dart';
import 'package:kenya_it_hardware/src/data/store/store_model.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class CategoryHorizontalListView extends StatelessWidget {
  const CategoryHorizontalListView(
      {Key key, @required this.products, @required this.categoryName})
      : super(key: key);

  final List<Product> products;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //Row Name and See All Text
        Padding(
          padding: EdgeInsets.fromLTRB(20.h, 10.h, 20.h, 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextResponsive('New Products', style: kHeaderText3Style),
            ],
          ),
        ),

        //Horizontal ListView
        SizedBoxResponsive(
          height: 315,
          child: ListView.builder(
              padding: EdgeInsets.only(left: 20.h),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final product = products[index];
                return ProductCard(product: product);
              },
              itemCount: products.length),
        ),
      ],
    );
  }
}

const List<String> hashOptions = [
  'AtLg@EfQ?^fQ',
  'A7GlI-lC00AE',
  'AMPQES_4fPfQ',
  'A3Q9ftdCdCgl',
  'A8HLVa00~7WD',
  'AyJ[CdWW~qfQ',
  'ARK-XwoelofQ',
  'AHM%=vay?[fQ',
  'ArJH,NkW~Wj[',
  'A8ONk0fQ00lC',
  'A3Q9ftdCdCgl'
];

class ProductCard extends StatefulWidget {
  const ProductCard({Key key, this.product}) : super(key: key);

  final Product product;

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Parent(
      style: kProductCardStyle,
      child: Column(children: [
        //Image from database
        Parent(
          gesture: Gestures()
            ..onTap(() {
              Navigator.of(context)
                  .pushNamed('/productdetailpage', arguments: widget.product);
            }),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15.h),
                topLeft: Radius.circular(15.h)),
            child: SizedBox(
              width: 210.h,
              height: 210.h,
              child: CachedNetworkImage(
                fadeOutDuration: const Duration(milliseconds: 500),
                fadeInDuration: const Duration(milliseconds: 500),
                placeholderFadeInDuration: const Duration(milliseconds: 100),
                placeholder: (context, url) => BlurHash(
                  hash: randomChoice<String>(hashOptions),
                  imageFit: BoxFit.cover,
                ),
                imageUrl: widget.product.picture,
                errorWidget: (context, url, error) => Icon(Icons.error),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Spacer(),
        //Product Name
        Padding(
          padding: EdgeInsetsResponsive.symmetric(horizontal: 10),
          child: TextResponsive(widget.product.name,
              maxLines: 2, style: kHeaderText5Style),
        ),

        //Row of Price & Favorite Icon
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: EdgeInsetsResponsive.symmetric(horizontal: 10),
              child: TextResponsive('Ksh ${widget.product.price.toString()}',
                  style: kNormalText3Style),
            ),
          ],
        ),
      ]),
    );
  }
}
