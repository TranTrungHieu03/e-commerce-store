import 'package:e_store/commons/widgets/appbar/appbar.dart';
import 'package:e_store/features/shop/screens/order/widgets/order_list_items.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(
        showBackArrow: true,
        title: Text(
          'My Orders',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        //Orders
        child: TOrderListItems(),
      ),
    );
  }
}
