import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smart_bazaar/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:smart_bazaar/common/widgets/list_tile/setting_menu_tile.dart';
import 'package:smart_bazaar/common/widgets/texts/section_heading.dart';
import 'package:smart_bazaar/features/personalization/screens/profile/profile.dart';
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
                  TUserProfileTile( onPressed: () => Get.to(const ProfileScreen()),),

                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),

            ///--body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  ///--Account Setting
                  const TSectionHeading(
                    title: "Account Settings",
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  const TSettingMenuTile(
                    icon: Iconsax.safe_home,
                    title: "My Addresses",
                    subTitle: "Set shopping delivery address",
                  ),
                  const TSettingMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: "My Cart",
                    subTitle: "Add,remove products and move to checkout",
                  ), const TSettingMenuTile(
                    icon: Iconsax.bag_tick,
                    title: "My Orders",
                    subTitle: "In-progress and Completed Orders",
                  ), const TSettingMenuTile(
                    icon: Iconsax.bank,
                    title: "Bank Account",
                    subTitle: "Withdraw balance to registered bank account",
                  ), const TSettingMenuTile(
                    icon: Iconsax.discount_shape,
                    title: "My Coupons",
                    subTitle: "List of all discount coupons",
                  ) ,const TSettingMenuTile(
                    icon: Iconsax.notification,
                    title: "Notifications",
                    subTitle: "Set any kind of notification messages",
                  ),
                  const TSettingMenuTile(
                    icon: Iconsax.security_card,
                    title: "Account Privacy",
                    subTitle: "Manage data usage and connected accounts",
                  ),
                  ///--App Settings
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  const TSectionHeading(
                    title: "App Settings",
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  const TSettingMenuTile(
                    icon: Iconsax.paperclip,
                    title: "Load Data",
                    subTitle: "Upload Data to your Cloud Firebase",
                  ),
                  TSettingMenuTile(
                    icon: Iconsax.location,
                    title: "GeoLocation",
                    subTitle: "Set recommendation based on location",
                    trailing: Switch(value: false, onChanged: (value) {

                    },),),
              TSettingMenuTile(
                icon: Iconsax.security_user,
                title: "Safe Mode",
                subTitle: "Search result is safe for all ages",
                trailing: Switch(value: false, onChanged: (value) {

                },),),
                  TSettingMenuTile(
                    icon: Iconsax.image,
                    title: "HD Image Quality",
                    subTitle: "Set image quality to be seen",
                    trailing: Switch(value: false, onChanged: (value) {

                    },),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
