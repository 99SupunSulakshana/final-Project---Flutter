// ignore_for_file: override_on_non_overriding_member, avoid_print

import 'package:final_project/provider/Shared_preferences/shared_preferencesProvider.dart';
import 'package:final_project/screens/TaskPages/add_task.dart';
import 'package:final_project/styles/colors.dart';
import 'package:final_project/utils/routers.dart';
import 'package:final_project/screens/TaskPages/Local_Widgets/task_field.dart';
import 'package:flutter/material.dart';

import '../../model/task_model.dart';
import '../../provider/TasksProvider/get_task.dart';

class HomeAdd extends StatefulWidget {
  const HomeAdd({Key? key}) : super(key: key);

  @override
  State<HomeAdd> createState() => _HomeAddState();
}

class _HomeAddState extends State<HomeAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Advertisements'),
        actions: [
          IconButton(
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {
                ///logout
                SharedDataProvider().logOut(context);
              }),
        ],
      ),
      body: Container(
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
                      children: [
                        const Text(
                          'Advertisements is Empty!!',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {
                            PageNavigator(ctx: context)
                                .nextPage(page: const CreatTask());
                          },
                          child: Text(
                            'Create a Advertisement',
                            style: TextStyle(fontSize: 18, color: grey),
                          ),
                        ),
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
      ),
      floatingActionButton: FloatingActionButton(
        mini: true,
        onPressed: () {
          PageNavigator(ctx: context).nextPage(page: const CreatTask());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
