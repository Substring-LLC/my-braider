import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_braider/home/model/user.dart';
import 'package:my_braider/userdetail/user_detail_screen.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class HomeListItem extends StatelessWidget {
  HomeListItem(this.user);

  final User user;

  void _launchUserDetailScreen(BuildContext context) {
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
            _launchUserDetailScreen(context);
          },
          onLongPress: () {
            print("Long Press ${user.displayName}");
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
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(user.displayName,
                          textScaleFactor: 1.5,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Text(
                        user.address,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Text(
                      "Wash, DC 20011 | ${user.distance} miles",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    SmoothStarRating(starCount: 5, rating: 4.4),
                    Text("120 reviews", style: TextStyle(fontSize: 15))
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
