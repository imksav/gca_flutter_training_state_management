import 'package:app2/screens/counter/counterController.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CounterApp extends StatelessWidget {
  // CounterController counterController = CounterController();
  CounterController counterController = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        actions: [
          _getScreenSize(),
        ],
      ),
      floatingActionButton: _floatingActionButton(),
      body: _body(),
    );
  }

  Widget _getScreenSize() {
    return IconButton(
      onPressed: () {
        Get.dialog(SimpleDialog(
          children: [
            Text("Screen Height: ${counterController.getScreenSize().height}"),
            Text("Screen Width: ${counterController.getScreenSize().width}")
          ],
        ));
        icon:
        Icon(Icons.info);
      },
    );
  }

  Widget _floatingActionButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: [
        _btn(
            onPressed: () {
              counterController.incrementCounter();
            },
            icon: Icon(Icons.add),
            buttonColor: Colors.green),
        SizedBox(width: 15),
        _btn(
            onPressed: () {
              counterController.decrementCounter();
            },
            icon: Icon(Icons.remove),
            buttonColor: Colors.red),
      ],
    );
  }

  Widget _btn(
      {@required Function onPressed,
      @required Widget icon,
      @required buttonColor}) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: icon,
      backgroundColor: buttonColor,
    );
  }

  Widget _body() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Pressed: "),
          Obx(() => (Text(counterController.counter.toString()))),
        ],
      ),
    );
  }
}
