// ignore_for_file: prefer_const_constructors

import 'package:device_preview/device_preview.dart';
import 'package:final_project/provider/TasksProvider/add_task_provider.dart';
import 'package:final_project/provider/AuthProvider/auth_provider.dart';
import 'package:final_project/provider/TasksProvider/delete_task_provider.dart';
import 'package:final_project/provider/Shared_preferences/shared_preferencesProvider.dart';
import 'package:final_project/provider/mobitel/aboutusdata.dart';
import 'package:final_project/provider/mobitel/advertisementdata.dart';
import 'package:final_project/provider/mobitel/hotcodesdata.dart';
import 'package:final_project/provider/mobitel/howtoguidedata.dart';
import 'package:final_project/provider/mobitel/machine_learning/productivityData.dart';
import 'package:final_project/provider/mobitel/privacydata.dart';
import 'package:final_project/provider/mobitel/termsData.dart';
import 'package:final_project/provider/mobitel/userinfodata.dart';
import 'package:final_project/provider/mobitel/weeklyPackageData.dart';
import 'package:final_project/splash.dart';
import 'package:final_project/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(DevicePreview(
      enabled: true,
      // ignore: prefer_const_literals_to_create_immutables
      tools: [...DevicePreview.defaultTools],
      builder: (context) => MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HowtoGuideData()),
        ChangeNotifierProvider(create: (_) => AboutUsData()),
        ChangeNotifierProvider(create: (_) => AuthenticationProvider()),
        ChangeNotifierProvider(create: (_) => SharedDataProvider()),
        ChangeNotifierProvider(create: (_) => AddTaskProvider()),
        ChangeNotifierProvider(create: (_) => DeleteTaskProvider()),
        ChangeNotifierProvider(create: (_) => ProductivityData()),
        ChangeNotifierProvider(create: (_) => AdvertisementData()),
        ChangeNotifierProvider(create: (_) => PrivacyData()),
        ChangeNotifierProvider(create: (_) => TermsData()),
        ChangeNotifierProvider(create: (_) => HotCodesData()),
        ChangeNotifierProvider(create: (_) => WeeklyPackageData()),
        ChangeNotifierProvider(create: (_) => UserInfoData())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: AppBarTheme(color: primaryColor),
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: primaryColor),
          primarySwatch: Colors.indigo,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
