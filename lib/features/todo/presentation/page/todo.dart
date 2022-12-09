
import 'package:flutter/material.dart';

import '../cubit/todo_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class TodoScreen extends StatelessWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("app bar"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            // context.read<TodoCubit>().getTodo();
          }, child:const Text("Open Api"))
        ],
      ),
    );
  }
}
