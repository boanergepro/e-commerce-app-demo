import 'package:flutter/material.dart';

class ItemCartProduct extends StatefulWidget {
  String urlImage;
  String name;
  Color selectedColor;
  String size;
  String price;

  ItemCartProduct({
    this.urlImage,
    this.name,
    this.selectedColor,
    this.size,
    this.price,
  });

  @override
  _ItemCartProductState createState() => _ItemCartProductState();
}

class _ItemCartProductState extends State<ItemCartProduct> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          // info product
          Container(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: size.width * 0.2,
                ),
                Expanded(
                  child: Card(
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(0))),
                    elevation: 5,
                    child: Container(
                      height: size.height * 0.15,
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            width: size.width * 0.15,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  widget.name,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text('Color: '),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    SelectedColor(
                                      color: widget.selectedColor,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('Size: '),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(widget.size),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      widget.price,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 15),
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.brown,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(7)),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Icon(
                                            Icons.remove,
                                            color: Colors.brown,
                                            size: 18,
                                          ),
                                          SizedBox(
                                            width: 7,
                                          ),
                                          Text('1'),
                                          SizedBox(
                                            width: 7,
                                          ),
                                          Icon(
                                            Icons.add,
                                            color: Colors.brown,
                                            size: 18,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
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
          //imge product
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: size.height * 0.2,
                width: 130,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.urlImage),
                  ),
                ),
              ),
              Container(),
            ],
          )
        ],
      ),
    );
  }
}

class SelectedColor extends StatelessWidget {
  Color color;

  SelectedColor({this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18,
      width: 18,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
