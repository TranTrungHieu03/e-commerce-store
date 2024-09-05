import 'package:e_store/commons/widgets/appbar/appbar.dart';
import 'package:e_store/commons/widgets/products/ratings/rating_indicator.dart';
import 'package:e_store/features/shop/screens/product_reviews/widgets/overall_product_rating.dart';
import 'package:e_store/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //Appbar
        appBar: TAppbar(
          title: Text(
            'Reviews & Ratings',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          showBackArrow: true,
        ),

        //Body
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                    'Rating and review are verified and are from people who use the same type of device that you use.'),
                const SizedBox(
                  height: TSizes.spacebtwItems,
                ),

                //Overall product rating
                const TOverallProductRating(),
                const TRatingBarIndicator(rating: 3.5),
                Text(
                  '12.611',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(
                  height: TSizes.spacebtwSections,
                ),
                //User review list
                const TUserReviewCard(),
                const TUserReviewCard(),
                const TUserReviewCard(),
              ],
            ),
          ),
        ),
    );
  }
}
