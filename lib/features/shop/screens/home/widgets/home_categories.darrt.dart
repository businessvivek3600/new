import 'package:flutter/material.dart';

import '../../../../../common/widgets/vertical_image_container/vertical_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return const TVerticalImageText(
            textColor: TColors.white,
            image: TImages.shoeIcon,
            title: "Shoe",
            backgroundColor: TColors.white,
          );
        },
      ),
    );
  }
}
