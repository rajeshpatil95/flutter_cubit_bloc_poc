import '../models/todo.dart';
import 'network_service.dart';

class Repository {
  final NetworkService? networkService;

  Repository({this.networkService});

  Future<List<TodoModel>> fetchTodos() async {
    final todosRaw = await networkService!.fetchTodos();
    return todosRaw;
  }
}
