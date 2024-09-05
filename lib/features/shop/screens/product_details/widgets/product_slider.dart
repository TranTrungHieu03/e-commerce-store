import 'package:e_store/commons/widgets/appbar/appbar.dart';
import 'package:e_store/commons/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:e_store/commons/widgets/icons/rounded_icon.dart';
import 'package:e_store/commons/widgets/images/rounded_image.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductSlider extends StatelessWidget {
  const TProductSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TCurvedEdgeWidget(
      child: Container(
        color: dark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            //main image
            SizedBox(
              height: THelperFunctions.screenWidth(),
              child: const Padding(
                padding: EdgeInsets.all(TSizes.productImageRadius * 2),
                child: Image(image: AssetImage(TImages.shoe1)),
              ),
            ),

            //Image slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemBuilder: (_, index) => TRoundedImage(
                    width: 80,
                    imageUrl: TImages.shoe2,
                    backgroundColor: dark ? TColors.dark : TColors.white,
                    border: Border.all(color: TColors.primary),
                    padding: const EdgeInsets.all(TSizes.sm),
                  ),
                  separatorBuilder: (_, __) => const SizedBox(
                    width: TSizes.spacebtwItems,
                  ),
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                ),
              ),
            ),
            //app bar icon

            const TAppbar(
              showBackArrow: true,
              actions: [
                TRoundedIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
