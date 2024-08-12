import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

import 'package:smart_bazaar/common/widgets/products_cart/cart_menu_icon.dart';
import 'package:smart_bazaar/utils/constants/image_strings.dart';
import 'package:smart_bazaar/utils/constants/sizes.dart';
import '../../../../common/widgets/custome_search_bar/custome_search_bar.darrt.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import 'widgets/home_appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          ///Header from primary_header
          TPrimaryHeaderContainer(
            child: Column(
              children: [
                ///AppBar


                const THomeAppBar(),
                const SizedBox(height: TSizes.spaceBtwSections),

                ///Search Bar
                const TSearchBar(
                  text: "Search in Store",
                  icon: Iconsax.search_normal,
                ),
                const SizedBox(height: TSizes.spaceBtwSections),

                ///----Categories----
                Padding(
                  padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      const TSectionHeading(
                        title: "Popular Categories",
                        showActionButton: true,textColor: TColors.white,
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems),
                      SizedBox(
                        height: 80,
                        child: ListView.builder(
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, index) {
                            return  const TVerticalImageText(textColor: TColors.white,image: TImages.shoeIcon,title: "Shoe Category",backgroundColor: TColors.white,);
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key, required this.image, required this.title, required this.textColor, this.backgroundColor, this.onTap,
  });
final String image , title;
final Color textColor;
final Color? backgroundColor;
final void Function() ? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right:TSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child:  Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: TColors.dark,
                ),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            SizedBox(
              width:55,
                child: Text(
             title,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: textColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
            ),),

          ],
        ),
      ),
    );
  }
}
