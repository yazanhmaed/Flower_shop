import 'package:flutter/material.dart';

import '../../../../resources/values_manager.dart';
import '../../models/on_boarding_models.dart';

class BuildBoardingItem extends StatelessWidget {
  const BuildBoardingItem({super.key, required this.model});
  final BoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
            child: Image(
          image: AssetImage(model.image),
          width: 350,
          height: 325,
        )),
        const SizedBox(height: Appheight.h30),
        Text(
          model.body,
          style: const TextStyle(fontSize: 32),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 300,
          child: Text(
            model.title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
