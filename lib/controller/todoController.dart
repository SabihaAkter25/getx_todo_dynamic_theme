import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:todo_getx/model/todo_model.dart';

class TodoController extends GetxController {
  var todoList = <TodoModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    getTodos();
  }

  Future<List<TodoModel>?> getTodos() async {
    print("🔵 Fetching todos...");

    final url = "https://691982979ccba073ee932364.mockapi.io/api/TodoList"; // FIX URL

    final response = await http.get(Uri.parse(url));

    print("🔴 Status: ${response.statusCode}");
    print("🟢 Body: ${response.body}");

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);

      todoList.clear(); // optional to avoid duplicate

      for (var item in data) {
        todoList.add(TodoModel.fromJson(item));
      }

      return todoList;
    } else {
      print("❌ Failed to load data");
      return null;
    }
  }
}
