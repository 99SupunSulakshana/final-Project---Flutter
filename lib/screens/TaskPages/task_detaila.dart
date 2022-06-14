import 'package:final_project/provider/TasksProvider/delete_task_provider.dart';
import 'package:final_project/styles/colors.dart';
import 'package:final_project/utils/snack_message.dart';
import 'package:final_project/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/TasksProvider/add_task_provider.dart';
import '../../widgets/button.dart';

class TaskDetailsPage extends StatefulWidget {
  const TaskDetailsPage({Key? key, this.title, this.taskId}) : super(key: key);

  final String? title;
  final String? taskId;

  @override
  State<TaskDetailsPage> createState() => _TaskDetailsPageState();
}

class _TaskDetailsPageState extends State<TaskDetailsPage> {
  final TextEditingController _title = TextEditingController();

  @override
  void dispose() {
    _title.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    setState(() {
      _title.text = widget.title!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Task Details',
        ),
        actions: [
          Consumer<DeleteTaskProvider>(builder: (context, deleteTask, child) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (deleteTask.getResponse != '') {
                showMessage(message: deleteTask.getResponse, context: context);

                ///Clear the response message to avoid duplicate
                deleteTask.clear();
              }
            });
            return IconButton(
              onPressed: deleteTask.getStatus == true
                  ? null
                  : () {
                      deleteTask.deleteTask(
                          taskId: widget.taskId, ctx: context);
                    },
              icon: Icon(Icons.delete,
                  color: deleteTask.getStatus == true ? grey : white),
            );
          })
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  customTextField(
                    title: 'Title',
                    controller: _title,
                    hint: 'What do you want to do?',
                  ),
                  customTextField(
                    title: 'Title',
                    controller: _title,
                    hint: 'What do you want to do?',
                  ),
                  Consumer<AddTaskProvider>(builder: (context, addTask, child) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      if (addTask.getResponse != '') {
                        showMessage(
                            message: addTask.getResponse, context: context);

                        ///Clear the response message to avoid duplicate
                        addTask.clear();
                      }
                    });
                    return customButton(
                      text: 'Update',
                      status: addTask.getStatus,
                      tap: () {
                        if (_title.text.isEmpty) {
                          showMessage(
                              message: "Fill in title", context: context);
                        } else {
                          addTask.addTask(title: _title.text.trim());
                        }
                      },
                      context: context,
                    );
                  })
                  // customButton(
                  //   status: false,
                  //   text: 'Update',
                  //   tap: () {},
                  //   context: context,
                  // )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
