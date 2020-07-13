import 'package:flutter/material.dart';
import 'package:wallpaper/core/constants/constants.dart' as Constants;

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> _categories = [Constants.Strings.abstract, Constants.Strings.animals, Constants.Strings.architecture, Constants.Strings.nature, Constants.Strings.travel];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Constants.Nums.defaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemCount: _categories.length,
          itemBuilder: (context, index) => _buildCategory(index),
        ),
      ),
    );
  }

  Widget _buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: Constants.Nums.defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              _categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: _selectedIndex == index
                    ? Constants.Colors.bodyColor
                    : Constants.Colors.bodyLightColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: Constants.Nums.defaultPadding / 4),
              //top padding 5
              height: 2,
              width: 30,
              color:
                  _selectedIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
