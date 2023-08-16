import 'package:flutter/material.dart';

import '../../../../resources/color_manager.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.price,
    this.onPressed,
  }) : super(key: key);
  final String icon;
  final String title;
  final int price;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: ColorManager.secondary3.withOpacity(0.5)),
        color: ColorManager.lightGrey,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            icon,
            height: 80,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(title),
          ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(73, 21)),
                shape: MaterialStatePropertyAll(BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(5))),
                backgroundColor:
                    MaterialStateProperty.all(ColorManager.primary)),
            child: Text('$price JD'),
          )
        ],
      ),
    );
  }
}
