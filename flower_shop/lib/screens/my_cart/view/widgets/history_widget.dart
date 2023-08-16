import 'package:flutter/material.dart';

import '../../../../resources/color_manager.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    width: double.infinity,
    height: 110,
    child: Row(
      children: [
        Image.asset('assets/images/flowerbouquet1.png'),
        const SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Lorem ipsum dolor',
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            const Text(
              'Lorem ipsum ',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            Text(
              '10 JD ',
              style: TextStyle(color: ColorManager.primary, fontSize: 16),
            ),
          ],
        ),
        const Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Icon(
                  Icons.timer_sharp,
                  color: ColorManager.primary,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text('8.11.2022')
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.replay_rounded,
                  color: ColorManager.primary,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text('Reorder',
                    style: TextStyle(
                        color: ColorManager.primary, fontSize: 16))
              ],
            ),
          ],
        ),
        const SizedBox(
          width: 50,
        )
      ],
    ),
      );
  }
}
