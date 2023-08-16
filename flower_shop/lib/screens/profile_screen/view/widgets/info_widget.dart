import 'package:flutter/material.dart';

import '../../../../resources/color_manager.dart';

class InfoProfileWidget extends StatelessWidget {
  const InfoProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          maxRadius: 70,
          backgroundColor: ColorManager.lightGrey,
          backgroundImage: const AssetImage('assets/images/profile.png'),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Yazan Hmaed',
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
            Text(
              'Amman',
              style: TextStyle(color: ColorManager.grey, fontSize: 18),
            ),
          ],
        ),
        Container(
          width: 48,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: ColorManager.lightGrey),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit,
                color: Colors.black,
              )),
        ),
      ],
    );
  }
}
