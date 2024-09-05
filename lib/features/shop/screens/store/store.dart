import 'package:e_store/commons/widgets/appbar/appbar.dart';
import 'package:e_store/commons/widgets/appbar/tabbar.dart';
import 'package:e_store/commons/widgets/brands/brand_card.dart';
import 'package:e_store/commons/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_store/commons/widgets/layouts/grid_layout.dart';
import 'package:e_store/commons/widgets/texts/section_heading.dart';
import 'package:e_store/features/shop/screens/all_brands/all_brands.dart';
import 'package:e_store/features/shop/screens/home/home.dart';
import 'package:e_store/features/shop/screens/store/widgets/category_tab.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppbar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCartCounterIcon(
                onPressed: () {},
                iconColor: THelperFunctions.isDarkMode(context)
                    ? TColors.white
                    : TColors.black)
          ],
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
                        onPressed: () => Get.to(() => const AllBrandsScreen()),
                        textColor: THelperFunctions.isDarkMode(context)
                            ? TColors.white
                            : TColors.black,
                      ),
                      const SizedBox(
                        height: TSizes.spacebtwItems / 2,
                      ),

                      TGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return const TBrandCard(showBorder: true);
                          })
                    ],
                  ),
                ),

                //Tabs
                bottom: const TTabBar(
                  tabs: [
                    Tab(
                      child: Text('Sports'),
                    ),
                    Tab(
                      child: Text('Furniture'),
                    ),
                    Tab(
                      child: Text('Electronics'),
                    ),
                    Tab(
                      child: Text('Clothes'),
                    ),
                    Tab(
                      child: Text('Cosmetics'),
                    )
                  ],
                ),
              )
            ];
          },
          body: const TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
