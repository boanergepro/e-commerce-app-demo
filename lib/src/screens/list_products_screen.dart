import 'package:ecommerceapp/src/widgets/custom_app_bar.dart';
import 'package:ecommerceapp/src/widgets/custom_botttom_bar.dart';
import 'package:flutter/material.dart';

class ListProductsScreen extends StatefulWidget {
  static final routerName = '/';

  @override
  _ListProductsScreenState createState() => _ListProductsScreenState();
}

class _ListProductsScreenState extends State<ListProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ]
      ),
      body: Container(),
      bottomNavigationBar: CustomNavigationBar(
        backgroundColor: Colors.white,
        children: <NavigationBarItem> [
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
