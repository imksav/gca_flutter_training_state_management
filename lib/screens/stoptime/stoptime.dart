import 'package:app2/screens/stoptime/stoptiecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StopTime extends StatelessWidget {
  StopTimeController stopTimeControler = StopTimeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stop Time"),
      ),
      floatingActionButton: _floatingActionButton(),
      body: _body(),
    );
  }

  Widget _floatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        stopTimeControler.stop();
      },
      child: Icon(Icons.timer),
    );
  }

  Widget _body() {
    return Obx(
      () => ListView(
        children: [
          stopTimeControler._timeList,
        ],
      ),
    );
  }
}
