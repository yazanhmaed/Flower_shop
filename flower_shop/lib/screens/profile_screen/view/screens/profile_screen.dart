import 'package:flutter/material.dart';

import '../../../../resources/color_manager.dart';
import '../../../../resources/components.dart';
import '../../../notifications_screen/notifications_screen.dart';
import '../widgets/info_widget.dart';
import '../widgets/list_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.lightGrey,
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
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Deliver to',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: ColorManager.primary,
                  ),
                  const Text(
                    'Amman',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        ),
        elevation: 0,
      ),
      body: const Column(
        children: [
       
          Padding(
            padding: EdgeInsets.only(top: 30, bottom: 55),
            child: InfoProfileWidget(),
          ),
          
          ListProfileWidget()
        ],
      ),
    );
  }
}
