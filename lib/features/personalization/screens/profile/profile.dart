import 'package:e_store/commons/widgets/appbar/appbar.dart';
import 'package:e_store/commons/widgets/images/rounded_image.dart';
import 'package:e_store/commons/widgets/texts/section_heading.dart';
import 'package:e_store/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(
        showBackArrow: true,
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const TRoundedImage(
                    imageUrl: TImages.avatar,
                    width: 80,
                    height: 80,
                    borderRadius: 80,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text("Change Profile Picture"))
                ],
              ),
            ),
            const SizedBox(
              height: TSizes.spacebtwItems / 2,
            ),
            const Divider(),
            const SizedBox(
              height: TSizes.spacebtwItems,
            ),
            const TSectionHeading(
              title: 'Profile Information',
              showActionButton: false,
            ),
            const SizedBox(
              height: TSizes.spacebtwItems,
            ),
            TProfileMenu(title: 'Name', value: 'Hieu Trung', onPressed: () {}),
            TProfileMenu(
                title: 'Username ID', value: 'hieu_trung', onPressed: () {}),
            const SizedBox(
              height: TSizes.spacebtwItems,
            ),
            const Divider(),
            const SizedBox(
              height: TSizes.spacebtwItems,
            ),
            const TSectionHeading(
              title: 'Personal Information',
              showActionButton: false,
            ),
            const SizedBox(
              height: TSizes.spacebtwItems,
            ),
            TProfileMenu(
                title: 'User ID',
                value: '3473',
                icon: Iconsax.copy,
                onPressed: () {}),
            TProfileMenu(
                title: 'E-mail',
                value: 'hieutrung@gmail.com',
                onPressed: () {}),
            TProfileMenu(
                title: 'Phone Number',
                value: '+84 837 94894',
                onPressed: () {}),
            TProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
            TProfileMenu(
                title: 'Date of Birth', value: '8 Aug 2003', onPressed: () {}),
            const Divider(),
            const SizedBox(
              height: TSizes.spacebtwItems,
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Close Account',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(color: Colors.red),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
