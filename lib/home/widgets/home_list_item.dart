import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_braider/home/model/user.dart';
import 'package:my_braider/userdetail/user_detail_screen.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class HomeListItem extends StatelessWidget {
  HomeListItem(this.user);

  final User user;

  void _showSnackBar(BuildContext context, String msg) {
    //Scaffold.of(context).showSnackBar(SnackBar(content: Text(msg)));
    launchUserDetailScreen(context);
  }

  void launchUserDetailScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => UserDetailScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Column(

      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            _showSnackBar(context, "onTap ${user.displayName}");
          },
          onLongPress: () {
            _showSnackBar(context, "onLongPress ${user.displayName}");
          },
          child: Container(

            height: 200,
            width: screenWidth,
            child: CachedNetworkImage(
              imageUrl: user.coverPhotoUrl,
              fit: BoxFit.cover,
//            placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
              fadeOutDuration: Duration(seconds: 1),
              fadeInDuration: Duration(seconds: 2),
            ),
          ),
        ),

        // new Container(
        //    padding: const EdgeInsets.only(bottom:10),
        //   child: Text(

        //   user.displayName,
        //   textScaleFactor: 1.5,
        // )),
        // Text(user.address),
        // Text("User ratings ${user.ratings}"),
        // SmoothStarRating(
        //   starCount: 5,
        //   rating: 4.4,

        // )
        new Container(
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            child: new Row(
              children: <Widget>[
                new Expanded(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          padding: const EdgeInsets.only(bottom: 10),
                          child:new Text(user.displayName,
                              textScaleFactor: 1.5,
                              style: new TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        new Container(
                            padding: const EdgeInsets.only(bottom: 6),
                            child: new Text(user.address,style: new TextStyle(
                                fontSize: 15,
                                color: Colors.red[300])
                            )),
                        new Text("Wash, DC 20011 | ${user.distance} miles", style: new TextStyle(fontSize: 15,
                            color: Colors.red[300])),
                        //new Text("", style: new TextStyle(fontSize: 15))
                      ],
                    )
                ),
                new Expanded(
                    child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
//                  new Container(
//                    padding: const EdgeInsets.only(bottom: 5),
//                    child:new Text("${user.ratings}",style: new TextStyle(fontSize: 15)
//                    )
//                  ),
                          SmoothStarRating(
                              starCount: 5,
                              rating: 4.4),

                          new Text("120 reviews",style: new TextStyle(fontSize: 15))
                        ]
                    )
                )


              ],)
        )
      ],
    );
  }
}
