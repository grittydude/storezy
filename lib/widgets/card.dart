import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storezy/constants/colors.dart';

class MainCard extends StatelessWidget {
  final String title;
  final Widget body;
  const MainCard({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            color: Get.isDarkMode ? Colors.grey : AppColors.babyPink,
            child: Text(
              title,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: body,
          )
        ],
      ),
    );
  }
}
