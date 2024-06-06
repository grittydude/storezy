import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:storezy/app_theme.dart';
import 'package:storezy/controllers/store_controller.dart';
import 'package:storezy/controllers/theme_controller.dart';
import 'package:storezy/widgets/card.dart';

import 'widgets/nav_drawer.dart';

class Home extends GetView<StoreController> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(ThemeController());

    return Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          title: const Text('Storezy'),
          actions: [
            IconButton(
                onPressed: () {
                  if (Get.isDarkMode) {
                    themeController.changeTheme(Themes.lightTheme);
                    themeController.saveTheme(false);
                  } else {
                    themeController.changeTheme(Themes.darkTheme);
                    themeController.saveTheme(true);
                  }
                },
                icon: Get.isDarkMode
                    ? const Icon(Icons.light_mode_outlined)
                    : const Icon(Icons.dark_mode_outlined))
          ],
        ),
        drawer: NavDrawer(),
        body: Container(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                MainCard(
                  title: 'Store Info',
                  body: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            child: Text('Store name:'),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Obx(
                            () => Flexible(
                                fit: FlexFit.tight,
                                child: Text(
                                    controller.storeName.value.toString())),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            child: Text('Store followers:'),
                          ),
                          Text('With Obx:'),
                          Text('11:'),
                          Text('With GetBuilder 11:'),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            child: Text('Status:'),
                          ),
                          Text('Open'),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                MainCard(
                    title: 'Followers',
                    body: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Text('11');
                      },
                    )),
                const SizedBox(
                  height: 20,
                ),
                MainCard(
                    title: 'Reviews',
                    body: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text('David'),
                          subtitle: Text('Am amazing store'),
                        );
                      },
                    )),
              ],
            ),
          ),
        ));
  }
}
