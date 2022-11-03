import 'dart:convert';
import 'mock_server.dart';
import '../models/todo.dart';
import 'test_response.dart';

class NetworkService with MockServer {
  Future<List<TodoModel>> fetchTodos() async {
    final response = await mockApiCall(
        body: TestResponse.testTodo,
        method: HttpMethod.get,
        callBackDelay: CallBackDelay.CALLBACK_DELAY_SHORT);

    if (response.isSuccessful()) {
      return jsonDecode(response.body)
          .map<TodoModel>((dynamic todo) => TodoModel.fromJson(todo))
          .toList();
    } else {
      throw Exception("Exception occured at fetchTodo()");
    }
  }
}
