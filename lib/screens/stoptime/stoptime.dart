import 'package:app2/screens/stoptime/stoptimecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StopTime extends StatelessWidget {
  StopTimeController stopTimeController = StopTimeController();
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: StopTimeController(),
      builder: (StopTimeController controller) => Scaffold(
        appBar: AppBar(
          title: Text("Stop Time"),
        ),
        floatingActionButton: _floatingActionButton(controller),
        body: _body(controller),
      ),
    );
  }

  Widget _floatingActionButton(StopTimeController controller) {
    return FloatingActionButton(
      onPressed: () {
        stopTimeController.stop();
      },
      child: Icon(Icons.timer),
    );
  }

  Widget _body(StopTimeController controller) {
    return ListView(
      children: [
        controller.timeList,
      ],
    );
  }
}
