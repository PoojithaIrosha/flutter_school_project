import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lottie/lottie.dart';

final passwordController = TextEditingController();
bool isPasswordVisible = true;

Widget gradeLoginPage(String password, context, Widget buildPassword,
    String className, String class_teacher) {
  return Scaffold(
    body: Center(
      child: ListView(
        padding: EdgeInsets.all(32),
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Center(
              child: Lottie.asset("assets/password.json"),
            ),
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              "Log Into Your Class",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          )),
          Center(
              child: Padding(
            padding: const EdgeInsets.only(bottom: 1),
            child: Text(
              "Grade: ${className.toUpperCase()}",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Caveat',
                  fontWeight: FontWeight.w900),
            ),
          )),
          Center(
              child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              "Class Teacher: $class_teacher",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Caveat',
                  fontWeight: FontWeight.w700),
            ),
          )),
          buildPassword,
          Padding(
            padding: const EdgeInsets.all(25),
            child: SizedBox(
              height: 50,
              child: TextButton(
                onPressed: () async {
                  if (password == passwordController.text) {
                    Navigator.pushNamed(context, 'subjects/' + className);
                  } else {
                    Fluttertoast.showToast(
                        msg: "Please Check Your Class Code",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM);
                  }
                  passwordController.clear();
                },
                child: Text(
                  "Submit",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
