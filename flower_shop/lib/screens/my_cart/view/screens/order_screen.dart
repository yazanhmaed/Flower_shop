import 'package:flower_shop/screens/layout/home_layout.dart';
import 'package:flutter/material.dart';

import '../../../../resources/color_manager.dart';
import '../../../../resources/components.dart';
import '../../../notifications_screen/notifications_screen.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.lightGrey,
        centerTitle: false,
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Container(
              width: 30,
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: IconButton(
                onPressed: () =>
                    navigateTo(context, const NotificationsScreen()),
                icon: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CircleAvatar(
                      maxRadius: 4,
                      backgroundColor: ColorManager.primary,
                    ),
                    const Icon(
                      Icons.notifications,
                      color: Colors.grey,
                    )
                  ],
                ),
                color: Colors.white,
              ),
            ),
          )
        ],
        title: const Text(
          'Checkout',
          style: TextStyle(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.normal),
        ),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 100,
          ),
          Image.asset('assets/images/order.png'),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Your Order Done Successfully',
            style: TextStyle(color: Colors.black, fontSize: 22),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'You will get your order within 12 min. ',
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'thanks for using our services',
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 330,
            height: 50,
            child: TextButton(
                onPressed: () {
                  currentIndex = 3;
                  navigateAndFinish(context, const HomeLayoutScreen());
                },
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                    side: MaterialStatePropertyAll(
                        BorderSide(color: ColorManager.primary))),
                child: Text(
                  'Track Your Order',
                  style: TextStyle(color: ColorManager.primary, fontSize: 14),
                )),
          ),
          TextButton(
              onPressed: () {
                currentIndex = 0;
                navigateAndFinish(context, const HomeLayoutScreen());
              },
              child: const Text(
                'Back to Home',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              )),
        ],
      ),
    );
  }
}
