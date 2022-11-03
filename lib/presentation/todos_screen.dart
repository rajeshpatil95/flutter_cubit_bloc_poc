import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constants/strings.dart';
import '../../cubit/todos_cubit.dart';
import '../../models/todo.dart';

class TodosScreen extends StatefulWidget {
  @override
  State<TodosScreen> createState() => _TodosScreenState();
}

class _TodosScreenState extends State<TodosScreen> {
  @override
  void initState() {
    super.initState();

    BlocProvider.of<TodosCubit>(context).fetchTodos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter"),
          actions: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, ADD_TODO_ROUTE);
              },
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(Icons.add),
              ),
            )
          ],
        ),
        body: BlocBuilder<TodosCubit, TodosState>(
          builder: (context, state) {
            if (!(state is TodosLoaded))
              return Center(child: CircularProgressIndicator());

            final todos = (state as TodosLoaded).todos;

            return SingleChildScrollView(
              child: Column(
                children: todos!.map((e) => _todo(e, context)).toList(),
              ),
            );
          },
        ));
  }

  Widget _todo(TodoModel todo, context) {
    return InkWell(
        onTap: () =>
            Navigator.pushNamed(context, EDIT_TODO_ROUTE, arguments: todo),
        child: _todoTile(todo, context));
  }

  Widget _todoTile(TodoModel todo, context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[200]!,
          ),
        ),
      ),
      child: Text(todo.name!),
    );
  }
}
