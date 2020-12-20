import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final TextEditingController _textFieldController = TextEditingController();
  final HomeController homeController = HomeController();
  // String value = "initial";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Color Swapper"),
      ),
      body: GetBuilder(
        init: HomeController(),
        builder: (HomeController homeController) => Column(
          children: [
            TextField(
              onChanged: (value) {
                homeController.updateValue(value);
              },
              controller: _textFieldController,
            ),
            RaisedButton(
              onPressed: () {
                // print(_textFieldController.text);
                homeController.updateValue(_textFieldController.text);
              },
              color: Colors.green,
              child: Text("Display", style: TextStyle(color: Colors.amber)),
            ),
            Text(homeController.inputText)
            // Obx(() => Text(homeController.inputText))
          ],
        ),
      ),
    );
  }
}

class HomeController extends GetxController {
  // RxString _inputText = 'Initial'.obs;
  // String get inputText => _inputText.value;
  // updateValue(String str) {
  //   _inputText.value = str;
  // }

  String _inputText = 'Initial';
  String get inputText => _inputText;
  updateValue(String str) {
    _inputText = str;
  }
}
