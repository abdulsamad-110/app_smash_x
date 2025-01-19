import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:smash_x_app/dialogs/custom_datepicker_dialog.dart';
import 'package:smash_x_app/ui/auth/sign%20up/signup_controller.dart';
import 'package:smash_x_app/ui/auth/sign%20up/widgets/custom_button.dart';
import 'package:smash_x_app/ui/auth/sign%20up/widgets/custom_signup_textfield.dart';
import 'package:smash_x_app/ui/auth/sign%20up/widgets/customsgnup_widget.dart';
import 'package:smash_x_app/dialogs/gender_dialog.dart';

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
                    controller: TextEditingController(),
                  ),
                  CustomSignupTextfield(
                    label: 'Surname',
                    controller: TextEditingController(),
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
                        controller:  TextEditingController(
                          text: controller.selectedGender.value,
                        ),
                        menuIcon: Icons.menu,
                        enabled: false,
                      ),
                    ),
                  ),
                  SignupTextfield(
                    label: 'Mobile Phone',
                    controller:  TextEditingController(),
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
                          print(value.countryCode.toString());
                          print(value.phoneCode.toString());
                          controller.countryCode = value.countryCode;
                          controller.phoneCode = value.phoneCode;
                        },
                      );
                    },
                  ),
                  CustomSignupTextfield(
                    label: 'Email',
                    controller: TextEditingController(),
                  ),
                  CustomSignupTextfield(
                    label: 'Password',
                    controller: TextEditingController(),
                  ),
                  CustomSignupTextfield(
                    label: 'Repeat Password',
                    controller: TextEditingController(),
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
                  // Perform your submission logic here
                },
                backgroundColor: Colors.black,
                child:  const Icon(
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
