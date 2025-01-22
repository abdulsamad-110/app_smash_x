import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class SignupController extends GetxController {
  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final dateController = TextEditingController();
  final genderController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final repeatPassController = TextEditingController();

  DateTime? selectedDate;
  String countryCode = '';
  String phoneCode = '';

  // Method to pick a date
  void pickDate(BuildContext context) async {
    DateTime initialDate = DateTime.now();
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (selectedDate != null) {
      selectedDate = selectedDate;
      dateController.text =
          '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}';
    }
  }

  var selectedGender = 'Male'.obs;

  void selectGender(String gender) {
    selectedGender.value = gender;
  }

  // Reset function (optional)
  void resetGender() {
    selectedGender.value = '';
  }

  // void showPicker() {
  //   showCountryPicker(context: context,
  //   );
  // }
//   void showPicker(BuildContext context) {
//   showCountryPicker(
//     context: context,
//     showPhoneCode: true, // Set to true to show the phone code as well
//     onSelect: (Country country) {
//       print('Selected country: ${country.name}');
//       // You can set the country code or name to your controller or text field here
//     },
//   );
// }

///// Validation 
  String? fieldValidation() {
    String? error;

    if (nameController.text.isEmpty) {
      error = 'Name is required';
    } else if (surnameController.text.isEmpty) {
      error = 'Surname is required';
    // } else if (dateController.text.isEmpty) {
    //   error = 'Date of birth is required';
    // } else if (genderController.text.isEmpty) {
    //   error = 'Gender is required';
    // } else if (phoneController.text.isEmpty) {
    //   error = 'Phone number is required';
    } else if (emailController.text.isEmpty) {
      error = 'Email is required';
    } else if (passController.text.isEmpty) {
      error = 'Password is required';
    } else if (repeatPassController.text.isEmpty) {
      error = 'Repeat password is required';
    } else if (passController.text != repeatPassController.text) {
      error = 'Password do not match';
    }

    return error;
  }
  ///// Validation massage
  void showMessage(String title, String message, Color backgroundColor) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: backgroundColor,
      colorText: Colors.white,
    );
  }

  @override
  void onInit() {
    super.onInit();

    dateController.text = DateFormat('dd/MM/yyyy').format(DateTime.now());
  }
}
