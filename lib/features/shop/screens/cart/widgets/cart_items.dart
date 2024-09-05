import 'package:e_store/commons/widgets/products/cart/add_remove_btn.dart';
import 'package:e_store/commons/widgets/products/cart/cart_item.dart';
import 'package:e_store/commons/widgets/texts/product_price_text.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCardItems extends StatelessWidget {
  const TCardItems({
    super.key,
    this.showAddRemoveBtn = true,
  });

  final bool showAddRemoveBtn;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (_, __) => const SizedBox(
          height: TSizes.spacebtwSections,
        ),
        itemCount: 2,
        itemBuilder: (_, index) => Column(
          children: [
            const TCardItem(),
            if (showAddRemoveBtn)
              const SizedBox(
                height: TSizes.spacebtwItems,
              ),
            //
            if (showAddRemoveBtn)
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 70,
                      ),
                      //add remove btn
                      TProductQuantityWithAddRemoveBtn(),
                    ],
                  ),
                  TProductPriceText(price: '256')
                ],
              )
          ],
        ),
      ),
    );
  }
}
