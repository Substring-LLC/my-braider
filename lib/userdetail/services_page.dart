import 'package:flutter/material.dart';
import 'package:my_braider/home/model/user.dart';

class ServicesPage extends StatelessWidget {
  ServicesPage(this.user);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(1),
      itemExtent: 60.0,
      itemBuilder: (BuildContext context, int index) {
        return new Container(
          padding: const EdgeInsets.all(1.0),
          height: 10,
          color: Colors.black87,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            height: 10,
            color: Colors.white70,
            child: Text("${user.service[index]} $index ",
                style: new TextStyle(fontWeight: FontWeight.bold)),
          ),
        );
      },
      // itemBuilder
      itemCount: 20,
    )));
  }
}
