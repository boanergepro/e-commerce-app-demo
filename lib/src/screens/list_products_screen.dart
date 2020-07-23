import 'package:ecommerceapp/src/widgets/custom_app_bar.dart';
import 'package:ecommerceapp/src/widgets/custom_botttom_bar.dart';
import 'package:ecommerceapp/src/widgets/item_product.dart';
import 'package:flutter/material.dart';

class ListProductsScreen extends StatefulWidget {
  static final routerName = '/';

  @override
  _ListProductsScreenState createState() => _ListProductsScreenState();
}

class _ListProductsScreenState extends State<ListProductsScreen> {
  List<ItemProduct> items = [
    ItemProduct(
      name: 'HandBag red',
      price: '30',
      urlImage: 'assets/handbag_red.png',
      favorite: true,
    ),
    ItemProduct(
      name: 'South Hoodie',
      price: '50',
      urlImage: 'assets/south_hoodie.png',
      favorite: true,
    ),
    ItemProduct(
      name: 'Dress blue',
      price: '25',
      urlImage: 'assets/dress_blue_retro.png',
      favorite: false,
    ),
    ItemProduct(
      name: 'Women Shoe',
      price: '50',
      urlImage: 'assets/black_women_shoe.png',
      favorite: false,
    ),
    ItemProduct(
      name: 'Blue Jean',
      price: '30',
      urlImage: 'assets/calvin_klein_jean.png',
      favorite: true,
    ),
    ItemProduct(
      name: 'Short red',
      price: '18',
      urlImage: 'assets/short_red.png',
      favorite: true,
    ),
    ItemProduct(
      name: 'Classic men shoe',
      price: '40',
      favorite: false,
      urlImage: 'assets/classic_black_men_shoes.png',
    ),
    ItemProduct(
      name: 'Boots',
      price: '18',
      urlImage: 'assets/boots.png',
      favorite: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) * 0.25;
    final double itemWidth = size.width / 2;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(
          title: 'New Trend',
          ctx: context,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {},
            )
          ],
          bottom: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CustomOutlineButton(
                  title: 'Sort',
                  iconData: Icons.sort,
                  onTap: () {},
                ),
                CustomOutlineButton(
                  title: 'Filter',
                  iconData: Icons.filter_list,
                  onTap: () {},
                ),
              ],
            ),
          ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 8, top: 15, right: 8),
        child: GridView.count(
          crossAxisSpacing: 8,
          crossAxisCount: 2,
          childAspectRatio: (itemWidth / itemHeight),
          controller: new ScrollController(keepScrollOffset: false),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: List.generate(items.length, (index) {
            return items[index];
          }),
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
        backgroundColor: Colors.white,
        children: <NavigationBarItem>[
          NavigationBarItem(
            color: Colors.grey,
            iconData: Icons.home,
            active: true,
            onTap: () {},
          ),
          NavigationBarItem(
            color: Colors.grey,
            iconData: Icons.search,
            onTap: () {},
          ),
          NavigationBarItem(
            color: Colors.grey,
            iconData: Icons.shopping_cart,
            onTap: () {},
          ),
          NavigationBarItem(
            color: Colors.grey,
            iconData: Icons.favorite_border,
            onTap: () {},
          ),
          NavigationBarItem(
            color: Colors.grey,
            iconData: Icons.person_outline,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class CustomOutlineButton extends StatelessWidget {
  IconData iconData;
  String title;
  Function onTap;

  CustomOutlineButton({
    this.iconData,
    this.title,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      child: OutlineButton(
        onPressed: onTap,
        borderSide: BorderSide(
          color: Colors.brown,
        ),
        splashColor: Colors.brown,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
             iconData,
              color: Colors.brown,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.brown),
            )
          ],
        ),
      ),
    );
  }
}
