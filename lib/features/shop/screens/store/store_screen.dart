import 'package:flutter/material.dart';
import 'package:smart_bazaar/common/widgets/appbar/appbar.dart';
import 'package:smart_bazaar/common/widgets/appbar/tab_bar.dart';
import 'package:smart_bazaar/common/widgets/custome_search_bar/custome_search_bar.darrt.dart';
import 'package:smart_bazaar/common/widgets/layout/grid_layout.dart';
import 'package:smart_bazaar/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:smart_bazaar/common/widgets/texts/section_heading.dart';

import 'package:smart_bazaar/utils/constants/sizes.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../../common/widgets/brands/brand_card.dart';
import 'widget/category_tab.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final screenHeight = MediaQuery.of(context).size.height;
    final double expandedHeight = screenHeight * 0.45;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCartCounterIcon(
              iconColor: dark ? Colors.white : Colors.black,
              onPressed: () {},
            )
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                backgroundColor: dark ? TColors.black : TColors.white,
                expandedHeight: expandedHeight,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ///---SearchBar
                      const TSearchBar(
                        text: "Search in Store",
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),

                      /// --- Featured Brand
                      TSectionHeading(
                        title: "Featured Brand",
                        onPressed: () {},
                        showActionButton: true,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems / 1.5,
                      ),
                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,

                        itemBuilder: (_, index) {
                          return const TBrandCard(
                            showBorder: true,
                          );
                        },
                      )
                    ],
                  ),
                ),
                bottom: TTabBar(tabs: const [
                  Tab(text: "Sports"),
                  Tab(text: "Furniture"),
                  Tab(text: "Electronics"),
                  Tab(text: "Clothes"),
                  Tab(text: "Cosmetics"),
                ]),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
              TCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
