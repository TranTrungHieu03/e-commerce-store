import 'package:e_store/commons/widgets/appbar/appbar.dart';
import 'package:e_store/commons/widgets/images/rounded_image.dart';
import 'package:e_store/commons/widgets/product_cards/product_card_horizontal.dart';
import 'package:e_store/commons/widgets/texts/section_heading.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(
        showBackArrow: true,
        title: Text(
          'Sports',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Banner
              const TRoundedImage(
                imageUrl: TImages.banner3,
                width: double.infinity,
                applyImageRadius: true,
              ),
              const SizedBox(
                height: TSizes.spacebtwSections,
              ),
              //Sub-categories

              Column(
                children: [
                  //heading
                  TSectionHeading(
                    title: 'Sport Shirts',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: TSizes.spacebtwItems / 2,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemBuilder: (context, index) =>
                          const TProductCardHorizontal(),
                      separatorBuilder: (_, __) => const SizedBox(
                        width: TSizes.spacebtwItems,
                      ),
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
