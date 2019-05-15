import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';

import 'signup.dart';



void main() => runApp(new MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
     //debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {
        '/signup': (BuildContext context) => new signup()

    },
      home: new MyHomePage(),

    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {


  PageController controller;


  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

int counter = 0;
  void click(){
    print("Clicked, on progress...");
  }
  @override
  Widget build(BuildContext context) {



    return new Scaffold(
        body: new Stack(

          //fit: StackFit.expand,

          children: <Widget>[
            new Container (
               //decoration: new BoxDecoration(
//                   image: new DecorationImage(
//                    image: AssetImage('assets/images/breaded.jpg'),
//                    fit: BoxFit.cover
//               )

              child:Image.network(
                 'https://images.unsplash.com/photo-1554424693-280bb6cff4a0?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80', fit: BoxFit.cover
              //'https://images.unsplash.com/photo-1553443233-45351769839c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
    //fit: BoxFit.cover
    //)


)
            ),

            Container(
              padding: EdgeInsets.fromLTRB(15.0, 200.0, 0.0, 0.0),
              child: Text(
                'Breaded is ...',
                style: TextStyle(color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30.0, 250.0, 0.0, 0.0),
              child: Text(
                'Beautiful',
                style: TextStyle(color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 300.0, left: 20.0, right: 20.0),
                child: Column(
                    children: <Widget>[
                      SizedBox(height: 400.0),
                      Container(
                        height: 40.0,
                        child: Material(
                            borderRadius: BorderRadius.circular(1.0),
                            shadowColor: Colors.greenAccent,
                            color: Colors.green,
                            elevation: 7.0,
                            child: GestureDetector(
                                child: ButtonTheme(
                                    child: new RaisedButton(
                                      onPressed: ()
                                      {Navigator.of(context).pushNamed('/signup');},
                                      child: Text(
                                        'GET STARTED',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat',
                                        ),
                                    ),
                                    ),
                                  minWidth:200.0,
                                ),

                            )
                        ),
                      ),

                      new Container(
                        //color: Colors.pink,

                        child: Container(
                            height: 120.0,
                            child: PageIndicatorContainer(
                              pageView: PageView(
                                children: <Widget>[
                                  Text('1'),
                                  Text('2'),
                                  Text('3'),
                                  Text('4'),


                                ],
//
                                controller: controller,
                              ),
                              align: IndicatorAlign.bottom,
                              // your indicator align with container
                              length: 4,
                              // indicator count
                              indicatorColor: Colors.white,
                              // unselected indicator color
                              indicatorSelectorColor: Colors.grey,
                              // selected indicator color
                              padding: EdgeInsets.only(bottom: 10.0),
                              // padding with bottom .when align top you should use properties `top:10.0`
                              size: 15.0,
                              // indicator size.
                              indicatorSpace: 10.0,
                              //shape: IndicatorShape.circle(size: 12),

                              // space between circles
                            )
                        ),
                      )


                    ]
                )


            )
          ],
        )
    );

  }
}
