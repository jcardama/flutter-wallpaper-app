import 'package:flutter/material.dart';
import 'package:wallpaper/core/constants/constants.dart' as Constants;
import 'package:wallpaper/features/presentation/screens/home_screen/widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: HomeScreenBody(),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add",
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Icon(Icons.add),
        ),
        backgroundColor: Constants.Colors.bodyColor,
        elevation: 4.0,
      ),
    );
  }

  BottomAppBar _buildBottomNavigationBar() {
    return BottomAppBar(
      child: Container(
        margin: EdgeInsets.only(left: 12.0, right: 12.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              //update the bottom app bar view each time an item is clicked
              onPressed: () {},
              iconSize: 27.0,
              icon: Icon(
                Icons.home,
                //darken the icon if it is selected or else give it a different color
                color: Constants.Colors.bodyColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              iconSize: 27.0,
              icon: Icon(
                Icons.favorite_border,
                color: Constants.Colors.bodyLightColor,
              ),
            ),
            //to leave space in between the bottom app bar items and below the FAB
            SizedBox(
              width: 50.0,
            ),
            IconButton(
              onPressed: () {},
              iconSize: 27.0,
              icon: Icon(
                Icons.search,
                color: Constants.Colors.bodyLightColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              iconSize: 27.0,
              icon: Icon(
                Icons.settings,
                color: Constants.Colors.bodyLightColor,
              ),
            ),
          ],
        ),
      ),
      shape: CircularNotchedRectangle(),
      color: Colors.white,
    );
  }
}
