
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
 
  //TextEditingController dateController = TextEditingController();

   final dateController = TextEditingController();
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
      dateController.text = '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}';
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
}