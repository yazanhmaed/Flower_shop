import 'package:dotted_border/dotted_border.dart';
import 'package:flower_shop/resources/widgets/button_custom.dart';
import 'package:flower_shop/resources/widgets/input_text.dart';
import 'package:flower_shop/screens/my_cart/controller/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../resources/color_manager.dart';
import '../../../../resources/components.dart';
import '../../../notifications_screen/notifications_screen.dart';
import '../../controller/cubit.dart';
import 'order_screen.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen(
      {super.key, required this.itemTotal, required this.total});

  final int itemTotal;
  final int total;

  @override
  Widget build(BuildContext context) {
    TextEditingController promo = TextEditingController();
    return BlocProvider(
      create: (context) => MyCartCubit(),
      child: BlocConsumer<MyCartCubit, MyCartState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = MyCartCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              backgroundColor: ColorManager.lightGrey,
              centerTitle: false,
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
                      onPressed: () =>
                          navigateTo(context, const NotificationsScreen()),
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
                'Checkout',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
              ),
              elevation: 0,
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Delivery Address',
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: ColorManager.primary,
                        ),
                        const Text(
                          'Amman',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Change',
                            style: TextStyle(
                                fontSize: 16, color: ColorManager.primary),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Text(
                    'Promo Code?',
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                  InputText(
                      hintText: 'Enter Your Promo',
                      labelText: 'Enter Your Promo',
                      validator: 'Enter Your Promo',
                      icon: Icons.local_offer_outlined,
                      controller: promo,
                      suffixIcon: ButtomCustom(
                        text: 'Add',
                        color: ColorManager.primary,
                        textStyle: const TextStyle(color: Colors.white),
                      )),
                  const Text(
                    'Pay With',
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                  Column(
                    children: [
                      RadioListTile(
                        selected: true,
                        title: Row(
                          children: [
                            Image.asset('assets/images/card1.png'),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              "Debit / Credit Card",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ],
                        ),
                        value: "Debit / Credit Card",
                        groupValue: cubit.selCard,
                        onChanged: (value) {
                          cubit.changeCard(value.toString());
                        },
                      ),
                      RadioListTile(
                        title: Row(
                          children: [
                            Image.asset('assets/images/money.png'),
                            const SizedBox(
                              width: 20,
                            ),
                            const Text(
                              "Cash On Delivery",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ],
                        ),
                        value: "Cash On Delivery",
                        groupValue: cubit.selCard,
                        onChanged: (value) {
                          cubit.changeCard(value.toString());
                        },
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      DottedBorder(
                        strokeWidth: 2,
                        strokeCap: StrokeCap.round,
                        borderType: BorderType.RRect,
                        radius: const Radius.circular(12),
                        padding: const EdgeInsets.all(6),
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                          child: Container(
                              width: 370,
                              height: 130,
                              padding: const EdgeInsets.all(10),
                              // decoration: BoxDecoration(
                              color: ColorManager.darksecondary,
                              //     borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text('Item total '),
                                      Text('${itemTotal.toDouble()} JD'),
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Delivery fees'),
                                      Text('5.00 JD'),
                                    ],
                                  ),
                                  const Divider(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text('Total :'),
                                      Text('${total.toDouble()} JD'),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          width: 325,
                          height: 50,
                          child: ButtomCustom(
                            text: 'Confirm',
                            color: ColorManager.primary,
                            onPressed: () {
                              navigateTo(context, const OrderScreen());
                            },
                          )),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
