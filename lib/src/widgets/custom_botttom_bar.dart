import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  Color backgroundColor;
  List<NavigationBarItem> children;

  CustomNavigationBar({
    this.backgroundColor: Colors.white,
    this.children,
  }) : assert(children != null);

  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: widget.backgroundColor,
      child: Container(
        height: AppBar().preferredSize.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            widget.children.length,
                (index) {
              return widget.children[index];
            },
          ),
        ),
      ),
    );
  }
}

class NavigationBarItem extends StatefulWidget {
  Color color;
  Color activeColor;
  IconData iconData;
  bool active;
  Function onTap;

  NavigationBarItem(
      {this.color,
        this.activeColor: Colors.brown,
        this.iconData,
        this.active: false,
        this.onTap})
      : assert(iconData != null),
        assert(color != null),
        assert(activeColor != null);

  @override
  _NavigationBarItemState createState() => _NavigationBarItemState();
}

class _NavigationBarItemState extends State<NavigationBarItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: widget.active ? BoxDecoration(
          border: Border(
              top: BorderSide(
                width: 3,
                color: Colors.brown,
              )
          )
      ) : null,
      child: InkWell(
        splashColor: Colors.transparent,
        onTap: widget.onTap,
        child: Padding(
          padding: EdgeInsets.only(
            left: 10, right: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                widget.iconData,
                color: widget.active ? widget.activeColor : widget.color,
                size: 30,
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
