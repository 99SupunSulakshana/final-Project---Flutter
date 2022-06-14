// ignore_for_file: file_names, avoid_print

import 'package:final_project/model/task_model.dart';
import 'package:final_project/provider/TasksProvider/get_task.dart';
import 'package:final_project/screens/TaskPages/Local_Widgets/task_field.dart';
import 'package:flutter/material.dart';
import '../styles/colors.dart';

class ExpansionList extends StatefulWidget {
  const ExpansionList({Key? key}) : super(key: key);
  @override
  State<ExpansionList> createState() => _ExpansionListState();
}

class _ExpansionListState extends State<ExpansionList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: FutureBuilder<TaskModel>(
          future: GetUserTask().getTask(),
          builder: (context, snapshot) {
            print(snapshot);
            if (snapshot.hasError) {
              return const Center(child: Text('Error Occured'));
            } else if (snapshot.hasData) {
              if (snapshot.data!.tasks == null) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'Todo List is empty',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                );
              } else {
                return ListView(
                  children:
                      List.generate(snapshot.data!.tasks!.length, (index) {
                    final data = snapshot.data!.tasks![index];
                    return TaskField(
                      initial: "${index + 1}",
                      title: data.title,
                      subtitle: data.startTime.toString(),
                      isCompleted: false,
                      taskId: data.id.toString(),
                    );
                  }),
                );
              }
            } else {
              return Center(
                child: CircularProgressIndicator(
                  color: primaryColor,
                ),
              );
            }
          }),
    );
  }
}
