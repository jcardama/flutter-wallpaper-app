import 'package:flutter/material.dart';
import 'package:wallpaper/core/constants/constants.dart' as Constants;
import 'package:wallpaper/features/presentation/screens/home_screen/widgets/categories.dart';
import 'package:wallpaper/features/presentation/screens/home_screen/widgets/section.dart';

class HomeScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: Constants.Nums.defaultPadding,
              left: Constants.Nums.defaultPadding,
              right: Constants.Nums.defaultPadding,
            ),
            child: Text(
              Constants.Strings.categories,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Categories(),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Constants.Nums.defaultPadding),
            child: Text(
              Constants.Strings.featured,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Section(
            items: [
              'assets/images/photo-1517258307935-9764dad5d7de.webp',
              'assets/images/photo-1521242904882-d7dee0396393.webp',
              'assets/images/photo-1593378026483-2a1fd46a35bd.webp'
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Constants.Nums.defaultPadding),
            child: Text(
              Constants.Strings.popular,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Section(
            items: [
              'assets/images/photo-1593696953675-a0213df8a5d5.webp',
              'assets/images/photo-1585323388412-5adf247e7a7d.webp',
              'assets/images/photo-1593980276699-64469ab7de9c.webp'
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Constants.Nums.defaultPadding),
            child: Text(
              Constants.Strings.trending,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Section(
            items: [
              'assets/images/photo-1593703066658-2fc13a63f282.webp',
              'assets/images/photo-1594123582884-6c88a690210b.webp',
              'assets/images/photo-1594201741863-2bf316674ea3.webp'
            ],
          ),
        ],
      ),
    );
  }
}
