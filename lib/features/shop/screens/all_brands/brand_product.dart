import 'package:e_store/commons/widgets/appbar/appbar.dart';
import 'package:e_store/commons/widgets/brands/brand_card.dart';
import 'package:e_store/commons/widgets/products/sortable/sortable_product.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(
        title: Text(
          'Nike',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //brand detail
              TBrandCard(showBorder: true),
              SizedBox(
                height: TSizes.spacebtwItems,
              ),
              TSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
