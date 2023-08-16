import 'package:flutter/material.dart';

import '../../../../resources/color_manager.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/images/RepeatGrid1.png'),
            fit: BoxFit.cover,
          ),
          color: ColorManager.primary,
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(28),
              bottomRight: Radius.circular(28))),
      child: const Center(
          child: Text(
        'Flowers',
        style: TextStyle(
            fontSize: 70,
            color: Colors.white,
            fontWeight: FontWeight.bold),
      )),
    );
  }
}

