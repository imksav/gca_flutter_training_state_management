import 'dart:async';
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class StopTimeController extends GetxController {
  StopTimeController() {
    listen();
  }
  StreamController streamController = StreamController<String>();
  List<Widget> _timeList = [_widget()];
  List<Widget> get timeList => _timeList;
  stop() {
    streamController.sink.add(DateTime.now().toIso8601String());
  }

  listen() {
    print("listening...............");
    streamController.stream.listen((event) {
      print(event);
      List<Widget> tempList = List();
      tempList.add(Text(event));
      tempList.insertAll(0, _timeList);
      _timeList = tempList;
      update();
    });
  }

  static Widget _widget() {
    return SizedBox();
  }
}
