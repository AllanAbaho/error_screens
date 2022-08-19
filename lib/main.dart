import 'package:error_screens/file_not_found.dart';
import 'package:error_screens/no_connection.dart';
import 'package:error_screens/not_found.dart';
import 'package:error_screens/something_wrong.dart';
import 'package:error_screens/went_wrong.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

List<Widget> screenList = [
  const NoConnection(),
  const NotFound(),
  const WentWrong(),
  const FileNotFound(),
  const SomethingWrong()
];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageView.builder(
          itemCount: screenList.length,
          itemBuilder: (context, index) {
            return screenList[index];
          }),
    );
  }
}
