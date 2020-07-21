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
    Size size = MediaQuery.of(context).size;

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
          )),
      body: Container(),
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
