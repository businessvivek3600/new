import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smart_bazaar/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:smart_bazaar/common/widgets/images/t_circular_image.dart';
import 'package:smart_bazaar/common/widgets/list_tile/setting_menu_tile.dart';
import 'package:smart_bazaar/common/widgets/texts/section_heading.dart';
import 'package:smart_bazaar/utils/constants/image_strings.dart';
import 'package:smart_bazaar/utils/constants/sizes.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/list_tile/user_profile_tile.dart';
import '../../../../utils/constants/colors.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///--Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///--AppBar
                  TAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  ///User Profile Card
                  const TUserProfileTile(),

                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),

            ///--body
            const Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  ///--Account Setting
                  TSectionHeading(
                    title: "Account Settings",
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.safe_home,
                    title: "My Addresses",
                    subTitle: "Set shopping delivery address",
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: "My Cart",
                    subTitle: "Add,remove products and move to checkout",
                  ), TSettingMenuTile(
                    icon: Iconsax.bag_tick,
                    title: "My Orders",
                    subTitle: "In-progress and Completed Orders",
                  ), TSettingMenuTile(
                    icon: Iconsax.bank,
                    title: "Bank Account",
                    subTitle: "Withdraw balance to registered bank account",
                  ), TSettingMenuTile(
                    icon: Iconsax.discount_shape,
                    title: "My Coupons",
                    subTitle: "List of all discount coupons",
                  ) ,TSettingMenuTile(
                    icon: Iconsax.notification,
                    title: "Notifications",
                    subTitle: "Set any kind of notification messages",
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
