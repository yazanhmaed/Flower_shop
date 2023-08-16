import 'package:dotted_border/dotted_border.dart';
import 'package:flower_shop/resources/color_manager.dart';
import 'package:flower_shop/resources/widgets/button_custom.dart';
import 'package:flower_shop/screens/my_cart/controller/cubit.dart';
import 'package:flower_shop/screens/my_cart/view/screens/checkout_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../../resources/components.dart';

class CartBuild extends StatelessWidget {
  const CartBuild({super.key, required this.cubit});
  final MyCartCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            separatorBuilder: (context, index) => const SizedBox(
              height: 22,
            ),
            itemCount: cartsList.length,
            itemBuilder: (context, index) {
              
              return Slidable(
                endActionPane: ActionPane(
                    motion: const ScrollMotion(),
                    extentRatio: 0.15,
                    children: [
                      SlidableAction(
                        spacing: 1,
                        onPressed: (val) {
                          cubit.cartList(index);
                        },
                        backgroundColor: ColorManager.secondary2,
                        foregroundColor: Colors.white,
                        icon: Icons.delete,
                        label: 'Delete',
                      ),
                    ]),
                child: SizedBox(
                  width: double.infinity,
                  height: 110,
                  child: Row(
                    children: [
                      Image.asset(
                        cartsList[index].image,
                        width: 100,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            cartsList[index].title,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 15),
                          ),
                          Text(
                            cartsList[index].type,
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 14),
                          ),
                          Text(
                            '${cartsList[index].price} JD ',
                            style: TextStyle(
                                color: ColorManager.primary, fontSize: 16),
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
                              const Text('8 min')
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  if (cartsList[index].count > 1) {
                                    cubit.changeCountMin(index);
                                    cubit.addCountItem();
                                    // cubit.addItemTotal();
                                  }
                                },
                                child: Container(
                                  width: 28,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: ColorManager.darksecondary,
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Icon(Icons.minimize_rounded),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Text('${cartsList[index].count}'),
                              ),
                              GestureDetector(
                                onTap: () {
                                  cubit.changeCountPlus(index);
                                  cubit.addCountItem();
                                  // cubit.addItemTotal();
                                },
                                child: Container(
                                  width: 28,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: ColorManager.primary,
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 50,
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        DottedBorder(
          strokeWidth: 2,
          strokeCap: StrokeCap.round,
          borderType: BorderType.RRect,
          radius: const Radius.circular(12),
          padding: const EdgeInsets.all(6),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            child: Container(
                width: 370,
                height: 130,
                padding: const EdgeInsets.all(10),
                // decoration: BoxDecoration(
                color: ColorManager.darksecondary,
                //     borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Item total '),
                        Text('${cubit.itemTotal.toDouble()} JD'),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Delivery fees'),
                        Text('5.00 JD'),
                      ],
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Total :'),
                        Text('${cubit.total.toDouble()} JD'),
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
              text: 'Checkout',
              color: ColorManager.primary,
              onPressed: () => navigateTo(
                  context,
                  CheckoutScreen(
                    itemTotal: cubit.itemTotal,
                    total: cubit.total,
                  )),
            )),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
