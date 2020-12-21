import 'package:app2/screens/homepage/homepagecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Using SharedPreferences"),
      ),
      body: GetBuilder(
        init: HomePageController(),
        builder: (HomePageController homePageController) => Column(
          children: [
            TextField(
              controller: homePageController.textFieldController,
            ),
            FlatButton(
              onPressed: () {
                homePageController.save();
              },
              child: Text("Save"),
              color: Colors.green,
            ),
            FlatButton(
              onPressed: () {
                homePageController.load();
              },
              child: Text("Load"),
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
