import 'package:flutter/material.dart';
import 'package:my_braider/home/model/user.dart';

class ServicesPage extends StatelessWidget {
  ServicesPage(this.user);

  final User user;

  @override
  Widget build(BuildContext context) {
    final _showSnack = () => Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('button tapped'),
          duration: Duration(microseconds: 500),
        ));

    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) => Divider(
            indent: 15.0,
          ),
      itemCount: 20,
      shrinkWrap: false,
      padding: const EdgeInsets.all(1.0),
      itemBuilder: (BuildContext context, int index) => Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              height: 60,
              color: Colors.white,
              child: new Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("${user.service[index]} $index ",
                          style: new TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Text("GENERIC DISCRIPTION",
                          style: new TextStyle(
                              fontSize: 13, fontWeight: FontWeight.normal))
                    ],
                  ),
                  new Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("\$100.00+  ",
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          Text("  2h40m",
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.normal)),
                        ],
                      ),
                      new Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          RaisedButton(
                            color: Colors.blue[400],
                            child: Text("BOOK",
                                style: new TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600)),
                            onPressed: _showSnack,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
      // itemBuilder
    );
  }
}
