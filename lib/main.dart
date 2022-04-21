import 'package:flutter/material.dart';
import 'package:pruject_ui/screen/widget/TextFieldwidget.dart';
import 'package:pruject_ui/screen/widget/buttonWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 70),
            width: double.infinity,
            height: 170,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30))),
            child: const Text("Login",
                style: TextStyle(fontSize: 40, color: Colors.white)),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      child: TextFieldWidget(
                    validator: (String? value) {
                      return null;
                    },
                    labelText: "Email",
                    icon: Icons.email_outlined,
                  )),
                  Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: TextFieldWidget(
                        labelText: "Password",
                        icon: Icons.lock_outline,
                        obscureText: true,
                        suffixIcon: Icons.visibility_off,
                      )),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: const Text(
                      "Forget Password",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: GestureDetector(
                      child: const buttonWidget(
                        title: "Login",
                      ),
                      onTap: () {
                        _formKey.currentState!.validate();
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15, bottom: 20),
                    child: const buttonWidget(
                      title: "Sign Up",
                      hasBorder: true,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
