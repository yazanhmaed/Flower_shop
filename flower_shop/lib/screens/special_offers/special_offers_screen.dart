import 'package:flower_shop/screens/home_screen/models/flower_model.dart';
import 'package:flutter/material.dart';

import '../../resources/color_manager.dart';

class SpecialOffersScreen extends StatelessWidget {
  const SpecialOffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Special Offers',
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        elevation: 0,
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: FlowerModel.offers.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: FlowerModel.offers[index],
          );
        },
      ),
    );
  }
}
