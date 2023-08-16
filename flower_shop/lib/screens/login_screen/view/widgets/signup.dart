import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../../../resources/color_manager.dart';
import '../../../../resources/widgets/button_custom.dart';
import '../../../../resources/widgets/input_text.dart';

class SignUpBuilder extends StatelessWidget {
  const SignUpBuilder({
    Key? key,
    required this.emailController,
    required this.passwordController,
    required this.nameController,
    this.onPressed,
    this.onPressedobscureText,
    required this.obscureText,
    required this.positive,
  }) : super(key: key);
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final Function()? onPressed;
  final Function()? onPressedobscureText;
  final bool obscureText;

  final int positive;

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      position: positive,
      duration: const Duration(milliseconds: 1500),
      child: SlideAnimation(
        horizontalOffset: 300,
        child: FadeInAnimation(
          child: Container(
            decoration: BoxDecoration(
              color: ColorManager.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                InputText(
                  checkEmail: true,
                  type: TextInputType.name,
                  hintText: '',
                  validator: 'Enter your Name',
                  icon: Icons.person,
                  controller: nameController,
                  labelText: 'Name',
                ),
                InputText(
                  checkEmail: false,
                  type: TextInputType.emailAddress,
                  hintText: '',
                  validator: emailController.text.isEmpty
                      ? 'Enter your Email'
                      : 'Enter the email correctly',
                  icon: Icons.email,
                  controller: emailController,
                  labelText: 'Email',
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
                Container(
                  height: 50,
                  // width: 300,
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorManager.grey),
                      borderRadius: BorderRadius.circular(80)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 12),
                        child: Image.asset(
                          'assets/images/google.png',
                        ),
                      ),
                      const Text('Sign Up with Facebook')
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  // width: 300,
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorManager.grey),
                      borderRadius: BorderRadius.circular(80)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 12),
                        child: Image.asset(
                          'assets/images/google.png',
                        ),
                      ),
                      const Text('Sign Up with Google')
                    ],
                  ),
                ),
                const SizedBox(
                  height: 37,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Do you have an account?",
                      style: TextStyle(
                        color: ColorManager.black,
                        fontSize: 12,
                      ),
                    ),
                    Text('Login now',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor: ColorManager.primary,
                            color: ColorManager.primary,
                            fontSize: 14)),
                  ],
                ),
                const SizedBox(
                  height: 37,
                ),
                SizedBox(
                  width: 145,
                  height: 50,
                  child: ButtomCustom(
                    text: 'Sign Up',
                    color: ColorManager.primary,
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
