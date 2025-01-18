import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smash_x_app/dialogs/myFilterDialog.dart';
import 'package:smash_x_app/dialogs/my_dialog.dart';
import 'package:smash_x_app/widgets/custom_appbar.dart';
import 'activities_controller.dart';
import 'widgets/my_datewidget.dart';

class ActivitiesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ActivitiesController());

    return Scaffold(
      appBar: CustomAppBar(
        showFilterIcon: true,
        onFilterPressed: () {
          myDialog();
        },
      ),
      body: Row(
        children: [
          MyDateWidget(),
        ],
      ),
    );
  }
}
