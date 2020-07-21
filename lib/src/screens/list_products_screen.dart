import 'package:ecommerceapp/src/widgets/custom_app_bar.dart';
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
      bottomNavigationBar: Container(),
    );
  }
}
