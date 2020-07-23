import 'package:flutter/material.dart';

class ItemProduct extends StatelessWidget {
  String urlImage;
  String name;
  String price;
  bool favorite;

  ItemProduct({
    this.urlImage,
    this.name,
    this.price,
    this.favorite,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: constraints.maxHeight * 0.5,
                  ),
                  Container(
                    height: constraints.maxHeight * 0.5,
                    child: Card(
                      elevation: 4,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        width: constraints.maxWidth,
                        child: ListTile(
                          dense: true,
                          title: Text(
                            name,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          subtitle: Text(
                            '\$$price',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          trailing: Icon(
                            favorite ? Icons.favorite : Icons.favorite_border,
                            color: favorite ? Colors.red : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                height: constraints.maxHeight * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(urlImage),
                  )
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
