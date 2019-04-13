import 'package:flutter/material.dart';

class HomeSliverAppBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeSliverAppBarState();
  }
}

class HomeSliverAppBarState extends State<HomeSliverAppBar> {
  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    final primaryColorDark = Theme.of(context).primaryColorDark;

    return Container(
      child: SliverAppBar(
        floating: true,
        snap: true,
        pinned: true,
        backgroundColor: Colors.transparent,
        expandedHeight: 120.0,
        title: new MaterialButton(
          height: 40.0,
          minWidth: double.infinity,
          color: primaryColor,
          textColor: Colors.white,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.edit_location),
              SizedBox(width: 8),
              Text("Where? Enter street, city or zipcode"),
            ],
          ),
          onPressed: () => {},
          splashColor: primaryColorDark,
        ),
        flexibleSpace: FlexibleSpaceBar(
          background: Padding(
            padding: EdgeInsets.only(top: 25, left: 8, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                SizedBox(width: 8),
                FlatButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.grey),
                  ),
                  onPressed: () => {},
                  child: Text('When'),
                ),
                SizedBox(width: 8),
                FlatButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.grey),
                  ),
                  onPressed: () => {},
                  child: Text('Filters'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
