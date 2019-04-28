import 'package:flutter/material.dart';

class PortfolioPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      Center(
        child:
      GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          padding: EdgeInsets.all(0.0),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Image.network('https://static.wixstatic.com/media/4d4671_e15891a26b714c358354bff76625c21b~mv2_d_3262_4221_s_4_2.jpg',);
          }
      ),
      ),
    );
  }
}


