import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_school_project/grade_login.dart';
import 'package:lottie/lottie.dart';

class Grade6aLogin extends StatefulWidget {
  const Grade6aLogin({Key? key}) : super(key: key);

  @override
  _Grade6aLoginState createState() => _Grade6aLoginState();
}

class _Grade6aLoginState extends State<Grade6aLogin> {
  late String pass;
  bool isPasswordVisible = true;
  String password = "";
  String className = '6a';

  void getLink() async {
    DocumentSnapshot variable = await FirebaseFirestore.instance
        .collection('grade6a') // Change here..
        .doc('login') // Change here..
        .get();

    pass = variable['password'];
    setState(() {
      password = pass;
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
        child:
            gradeLoginPage(password, this.context, buildPassword(), className),
      ),
    );
  }
}
