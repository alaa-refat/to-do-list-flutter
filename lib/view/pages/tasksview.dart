import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';
import 'package:todolist/services/taskService.dart';
import 'package:todolist/view/widgets/MyTask.dart';

class TasksView extends StatefulWidget {
  @override
  _TasksViewState createState() => _TasksViewState();
}

class _TasksViewState extends State<TasksView> {
  bool loading = true;
  List<Task> tasks = [];

  getTasks() async {
    tasks = await TaskService().getTasks();
    loading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getTasks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (BuildContext context, int index) {
          return MyTask(tasks[index].title, tasks[index].completed);
        },
      ),
    );
  }
}
