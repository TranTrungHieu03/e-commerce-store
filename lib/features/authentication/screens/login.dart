import 'package:e_store/commons/styles/spacing_styles.dart';
import 'package:e_store/commons/widgets/authentication/form_divider.dart';
import 'package:e_store/commons/widgets/authentication/social_btn.dart';
import 'package:e_store/features/authentication/screens/forget_password.dart';
import 'package:e_store/features/authentication/screens/signup.dart';
import 'package:e_store/navigation_menu.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppbarHeight,
          child: Column(
            children: [
              // logo title
              const LoginHeader(),
              //Form
              const LoginForm(),
              //Divider
              FormDivider(
                dividerText: TTexts.signInWIth.capitalize!,
              ),
              const SizedBox(
                height: TSizes.spacebtwItems,
              ),
              //Footer
              const SocialBtn()
            ],
          ),
        ),
      ),
    );
  }
}

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            height: 150,
            image:
                AssetImage(dark ? TImages.lightAppLogo : TImages.darkAppLogo)),
        Text(
          TTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: TSizes.sm,
        ),
        Text(
          TTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spacebtwSections),
      child: Column(children: [
        // Email
        TextFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right), labelText: TTexts.email),
        ),
        const SizedBox(
          height: TSizes.sm,
        ),
        //Password
        TextFormField(
          decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.eye_slash), labelText: TTexts.password),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields / 2,
        ),
        //Remember me & forget pass
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Remember me
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                const Text(TTexts.rememberMe),
              ],
            ),
            //Forget Pass
            TextButton(
                onPressed: () => Get.to(() => const ForgetPasswordScreen()),
                child: const Text(TTexts.forgetPassword))
          ],
        ),
        const SizedBox(
          height: TSizes.spacebtwSections,
        ),
        //sign in
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () => Get.to(() => const NavigationMenu()),
              child: const Text(TTexts.signIn)),
        ),
        const SizedBox(
          height: TSizes.spacebtwItems,
        ),
        //create account
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
              onPressed: () => Get.to(() => const SignupScreen()),
              child: const Text(TTexts.createAccount)),
        ),
        const SizedBox(
          height: TSizes.spacebtwSections,
        ),
      ]),
    ));
  }
}
