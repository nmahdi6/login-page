import 'package:flutter/material.dart';
import 'package:pruject_ui/screen/widget/TextFieldwidget.dart';
import 'package:pruject_ui/screen/widget/buttonWidget.dart';
import 'package:pruject_ui/view/login_page.dart';
import 'package:validators/validators.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var _formKey = GlobalKey<FormState>();
  var email;
  var password;
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Login(),
        ),
      ),
    );
  }
}
