import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/controllers/signup_screen_controller.dart';
import 'package:iubrsa/app/widgets/custom_back_button.dart';
import 'package:iubrsa/app/widgets/custom_button.dart';
import 'package:iubrsa/app/widgets/custom_text_field.dart';

import '../../data/constants/app_data.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final SignupScreenController controller = Get.find();

  @override
  void dispose() {
    Get.delete<SignupScreenController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppData.appName,
          style: AppData.boldTextStyle.copyWith(
            color: AppData.darkBlueColor,
          ),
        ),
        leading: GetBackButton(),
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: AppData.defaultPadding,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Hello there!",
                            style: AppData.boldTextStyle.copyWith(
                              fontSize: 22,
                              height: .95,
                              color: AppData.darkBlueColor.withOpacity(
                                .85,
                              ),
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Please crate an account\nto continue using the app..",
                            style: AppData.lightTextStyle.copyWith(
                              color: AppData.customDarkGrey,
                              height: 1,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          CustomTextField(
                            TEC: controller.usernameTextEditingController.value,
                            hint: "Enter username...",
                            textInputType: TextInputType.emailAddress,
                            maxLines: 1,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomTextField(
                            TEC: controller.emailTextEditingController.value,
                            hint: "Enter email address...",
                            textInputType: TextInputType.emailAddress,
                            maxLines: 1,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomTextField(
                            TEC: controller.phoneTextEditingController.value,
                            hint: "Enter phone number...",
                            textInputType: TextInputType.emailAddress,
                            maxLines: 1,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomTextField(
                            TEC:
                                controller.studentIdTextEditingController.value,
                            hint: "Enter student id...",
                            textInputType: TextInputType.emailAddress,
                            maxLines: 1,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomTextField(
                            TEC: controller.passwordTextEditingController.value,
                            hint: "Password...",
                            textInputType: TextInputType.emailAddress,
                            maxLines: 1,
                            isPassword: true,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          CustomButton(
                            title: "Next",
                            callBackFunction: () {
                              controller.onNextButtonClick();
                            },
                            isLoading: false,
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 1,
                                width: Get.width / 5,
                                color: AppData.customLightGrey,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                ' Or sign up using ',
                                style: AppData.regularTextStyle.copyWith(
                                  color: AppData.customDarkGrey,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 1,
                                width: Get.width / 5,
                                color: AppData.customLightGrey,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: AppData.defaultButtonHeight,
                                width: Get.width / 6,
                                decoration: BoxDecoration(
                                  color: AppData.customWhite,
                                  borderRadius: BorderRadius.circular(
                                    AppData.defaultBorderRadius,
                                  ),
                                  border: Border.all(
                                    width: 1,
                                    color: AppData.customDarkGrey,
                                  ),
                                ),
                                child: const Icon(
                                  FontAwesomeIcons.google,
                                  color: Colors.red,
                                  size: 18,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: AppData.defaultButtonHeight,
                                width: Get.width / 6,
                                decoration: BoxDecoration(
                                  color: AppData.customWhite,
                                  borderRadius: BorderRadius.circular(
                                    AppData.defaultBorderRadius,
                                  ),
                                  border: Border.all(
                                    width: 1,
                                    color: AppData.customDarkGrey,
                                  ),
                                ),
                                child: const Icon(
                                  FontAwesomeIcons.apple,
                                  color: Colors.black,
                                  size: 22,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: AppData.defaultButtonHeight,
                                width: Get.width / 6,
                                decoration: BoxDecoration(
                                  color: AppData.customWhite,
                                  borderRadius: BorderRadius.circular(
                                    AppData.defaultBorderRadius,
                                  ),
                                  border: Border.all(
                                    width: 1,
                                    color: AppData.customDarkGrey,
                                  ),
                                ),
                                child: const Icon(
                                  FontAwesomeIcons.facebook,
                                  color: AppData.royalBlueColor,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                controller.onSigninButtonClick();
              },
              child: Container(
                height: AppData.defaultButtonHeight - 10,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: AppData.lightTextStyle.copyWith(
                        color: AppData.darkBlueColor.withOpacity(.8),
                      ),
                    ),
                    Text(
                      "Signin!",
                      style: AppData.boldTextStyle.copyWith(
                        color: AppData.royalBlueColor,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
