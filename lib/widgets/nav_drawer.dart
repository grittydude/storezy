import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storezy/constants/colors.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: Center(
            child: Text(
              'Storezy',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),
          )),
          ListTile(
            leading: Icon(Icons.change_circle_sharp,
                color: Get.isDarkMode
                    ? AppColors.spaceCadet
                    : AppColors.spaceBlue),
            title: Text(
              'Change store name',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Get.isDarkMode
                      ? AppColors.spaceCadet
                      : AppColors.spaceBlue),
            ),
            onTap: () {
              //close the drawer and go to another screen
            },
          ),
          ListTile(
            leading: Icon(Icons.add_reaction_sharp,
                color: Get.isDarkMode
                    ? AppColors.spaceCadet
                    : AppColors.spaceBlue),
            title: Text(
              'Add followers',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Get.isDarkMode
                      ? AppColors.spaceCadet
                      : AppColors.spaceBlue),
            ),
            onTap: () {
              //close the drawer and go to another screen
            },
          ),
          ListTile(
            leading: Icon(Icons.add_task_sharp,
                color: Get.isDarkMode
                    ? AppColors.spaceCadet
                    : AppColors.spaceBlue),
            title: Text(
              'Increment Followers',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Get.isDarkMode
                      ? AppColors.spaceCadet
                      : AppColors.spaceBlue),
            ),
            onTap: () {
              //close the drawer and go to another screen
            },
          ),
          ListTile(
            leading: Icon(Icons.toggle_on_sharp,
                color: Get.isDarkMode
                    ? AppColors.spaceCadet
                    : AppColors.spaceBlue),
            title: Text(
              'Toggle Store Status',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Get.isDarkMode
                      ? AppColors.spaceCadet
                      : AppColors.spaceBlue),
            ),
            onTap: () {
              //close the drawer and go to another screen
            },
          ),
          ListTile(
            leading: Icon(Icons.add_comment_sharp,
                color: Get.isDarkMode
                    ? AppColors.spaceCadet
                    : AppColors.spaceBlue),
            title: Text(
              'Add Reviews',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Get.isDarkMode
                      ? AppColors.spaceCadet
                      : AppColors.spaceBlue),
            ),
            onTap: () {
              //close the drawer and go to another screen
            },
          ),
        ],
      ),
    );
  }
}
