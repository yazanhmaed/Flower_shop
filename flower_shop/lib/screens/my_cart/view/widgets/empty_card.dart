import 'package:flutter/material.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset('assets/images/emptyjobs.png'),
        const Text(
          'Cart Empty',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        const Text(
          "You don't have any foods in cart at this time",
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
        const SizedBox(
          height: 50,
        )
      ],
    );
  }
}
