import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper/core/constants/constants.dart' as Constants;

class WallpaperScreen extends StatelessWidget {
  final String image;

  const WallpaperScreen({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Image.network(
          image,
          fit: BoxFit.cover,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
            colors: [const Color(0xFFFFFFEE), const Color(0xFF999999)], // whitish to gray
            tileMode: TileMode.repeated, // repeats the gradient over the canvas
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        children: <Widget>[
          Spacer(
            flex: 10,
          ),
          FloatingActionButton(
            heroTag: 'favorite',
            onPressed: () {},
            tooltip: "Favorite",
            mini: true,
            child: Icon(
              Icons.favorite_border,
              size: 22,
            ),
            backgroundColor: Constants.Colors.bodyColor,
            elevation: 4.0,
          ),
          Spacer(
            flex: 1,
          ),
          FloatingActionButton(
            heroTag: 'download',
            onPressed: () {},
            tooltip: "Download",
            child: Icon(
              Icons.file_download,
              size: 32,
            ),
            backgroundColor: Constants.Colors.bodyColor,
            elevation: 4.0,
          ),
          Spacer(
            flex: 1,
          ),
          FloatingActionButton(
            heroTag: 'share',
            onPressed: () {},
            tooltip: "Share",
            mini: true,
            child: Icon(
              Icons.share,
              size: 22,
            ),
            backgroundColor: Constants.Colors.bodyColor,
            elevation: 4.0,
          ),
          Spacer(
            flex: 10,
          ),
        ],
      ),
    );
  }
}
