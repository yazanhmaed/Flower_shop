import 'package:flower_shop/resources/components.dart';
import 'package:flower_shop/screens/login_screen/view/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../../../../resources/color_manager.dart';

class ListProfileWidget extends StatelessWidget {
  const ListProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.person),
          title: Text(
            'Manage Profile',
            style: TextStyle(color: ColorManager.grey1, fontSize: 15),
          ),
          trailing: IconButton(
              onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios)),
        ),
        ListTile(
          leading: const Icon(Icons.payment),
          title: Text(
            'Payments',
            style: TextStyle(color: ColorManager.grey1, fontSize: 15),
          ),
          trailing: IconButton(
              onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios)),
        ),
        ListTile(
          leading: const Icon(Icons.location_on),
          title: Text(
            'My Location',
            style: TextStyle(color: ColorManager.grey1, fontSize: 15),
          ),
          trailing: IconButton(
              onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios)),
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: Text(
            'Settings',
            style: TextStyle(color: ColorManager.grey1, fontSize: 15),
          ),
          trailing: IconButton(
              onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios)),
        ),
        ListTile(
          leading: const Icon(Icons.language),
          title: Text(
            'Language',
            style: TextStyle(color: ColorManager.grey1, fontSize: 15),
          ),
          trailing: IconButton(
              onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios)),
        ),
        ListTile(
          leading: const Icon(Icons.support_agent),
          title: Text(
            'Support',
            style: TextStyle(color: ColorManager.grey1, fontSize: 15),
          ),
          trailing: IconButton(
              onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios)),
        ),
        ListTile(
          leading: const Icon(Icons.dark_mode),
          title: Text(
            'Dark Mode',
            style: TextStyle(color: ColorManager.grey1, fontSize: 15),
          ),
          trailing: Switch(value: false, onChanged: (v) {}),
        ),
        ListTile(
          leading: const Icon(Icons.logout),
          title: Text(
            'Log Out',
            style: TextStyle(color: ColorManager.grey1, fontSize: 15),
          ),
          trailing: IconButton(
              onPressed: () {
                currentIndex = 0;
                navigateAndFinish(context, const LoginScreen());
              },
              icon: const Icon(Icons.arrow_forward_ios)),
        ),
      ],
    );
  }
}
