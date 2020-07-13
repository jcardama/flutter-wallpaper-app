import 'package:flutter/material.dart';
import 'package:wallpaper/core/constants/constants.dart' as Constants;
import 'package:wallpaper/features/presentation/screens/wallpaper/wallpaper_screen.dart';

class Section extends StatefulWidget {
  final List<String> items;

  const Section({Key key, this.items}) : super(key: key);

  @override
  _SectionState createState() => _SectionState();
}

class _SectionState extends State<Section> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: Constants.Nums.defaultPadding),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 4,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemCount: widget.items.length,
          separatorBuilder: (context, index) => SizedBox(
            width: Constants.Nums.defaultPadding,
          ),
          itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                  left: (index == 0 ? Constants.Nums.defaultPadding : 0),
                  right: index == widget.items.length
                      ? Constants.Nums.defaultPadding
                      : 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Ink(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(widget.items.elementAt(index)),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WallpaperScreen(
                              image: widget.items.elementAt(index),
                            ),
                          )),
                      borderRadius: BorderRadius.circular(16),
                      splashColor: Constants.Colors.bodyColor.withOpacity(0.1),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
