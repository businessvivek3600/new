import 'package:flutter/material.dart';

import '../custom_shapes/containers/rounded_container.dart';
import '../images/t_circular_image.dart';
import '../texts/t_brand_title_text_with_verified_icon.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key, this.showBorder = false,
  });
final bool showBorder;


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(
          content: const Text("Product is tapped"),
          backgroundColor: TColors.primary,
          elevation: 5,
          duration: const Duration(seconds: 1),
          showCloseIcon: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
              side: BorderSide.none),
        ));
      },
      child: TRoundedContainer(
        showBorder: showBorder,
        padding: const EdgeInsets.all(TSizes.sm),
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            ///--Icon
            TCircularImage(
              image: TImages.clothIcon,
              isNetWorkImage: false,
              backgroundColor: Colors.transparent,
              overlayColor:
              dark ? TColors.white : TColors.black,
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems / 2,
            ),

            ///--Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWithVerifiedIcon(
                    title: 'Nike ',
                    brandTextSizes: TextSizes.large,
                  ),
                  Text(
                    "302 products",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}