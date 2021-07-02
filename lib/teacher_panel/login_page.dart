import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lottie/lottie.dart';

class TeacherPanelLogin extends StatefulWidget {
  const TeacherPanelLogin({Key? key}) : super(key: key);

  @override
  _TeacherPanelLoginState createState() => _TeacherPanelLoginState();
}

class _TeacherPanelLoginState extends State<TeacherPanelLogin> {
  late String pass;
  late String user;

  String password = '';
  String username = '';

  void getLink() async {
    DocumentSnapshot variable = await FirebaseFirestore.instance
        .collection('teacher_panel') // Change here..
        .doc('auth') // Change here..
        .get();

    pass = variable['password'];
    user = variable['username'];
    setState(() {
      password = pass;
      username = user;
    });
  }

  @override
  void initState() {
    super.initState();
    getLink();
  }

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  bool isPasswordVisible = true;

  Widget buildUsername() => Padding(
        padding: const EdgeInsets.all(10),
        child: TextField(
          controller: usernameController,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            suffixIcon: usernameController.text.isEmpty
                ? Container(width: 0)
                : IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => usernameController.clear(),
                  ),
            hintText: "Enter Your Username",
            labelText: "Username",
            border: OutlineInputBorder(),
          ),
        ),
      );

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
            hintText: "Your Password...",
            labelText: "Password",
            border: OutlineInputBorder(),
          ),
          obscureText: isPasswordVisible,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(32),
          children: [
            Center(
              child: Lottie.asset("assets/password-unlock.json"),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                "Teacher Panel",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            )),
            buildUsername(),
            buildPassword(),
            Padding(
              padding: const EdgeInsets.all(25),
              child: SizedBox(
                height: 50,
                child: TextButton(
                  onPressed: () {
                    if (username == usernameController.text &&
                        password == passwordController.text) {
                      Navigator.pushNamed(context, 'data_input_page');
                    } else {
                      Fluttertoast.showToast(
                          msg: "Please Check Your Email & Password",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM);
                    }
                    usernameController.clear();
                    passwordController.clear();
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
