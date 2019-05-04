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
    return Material(
      child: InkWell(
        onTap: () => _launchUserDetailScreen(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 200,
              width: screenWidth,
              child: CachedNetworkImage(
                imageUrl: user.coverPhotoUrl,
                fit: BoxFit.cover,
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          user.displayName,
                          textScaleFactor: 1.1,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: new TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: 75,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 7.0),
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              SmoothStarRating(
                                starCount: 5,
                                rating: 4.4,
                                size: 15,
                              ),
                              Text(
                                "120 reviews",
                                textScaleFactor: 0.7,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Text(
                          user.address,
                          textScaleFactor: 0.8,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          "Washington, DC 20011 | ${user.distance} miles",
                          textScaleFactor: 0.8,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
