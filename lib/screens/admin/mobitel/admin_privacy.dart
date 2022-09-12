// ignore_for_file: override_on_non_overriding_member, avoid_print, avoid_types_as_parameter_names

import 'package:final_project/model/privacy_model.dart';
import 'package:final_project/provider/Shared_preferences/shared_preferencesProvider.dart';
import 'package:final_project/providers_app_side/privacy/get_privacy.dart';
import 'package:final_project/screens/TaskPages/add_task.dart';
import 'package:final_project/styles/colors.dart';
import 'package:final_project/utils/routers.dart';
import 'package:final_project/screens/TaskPages/Local_Widgets/task_field.dart';
import 'package:flutter/material.dart';

import '../../model/task_model.dart';
import '../../provider/TasksProvider/get_task.dart';

class PrivacyAdminPage extends StatefulWidget {
  PrivacyAdminPage({Key? key}) : super(key: key);

  @override
  State<PrivacyAdminPage> createState() => _PrivacyAdminPageState();
}

class _PrivacyAdminPageState extends State<PrivacyAdminPage> {
  final GetPrivacy getPrivacy = GetPrivacy();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
        actions: [
          IconButton(
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {
                ///logout
                SharedDataProvider().logOut(context);
              }),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () {
          return GetPrivacy().getPrivacy();
        },
        child: Container(
          padding: const EdgeInsets.all(20),
          child: FutureBuilder<List<PrivacyModel>>(
              future: getPrivacy.getPrivacy(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => const AlertDialog(
                            title: Text("Error"),
                            content: Text("An error has occured..."),
                          ));
                }
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) => ListTile(
                      title:
                          Text(snapshot.data![index].privacy_name.toString()),
                      subtitle: Text(
                        snapshot.data![index].description.toString(),
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(
                      color: primaryColor,
                    ),
                  );
                }
              }),
        ),
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
