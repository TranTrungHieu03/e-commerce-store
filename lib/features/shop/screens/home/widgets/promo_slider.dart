import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_store/commons/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_store/commons/widgets/images/rounded_image.dart';
import 'package:e_store/features/shop/controllers/home_controller.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({super.key, required this.banners});

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
                viewportFraction: 0.8,
                onPageChanged: (index, _) =>
                    controller.updatePageIndicator(index)),
            items: banners.map((url) => TRoundedImage(imageUrl: url, applyImageRadius: true,)).toList()),
        const SizedBox(
          height: TSizes.spacebtwItems,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < 3; i++)
                  TCircularContainer(
                    width: 20,
                    height: 4,
                    backgroundColor: controller.carouselCurrentIndex.value == i
                        ? TColors.primary
                        : TColors.grey,
                    margin: const EdgeInsets.only(right: 10),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
