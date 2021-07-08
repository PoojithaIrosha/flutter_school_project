import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_school_project/grade_login.dart';

class Grade7aLogin extends StatefulWidget {
  const Grade7aLogin({Key? key}) : super(key: key);

  @override
  _Grade7aLoginState createState() => _Grade7aLoginState();
}

class _Grade7aLoginState extends State<Grade7aLogin> {
  late String pass;
  bool isPasswordVisible = true;
  String password = "NoPassword";
  String className = '7a';
  String _class_teacher = "";

  void getLink() async {
    DocumentSnapshot variable = await FirebaseFirestore.instance
        .collection('grade7a') // Change here..
        .doc('login') // Change here..
        .get();

    pass = variable['password'];
    setState(() {
      password = pass;
      _class_teacher = variable['class_teacher'];
    });
  }

  Widget buildPassword() => Padding(
        padding: const EdgeInsets.all(10),
        child: TextField(
          controller: passwordController,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.password, color: Colors.black),
            suffixIcon: IconButton(
              icon: isPasswordVisible
                  ? Icon(Icons.visibility_off)
                  : Icon(Icons.visibility),
              onPressed: () {
                setState(() {
                  isPasswordVisible = !isPasswordVisible;
                });
              },
            ),
            hintText: "Enter Your Class Code...",
            labelText: "Class Code",
            border: OutlineInputBorder(),
          ),
          obscureText: isPasswordVisible,
        ),
      );

  @override
  void initState() {
    super.initState();
    getLink();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: gradeLoginPage(
            password, this.context, buildPassword(), className, _class_teacher),
      ),
    );
  }
}
