import 'dart:async';
import 'dart:html';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class StopTimeController extends GetxController {
  final StreamController streamController = StreamController();
  RxList<Text> _timeList = [Text("Initial")].obs;
  List<Text> get timeList => _timeList.value;
  stop() {
    streamController.sink.add(DateTime.now().toIso8601String());
  }

  listen() {
    streamController.stream.listen((event) {
      _timeList.value.add(Text(event));
    });
  }
}
