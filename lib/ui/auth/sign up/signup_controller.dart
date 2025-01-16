import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final dateController = TextEditingController();
  final phoneController = TextEditingController();
  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final genderController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  DateTime? selectedDate;

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

  RxString selectedGender = ''.obs;

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
}
