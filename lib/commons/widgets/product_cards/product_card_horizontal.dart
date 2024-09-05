import 'package:e_store/commons/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_store/commons/widgets/icons/rounded_icon.dart';
import 'package:e_store/commons/widgets/images/rounded_image.dart';
import 'package:e_store/commons/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:e_store/commons/widgets/texts/product_price_text.dart';
import 'package:e_store/commons/widgets/texts/product_title_text.dart';
import 'package:e_store/features/shop/screens/product_details/product_detail.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetail()),
      child: Container(
          width: 310,
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(TSizes.productImageRadius),
              color: dark ? TColors.darkerGrey : TColors.lightContainer),
          child: Row(
            children: [
              //thumbnail
              TRoundedContainer(
                height: 120,
                padding: const EdgeInsets.all(TSizes.sm),
                backgroundColor: dark ? TColors.dark : TColors.light,
                child: Stack(
                  children: [
                    //image
                    const SizedBox(
                      width: 120,
                      height: 120,
                      child: TRoundedImage(
                        imageUrl: TImages.shoe2,
                        applyImageRadius: true,
                      ),
                    ),
                    Positioned(
                      top: 12,
                      child: TRoundedContainer(
                        radius: TSizes.sm,
                        backgroundColor: TColors.secondary.withOpacity(0.8),
                        padding: const EdgeInsets.symmetric(
                            horizontal: TSizes.sm, vertical: TSizes.xs),
                        child: Text(
                          '25%',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: TColors.black),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 0,
                      right: 0,
                      child: TRoundedIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ),

              //details
              SizedBox(
                width: 172,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
                  child: Column(
                    children: [
                      const Column(
                        children: [
                          TProductTitleText(
                            title: 'Green Nile Half Sleeves Shirt',
                            smallSize: true,
                          ),
                          SizedBox(
                            height: TSizes.spacebtwItems / 2,
                          ),
                          TBrandTitleWithVerifiedIcon(title: 'Nike')
                        ],
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //price
                          const Flexible(
                              child: TProductPriceText(
                                  price: '256.09 - 269.89')),

                          Container(
                            decoration: const BoxDecoration(
                              color: TColors.dark,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(TSizes.cardRadiusMd),
                                  bottomRight:
                                      Radius.circular(TSizes.cardRadiusMd)),
                            ),
                            child: const SizedBox(
                              width: TSizes.iconLg * 1.2,
                              height: TSizes.iconLg * 1.2,
                              child: Center(
                                child: Icon(
                                  Iconsax.add,
                                  color: TColors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
