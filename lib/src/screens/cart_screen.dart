import 'package:ecommerceapp/src/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  static final routerName = '/cart';

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          title: 'Cart',
          ctx: context,
      ),
      body: Container(),
      bottomNavigationBar: Container(),
    );
  }
}
