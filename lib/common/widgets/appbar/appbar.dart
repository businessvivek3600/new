import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smart_bazaar/utils/constants/sizes.dart';
import 'package:smart_bazaar/utils/device/device_utility.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar(
      {super.key,
      this.title,
      this.showArrowBack = false,
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed});
  final Widget? title;
  final bool showArrowBack;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showArrowBack
            ? IconButton(
                icon:  Icon(Iconsax.arrow_left,color: dark ? TColors.white : TColors.dark,),
                onPressed: () => Get.back(),
              )
            : leadingIcon != null
                ? IconButton(
                    icon: Icon(leadingIcon,color: dark ? TColors.white : TColors.dark,),
                    onPressed: leadingOnPressed,
                  )
                : null,
        actions: actions,
        title: title,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
