import 'package:flutter/material.dart';

class MyTask extends StatefulWidget {
  String title;
  bool completed;
  MyTask(this.title, this.completed);
  @override
  _MyTaskState createState() => _MyTaskState();
}

class _MyTaskState extends State<MyTask> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Row(children: [
          widget.completed
              ? Icon(
                  Icons.check_circle,
                  color: Colors.green,
                )
              : Icon(
                  Icons.cancel_rounded,
                  color: Colors.red,
                ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Text(
                    widget.title,
                  )))
        ]),
      ),
    );
  }
}
