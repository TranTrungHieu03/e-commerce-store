import 'package:e_store/commons/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_store/commons/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_store/commons/widgets/layouts/grid_layout.dart';
import 'package:e_store/commons/widgets/product_cards/product_card_vertical.dart';
import 'package:e_store/commons/widgets/texts/section_heading.dart';
import 'package:e_store/features/shop/screens/all_products/all_products.dart';
import 'package:e_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
                child: Column(
              children: [
                THomeAppBar(),

                SizedBox(
                  height: TSizes.spacebtwSections,
                ),

                //search bar

                TSearchContainer(
                  icon: Iconsax.search_normal,
                  text: 'Search in Store',
                ),

                SizedBox(
                  height: TSizes.spacebtwSections,
                ),

                //Heading & Categories
                Padding(
                    padding: EdgeInsets.only(
                        left: TSizes.defaultSpace,
                        bottom: TSizes.spacebtwSections),
                    child: Column(children: [
                      TSectionHeading(
                        title: 'Popular Categories',
                        showActionButton: false,
                      ),
                      SizedBox(
                        height: TSizes.spacebtwItems,
                      ),
                      THomeCategories(),
                    ])),
              ],
            )),
            //Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(
                    banners: [
                      TImages.banner3,
                      TImages.banner2,
                      TImages.banner1,
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spacebtwItems,
                  ),

                  //heading
                  TSectionHeading(
                    title: 'Popular Products',
                    onPressed: () => Get.to(() => const AllProductsScreen()),
                  ),
                  const SizedBox(
                    height: TSizes.spacebtwItems,
                  ),

                  //Popular product
                  TGridLayout(
                    itemCount: 2,
                    itemBuilder: (_, index) => const TProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon(
      {super.key, required this.onPressed, required this.iconColor});

  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconColor,
          )),
      Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: TColors.black, borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.white, fontSizeFactor: 0.8),
              ),
            ),
          ))
    ]);
  }
}
