import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_school_project/grade_login.dart';
import 'package:lottie/lottie.dart';

class Grade11aLogin extends StatefulWidget {
  const Grade11aLogin({Key? key}) : super(key: key);

  @override
  _Grade11aLoginState createState() => _Grade11aLoginState();
}

class _Grade11aLoginState extends State<Grade11aLogin> {
  late String pass;
  bool isPasswordVisible = true;
  String password = "";
  String className = '11a';

  String _class_teacher = "";

  void getLink() async {
    DocumentSnapshot variable = await FirebaseFirestore.instance
        .collection('grade11a') // Change here..
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
