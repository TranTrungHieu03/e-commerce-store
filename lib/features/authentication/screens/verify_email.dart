import 'package:e_store/commons/widgets/success/success_screen.dart';
import 'package:e_store/features/authentication/screens/login.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: const AssetImage(TImages.deliveryEmailIllustration),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: TSizes.spacebtwSections,
              ),

              //Title and subtitle
              Text(
                'Confirm your email address!',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spacebtwItems,
              ),
              Text(
                'support@hieu.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spacebtwItems,
              ),
              Text(
                'Congratulation! Your Account Await: Verify Your Email to Start Shopping and Experience a World of Unrivaled Deals and Personalized Offers.',
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spacebtwItems,
              ),

              //button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => SuccessScreen(
                      image: TImages.deliveryEmailIllustration,
                      title: 'Your account successfully created!',
                      subTitle:
                          'Welcome to Your Ultimate Shopping Destination. Your Account is Created. Unleash the Joy of Seamless Online Shopping! ',
                      onPressed: () => Get.to(() => const LoginScreen()))),
                  child: const Text('Continue'),
                ),
              ),
              const SizedBox(
                height: TSizes.spacebtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Resend Email'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
