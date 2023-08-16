import 'package:flutter/material.dart';

import '../../resources/color_manager.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List note = [
      {
        'title': 'Your orders has been picked up',
        'time': 'Now',
      },
      {
        'title': 'Your order has been delivered',
        'time': '1h ago',
      },
      {
        'title': 'Your order has been canceled',
        'time': '3h ago',
      },
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ColorManager.lightGrey,
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
                onPressed: () {},
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
          'Notifications',
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        elevation: 0,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          height: 20,
        ),
        itemCount: note.length,
        itemBuilder: (context, index) => SizedBox(
          height: 40,
          width: double.infinity,
          child: ListTile(
            leading: Container(
              width: 13,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: ColorManager.primary),
            ),
            title: Text(
              note[index]['title'],
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
            subtitle: Text(note[index]['time']),
          ),
        ),
      ),
    );
  }
}
