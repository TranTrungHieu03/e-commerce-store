import 'package:e_store/commons/widgets/image_text_widgets/image_text_widget.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';


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
          return const TVerticalImageText(
            title: 'Shoes',
            image: TImages.shoes,
            textColor: TColors.white,
          );
        },
        itemCount: 6,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}