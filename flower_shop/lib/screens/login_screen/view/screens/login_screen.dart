import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../resources/color_manager.dart';

import '../../controller/cubit.dart';
import '../../controller/states.dart';
import '../widgets/background_widget.dart';
import '../widgets/container_widget.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = LoginCubit.get(context);
          var key = GlobalKey<FormState>();
          return Scaffold(
            backgroundColor: ColorManager.white,
            body: Form(
              key: key,
              child: Stack(
                children: [
                  const BackgroundWidget(),
                  ContainerWidget(cubit: cubit),
                ],
              ),
            ),
          );
        });
  }
}

