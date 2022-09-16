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
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
        
       // borderRadius: BorderRadius.circular(20),
        
      // BoxShadow(
      //   color: Colors.grey.withOpacity(0.5),
      //   spreadRadius: 0.3,
      //   blurRadius: 1,
      //   offset: const Offset(0, 2), // changes position of shadow
      // ),
    
      
        )
      ),
      home: const SafeArea(
        child: Scaffold(
          body: Login(),
        ),
      ),
    );
  }
}
