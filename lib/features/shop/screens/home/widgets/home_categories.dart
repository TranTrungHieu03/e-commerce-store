import 'package:e_store/commons/widgets/image_text_widgets/image_text_widget.dart';
import 'package:e_store/features/shop/screens/sub_categories/sub_categories.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemBuilder: (_, index) {
          return TVerticalImageText(
            title: 'Shoes',
            image: TImages.shoes,
            textColor: TColors.white,
            onTap: () => Get.to(() => const SubCategoriesScreen()),
          );
        },
        itemCount: 6,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
