import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PortfolioPage extends StatelessWidget {
  final imageUrl =
      'https://i.ebayimg.com/00/s/ODAwWDc2Mw==/z/FLcAAOSwESdcc~5o/\$_35.JPG';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            padding: EdgeInsets.all(0.0),
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(2.0),
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: BoxFit.cover,
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              );
            }),
      ),
    );
  }
}
