import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePageController extends GetxController {
  final TextEditingController textFieldController = TextEditingController();
  save() async {
    SharedPreferences savePreferences = await SharedPreferences.getInstance();
    String value = textFieldController.text;
    bool isSaved = await savePreferences.setString("enteredText", value);

    if (isSaved) {
      // print("Saved");
      textFieldController.clear();
    }
  }

  load() async {
    SharedPreferences loadPreferences = await SharedPreferences.getInstance();
    String loadedValue = loadPreferences.getString("enteredText");
    print(loadedValue);
    textFieldController.text = loadedValue;
  }

  clear() async {
    SharedPreferences clearPreferences = await SharedPreferences.getInstance();
    clearPreferences.clear();
  }
}
