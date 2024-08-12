import 'package:flutter/material.dart';
import 'package:smart_bazaar/features/authentication/controllers/onBoarding_controller.dart';

import 'package:smart_bazaar/utils/constants/sizes.dart';
import 'package:smart_bazaar/utils/device/device_utility.dart';




class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child:  TextButton(
          onPressed:  controller.skipPage ,
          child: const Text("Skip",),
        ));
  }
}


