import 'package:flutter/material.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers(
      {super.key,
      required this.dis,
      required this.title,
      required this.image,
      required this.color});
  final String dis;
  final String title;
  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/RepeatGrid1.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(16),
              color: color),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '$dis %',
                    style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Image.asset(
                  image,
                  width: 160,
                  height: 160,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
