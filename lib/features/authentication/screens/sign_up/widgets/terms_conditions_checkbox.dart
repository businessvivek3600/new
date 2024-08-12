import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:smart_bazaar/utils/constants/colors.dart';
import 'package:smart_bazaar/utils/constants/sizes.dart';
import 'package:smart_bazaar/utils/constants/text_strings.dart';

import '../../../../../utils/helpers/helper_functions.dart';

class TTermAndConditionCheckBox extends StatelessWidget {
  const TTermAndConditionCheckBox({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        ///Remember me
        SizedBox(
            height: 24,
            width: 24,
            child: Checkbox(value: true, onChanged: (_) {})),
        const SizedBox(width: TSizes.spaceBtwItems),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: "${TTexts.iAgreeTo}  ",
                    style:
                    Theme.of(context).textTheme.bodySmall),
                TextSpan(
                  text: "${TTexts.privacyPolicy}  ",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(
                    color: dark
                        ? TColors.white
                        : TColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark
                        ? TColors.white
                        : TColors.primary,
                  ),
                ),
                TextSpan(
                    text: "${TTexts.and}  ",
                    style:
                    Theme.of(context).textTheme.bodySmall),
                TextSpan(
                  text: "${TTexts.termsOfUse} ",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(
                    color: dark
                        ? TColors.white
                        : TColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark
                        ? TColors.white
                        : TColors.primary,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}