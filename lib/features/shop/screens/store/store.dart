import 'package:e_store/commons/widgets/appbar/appbar.dart';
import 'package:e_store/commons/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_store/commons/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_store/commons/widgets/images/circular_image.dart';
import 'package:e_store/commons/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:e_store/commons/widgets/texts/section_heading.dart';
import 'package:e_store/features/shop/screens/home/home.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/enums.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [TCartCounterIcon(onPressed: () {}, iconColor: Colors.black)],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunctions.isDarkMode(context)
                  ? TColors.black
                  : TColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    const SizedBox(
                      height: TSizes.spacebtwItems,
                    ),
                    const TSearchContainer(
                      text: 'Search in Store',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(
                      height: TSizes.spacebtwSections,
                    ),

                    //Featured brands

                    TSectionHeading(
                      title: 'Featured Brands',
                      onPressed: () {},
                      textColor: THelperFunctions.isDarkMode(context)
                          ? TColors.white
                          : TColors.black,
                    ),
                    const SizedBox(
                      height: TSizes.spacebtwItems / 2,
                    ),

                    GestureDetector(
                      onTap: () {},
                      child: TRoundedContainer(
                        padding: const EdgeInsets.all(TSizes.sm),
                        showBorder: true,
                        backgroundColor: Colors.transparent,
                        child: Row(
                          children: [
                            //Icon
                            TCircularImage(
                              image: TImages.cloth,
                              isNetworkImage: false,
                              backgroundColor: Colors.transparent,
                              overlayColor: THelperFunctions.isDarkMode(context)
                                  ? TColors.white
                                  : TColors.black,
                            ),

                            const SizedBox(
                              width: TSizes.spacebtwItems / 2,
                            ),

                            //Text
                            Column(
                              children: [
                                const TBrandTitleWithVerifiedIcon(
                                  title: 'Nike',
                                  brandTextSize: TextSize.large,
                                ),
                                Text(
                                  '256 products',
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}
