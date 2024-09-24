import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smart_bazaar/common/widgets/appbar/appbar.dart';
import 'package:smart_bazaar/common/widgets/icons/t_circular_icon.dart';
import 'package:smart_bazaar/common/widgets/layout/grid_layout.dart';
import 'package:smart_bazaar/common/widgets/products_cart/product_card_vertical.dart';
import 'package:smart_bazaar/features/shop/screens/home/home.dart';
import 'package:smart_bazaar/utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          "WishList",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(const HomeScreen()),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical(),)
            ],
          ),
        ),
      ),
    );
  }
}
