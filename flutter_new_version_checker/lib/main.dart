import 'package:flutter/material.dart';
import 'package:flutter_new_version_checker/utilities/helper/new_version_check/check_version.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter New Version Checker',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: CheckPage(),
    );
  }
}

class CheckPage extends StatefulWidget {
  const CheckPage({Key? key}) : super(key: key);

  @override
  State<CheckPage> createState() => _CheckPageState();
}

class _CheckPageState extends State<CheckPage> {
  @override
  void initState() {
    NewVersionCheck.newVersionCheckControl(
      context,
      "com.rovio.angrybirds", //iosPackageName
      "com.rovio.angrybirds", //androidPackageName,
      title: "New Version",
      versionDescription: "New version is available",
      updateButton: "Update",
      cancelButton: "Cancel",

      updateButtonColor: Colors.black,
      cancelButtonColor: Colors.red,
      barrierDismissible: false,
      isCancelButton: false,
      lottieUrl: 'https://assets2.lottiefiles.com/packages/lf20_xjhwr9wv.json',
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Check Control Page"),
      ),
    );
  }
}
