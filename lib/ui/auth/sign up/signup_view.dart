import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:smash_x_app/ui/auth/login/login_view.dart';

import '../../../dialogs/custom_datepicker_dialog.dart';
import '../../../dialogs/gender_dialog.dart';
import 'signup_controller.dart';
import 'widgets/custom_signup_textfield.dart';
import 'widgets/customsgnup_widget.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    final SignupController controller = Get.put(SignupController());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Personal Data",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: [
                  CustomSignupTextfield(
                    label: 'First Name',
                    controller: controller.nameController,
                  ),
                  CustomSignupTextfield(
                    label: 'Surname',
                    controller: controller.surnameController,
                  ),
                  GestureDetector(
                    onTap: () async {
                      final selectedDate = await showDialog<DateTime>(
                        context: context,
                        builder: (context) => CustomDatePickerDialog(),
                      );

                      if (selectedDate != null) {
                        controller.dateController.text =
                            DateFormat('dd/MM/yyyy').format(selectedDate);
                      }
                    },
                    child: SignupTextfield(
                      label: 'Date of birth',
                      controller: controller.dateController,
                      menuIcon: Icons.menu,
                      enabled: false,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => showGenderDialog(context),
                    child: Obx(
                      () => SignupTextfield(
                        label: 'Gender',
                        controller: TextEditingController(
                          text: controller.selectedGender.value.isEmpty
                              ? 'Select Gender'
                              : controller.selectedGender.value,
                        ),
                        menuIcon: Icons.menu,
                        enabled: false,
                      ),
                    ),
                  ),
                  SignupTextfield(
                    label: 'Mobile Phone',
                    controller: controller.phoneController,
                    onButtonPressed: () {
                      showCountryPicker(
                        context: context,
                        showPhoneCode: true,
                        countryListTheme: const CountryListThemeData(
                          flagSize: 16,
                          textStyle: TextStyle(fontSize: 12),
                          bottomSheetHeight: 500,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                        ),
                        onSelect: (Country value) {
                          controller.countryCode = value.countryCode;
                          controller.phoneCode = value.phoneCode;
                        },
                      );
                    },
                  ),
                  CustomSignupTextfield(
                    label: 'Email',
                    controller: controller.emailController,
                  ),
                  CustomSignupTextfield(
                    label: 'Password',
                    controller: controller.passController,
                  ),
                  CustomSignupTextfield(
                    label: 'Repeat Password',
                    controller: controller.repeatPassController,
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
            Positioned(
              right: 20,
              bottom: 0,
              child: FloatingActionButton(
                onPressed: () {
                  final error = controller.fieldValidation();
                  if (error != null) {
                    controller.showMessage(
                        'Validation Error', error, Colors.red);
                  } else {
                    controller.showMessage(
                        'Success', 'Successfully Registered!', Colors.green);
                    ///// Navigate to LoginView
                    Get.to(() => const LoginView());
                  }
                },
                backgroundColor: Colors.black,
                child: const Icon(
                  Icons.done,
                  color: Colors.white,
                ),
                shape: const CircleBorder(),
                elevation: 7,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
