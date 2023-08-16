import 'package:flower_shop/resources/widgets/button_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../../../resources/color_manager.dart';
import '../../../../resources/styles_manager.dart';
import '../../../../resources/widgets/input_text.dart';


class LoginBuilder extends StatelessWidget {
  const LoginBuilder({
    Key? key,
    required this.emailController,
    required this.passwordController,
    this.onPressed,
    required this.obscureText,
    this.onPressedobscureText,
    this.onTap,
    required this.positive,
  }) : super(key: key);

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final Function()? onPressed;
  final Function()? onPressedobscureText;
  final Function()? onTap;
  final bool obscureText;

  final int positive;

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      position: positive,
      duration: const Duration(milliseconds: 1500),
      child: SlideAnimation(
        horizontalOffset: -300,
        child: FadeInAnimation(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    color: ColorManager.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    InputText(
                      type: TextInputType.emailAddress,
                      hintText: '',
                      validator: emailController.text.isEmpty
                          ? 'Enter your Email'
                          : 'Enter the email correctly',
                      icon: Icons.email,
                      controller: emailController,
                      labelText: 'Email',
                      checkEmail: false,
                    ),
             
                    InputText(
                      checkEmail: true,
                      type: TextInputType.visiblePassword,
                      hintText: '',
                      validator: 'Enter your Password',
                      icon: Icons.password,
                      controller: passwordController,
                      labelText: 'Password',
                      obscureText: obscureText,
                      suffixIcon: IconButton(
                          onPressed: onPressedobscureText,
                          icon: obscureText == true
                              ? Icon(
                                  Icons.visibility,
                                  color: ColorManager.grey,
                                )
                              : Icon(
                                  Icons.visibility_off,
                                  color: ColorManager.grey,
                                )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot password ? ',
                          style: getBoldStyle(color: ColorManager.primary)
                              .copyWith(fontSize: 14),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      'or login with ',
                      style: getBoldStyle(color: ColorManager.black)
                          .copyWith(fontSize: 12),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 54,
                          height: 54,
                          decoration: BoxDecoration(
                              border: Border.all(color: ColorManager.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Image.asset(
                              'assets/images/google.png',
                            ),
                          ),
                        ),
                        Container(
                          width: 54,
                          height: 54,
                          decoration: BoxDecoration(
                              border: Border.all(color: ColorManager.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Image.asset(
                              'assets/images/google.png',
                            ),
                          ),
                        ),
                        Container(
                          width: 54,
                          height: 54,
                          decoration: BoxDecoration(
                              border: Border.all(color: ColorManager.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Image.asset(
                              'assets/images/google.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 31,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: ColorManager.black,
                            fontSize: 12,
                          ),
                        ),
                        Text('Register now',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: ColorManager.primary,
                                color: ColorManager.primary,
                                fontSize: 14)),
                      ],
                    ),
                    const SizedBox(
                      height: 43,
                    ),
                    SizedBox(
                      width: 145,
                      height: 50,
                      child: ButtomCustom(
                        text: 'Login',
                        color: ColorManager.primary,
                        onPressed:onPressed,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
