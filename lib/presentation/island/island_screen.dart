import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../navigation/route_constants.dart';
import '../../cubit/island/island_cubit.dart';
import '../../models/island.dart';

class IslandScreen extends StatefulWidget {
  @override
  State<IslandScreen> createState() => _IslandScreenState();
}

class _IslandScreenState extends State<IslandScreen> {
  @override
  void initState() {
    super.initState();

    BlocProvider.of<IslandCubit>(context).fetchIsland();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter"),
          actions: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, ADD_ISLAND_ROUTE);
              },
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(Icons.add),
              ),
            )
          ],
        ),
        body: BlocBuilder<IslandCubit, IslandState>(
          builder: (context, state) {
            if (!(state is IslandLoaded))
              return Center(child: CircularProgressIndicator());

            final Island = (state as IslandLoaded).Island;

            return SingleChildScrollView(
              child: Column(
                children: Island!.map((e) => _todo(e, context)).toList(),
              ),
            );
          },
        ));
  }

  Widget _todo(IslandModel todo, context) {
    return InkWell(
        onTap: () =>
            Navigator.pushNamed(context, EDIT_ISLAND_ROUTE, arguments: todo),
        child: _todoTile(todo, context));
  }

  Widget _todoTile(IslandModel todo, context) {
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
