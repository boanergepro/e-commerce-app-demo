import 'package:ecommerceapp/src/screens/list_products_screen.dart';
import 'package:ecommerceapp/src/widgets/custom_app_bar.dart';
import 'package:ecommerceapp/src/widgets/custom_botttom_bar.dart';
import 'package:ecommerceapp/src/widgets/item_cart_product.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  static final routerName = '/cart';

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<ItemCartProduct> items = [
    ItemCartProduct(
      size: 'M',
      urlImage: 'assets/dress_blue_retro.png',
      price: '\$ 38',
      name: 'Dress retro',
      selectedColor: Colors.blue[800],
    ),
    ItemCartProduct(
      size: 'S',
      urlImage: 'assets/short_red.png',
      price: '\$ 10',
      name: 'Short',
      selectedColor: Colors.red[800],
    )
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppBar(
        title: 'Cart',
        ctx: context,
      ),
      body: Container(
        margin: EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: Column(
          children: <Widget>[
            Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return items[index];
                  },
                )),
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Card(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.all(15),
                  height: size.height * 0.15,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Toltal',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '\$ 48',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: size.width,
                        child: RaisedButton(
                          color: Colors.brown,
                          onPressed: () {},
                          child: Text(
                            'Checkout',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
        backgroundColor: Colors.white,
        children: <NavigationBarItem>[
          NavigationBarItem(
            color: Colors.grey,
            iconData: Icons.home,
            onTap: () {
              Navigator.of(context).pushNamed(ListProductsScreen.routerName);
            },
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
            active: true,
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
