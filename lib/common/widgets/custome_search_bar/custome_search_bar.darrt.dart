

import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class TSearchBar extends StatelessWidget {
  const TSearchBar({
    super.key,
    this.text,
    this.icon,
    this.showBackground = true,
    this.showBorder = true,
  });
  final String? text;
  final IconData? icon;
  final bool showBackground, showBorder;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: TextFormField(
        style: Theme.of(context).textTheme.bodySmall!.apply(color:  dark ? TColors.textWhite :  TColors.dark),
        decoration: InputDecoration(
          filled: true,
          fillColor: showBackground
              ? dark
              ? TColors.dark
              : TColors.light
              : Colors.transparent,
          prefixIcon:  Icon(
            icon,
            color: TColors.darkerGrey,
          ),
          contentPadding: const EdgeInsets.all(TSizes.md),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
              borderSide: showBorder ? BorderSide(color: TColors.grey) : BorderSide.none),
          hintText: text,
          hintStyle: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }
}