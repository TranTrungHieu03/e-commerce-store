import 'package:e_store/commons/widgets/appbar/appbar.dart';
import 'package:e_store/commons/widgets/layouts/grid_layout.dart';
import 'package:e_store/commons/widgets/product_cards/product_card_vertical.dart';
import 'package:e_store/commons/widgets/products/sortable/sortable_product.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(
        showBackArrow: true,
        title: Text(
          'Popular Products',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: const TSortableProducts(),
        ),
      ),
    );
  }
}
