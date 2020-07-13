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
              'https://images.unsplash.com/photo-1517258307935-9764dad5d7de?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
              'https://images.unsplash.com/photo-1521242904882-d7dee0396393?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
              'https://images.unsplash.com/photo-1593378026483-2a1fd46a35bd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'
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
              'https://images.unsplash.com/photo-1593696953675-a0213df8a5d5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
              'https://images.unsplash.com/photo-1585323388412-5adf247e7a7d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
              'https://images.unsplash.com/photo-1593980276699-64469ab7de9c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80'
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
              'https://images.unsplash.com/photo-1593703066658-2fc13a63f282?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
              'https://images.unsplash.com/photo-1594123582884-6c88a690210b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
              'https://images.unsplash.com/photo-1594201741863-2bf316674ea3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'
            ],
          ),
        ],
      ),
    );
  }
}
