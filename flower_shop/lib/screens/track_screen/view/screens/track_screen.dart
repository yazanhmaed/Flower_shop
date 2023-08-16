import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';

import '../../../../resources/color_manager.dart';

class TrackScreen extends StatelessWidget {
  const TrackScreen({super.key});

  Widget buildSliverAppBar() {
    return SliverAppBar(
      expandedHeight: 500,
      pinned: true,
      stretch: true,
      backgroundColor: Colors.white,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          'assets/images/tracks.png',
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        buildSliverAppBar(),
        SliverList(
            delegate: SliverChildListDelegate([
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Center(
                    child: SizedBox(
                  width: 70,
                  child: Divider(
                    color: ColorManager.grey,
                    thickness: 4,
                  ),
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'On the way',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 24,
                          letterSpacing: 0.27,
                          color: ColorManager.black,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.timer_sharp,
                            color: ColorManager.primary,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text('10 min')
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Order placed',
                          style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 0.27,
                            color: ColorManager.primary,
                          ),
                        ),
                        Text(
                          'On the way',
                          style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 0.27,
                            color: ColorManager.grey1,
                          ),
                        ),
                        Text(
                          'Delivered',
                          style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 0.27,
                            color: ColorManager.grey1,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 100,
                          child: Divider(
                            color: ColorManager.primary,
                            thickness: 3,
                          ),
                        ),
                        const SizedBox(
                          width: 100,
                          child: Divider(
                            color: Colors.green,
                            thickness: 3,
                            indent: 10,
                            endIndent: 9,
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          child: Divider(
                            color: ColorManager.grey,
                            thickness: 3,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    ExpansionTile(
                      expandedCrossAxisAlignment: CrossAxisAlignment.start,
                      iconColor: ColorManager.primary,
                      leading: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: ColorManager.primary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const ImageIcon(
                          AssetImage('assets/images/botanical.png'),
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        'Order ID',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 0.27,
                          color: ColorManager.black,
                        ),
                      ),
                      subtitle: Text(
                        '# 346739',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 0.27,
                          color: ColorManager.grey1,
                        ),
                      ),
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Order Progress',
                          style: TextStyle(
                            fontSize: 15,
                            color: ColorManager.black,
                          ),
                        ),
                        AnotherStepper(
                          stepperList: [
                            StepperData(
                                title: StepperText(
                                  "In Porcess",
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                subtitle: StepperText("Processing your order"),
                                iconWidget: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: Colors.green.shade100,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(30))),
                                  child: Icon(Icons.check,
                                      color: Colors.green.shade900),
                                )),
                            StepperData(
                                title: StepperText("Preparing"),
                                subtitle:
                                    StepperText("Your order is being prepared"),
                                iconWidget: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: Colors.green.shade100,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(30))),
                                  child: Icon(Icons.check,
                                      color: Colors.green.shade900),
                                )),
                            StepperData(
                                title: StepperText("On the way"),
                                subtitle: StepperText(
                                    "Our delivery executive is on the way to deliver your item"),
                                iconWidget: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(30))),
                                  child: Icon(Icons.drive_eta,
                                      color: Colors.grey.shade800),
                                )),
                            StepperData(
                                title: StepperText("Delivered",
                                    textStyle: const TextStyle(
                                      color: Colors.black,
                                    )),
                                iconWidget: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(30))),
                                  child: Icon(Icons.home,
                                      color: Colors.grey.shade800),
                                )),
                          ],
                          stepperDirection: Axis.vertical,
                          iconHeight: 40,
                          iconWidth: 40,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              maxRadius: 30,
                              backgroundColor: ColorManager.lightGrey,
                              backgroundImage:
                                  const AssetImage('assets/images/profile.png'),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Your delivery hero',
                                  style: TextStyle(
                                      color: ColorManager.grey1, fontSize: 14),
                                ),
                                const Text(
                                  'Yazan Hmaed',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Container(
                                  width: 48,
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: ColorManager.lightGrey),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.message,
                                        color: ColorManager.primary,
                                      )),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  width: 48,
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: ColorManager.lightGrey),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.call,
                                        color: ColorManager.primary,
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Delivery Address',
                                style: TextStyle(
                                    color: ColorManager.grey1, fontSize: 14),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: ColorManager.primary,
                                  ),
                                  const Text(
                                    'Amman',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ]))
      ],
    );
  }
}
