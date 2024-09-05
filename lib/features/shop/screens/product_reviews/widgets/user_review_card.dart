import 'package:e_store/commons/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_store/commons/widgets/products/ratings/rating_indicator.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class TUserReviewCard extends StatelessWidget {
  const TUserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(TImages.user1),
                ),
                const SizedBox(
                  width: TSizes.spacebtwItems,
                ),
                Text(
                  'Nhi Nguyen',
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ],
            ),
            //
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        //review
        Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            const SizedBox(width: TSizes.spacebtwItems,),
            Text(
              '01 Nov 2023',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(
          height: TSizes.spacebtwItems,
        ),
        const ReadMoreText(
          'The user interface of the app is quite intuitive.I was able to navgiate and make purchase seamlessly',
          trimLines: 2,
          trimCollapsedText: ' show less',
          trimExpandedText: ' show more',
          trimMode: TrimMode.Line,
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primary),
        ),
        const SizedBox(
          height: TSizes.spacebtwItems,
        ),

        //Company review
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'T Store',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '03 Nov 2023',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
                const SizedBox(
                  height: TSizes.spacebtwItems,
                ),
                const ReadMoreText(
                  'The user interface of the app is quite intuitive.I was able to navgiate and make purchase seamlessly navgiate and make purchase seamlessly',
                  trimLines: 2,
                  trimCollapsedText: ' show less',
                  trimExpandedText: ' show more',
                  trimMode: TrimMode.Line,
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: TColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: TColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: TSizes.spacebtwSections,
        )
      ],
    );
  }
}
