import 'package:e_store/commons/widgets/appbar/appbar.dart';
import 'package:e_store/commons/widgets/brands/brand_card.dart';
import 'package:e_store/commons/widgets/layouts/grid_layout.dart';
import 'package:e_store/commons/widgets/products/sortable/sortable_product.dart';
import 'package:e_store/commons/widgets/texts/section_heading.dart';
import 'package:e_store/features/shop/screens/all_brands/brand_product.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(
        showBackArrow: true,
        title: Text(
          'Brand',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //heading
              const TSectionHeading(
                title: 'Brands',
                showActionButton: false,
              ),
              const SizedBox(
                height: TSizes.spacebtwItems,
              ),

              //Brands

              TGridLayout(
                  itemCount: 10,
                  mainAxisExtent: 80,
                  itemBuilder: (_, index) => TBrandCard(
                        showBorder: true,
                        onTap: () => Get.to(() => const BrandProducts()),
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
