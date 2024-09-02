import 'package:e_store/commons/widgets/appbar/appbar.dart';
import 'package:e_store/features/shop/screens/home/home.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: TColors.grey),
          ),
          Text(
            TTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: Colors.white),
          )
        ],
      ),
      actions: [TCartCounterIcon(onPressed: () {}, iconColor: TColors.white)],
    );
  }
}