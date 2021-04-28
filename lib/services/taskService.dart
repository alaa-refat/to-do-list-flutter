import 'package:dio/dio.dart';
import 'package:todolist/models/task.dart';

class TaskService {
  String url = "https://jsonplaceholder.typicode.com/todos";
  Future<List<Task>> getTasks() async {
    Response response = await Dio().get(url);
    List<Task> tasks = [];
    var data = response.data;
    data.forEach((value) {
      tasks.add(Task.fromJson(value));
    });
    return tasks;
  }
}
