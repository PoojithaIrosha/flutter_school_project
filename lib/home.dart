import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.only(top: 40),
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 300,
                    width: 300,
                    child: Lottie.asset("assets/notes.json"),
                  ),
                  Text(
                    "ONLINE CLASSES",
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'LibreBaskerville',
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Central College Wattegama",
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'AmaticSC',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2),
                  ),
                  Container(
                      // alignment: Alignment.center,
                      // padding: EdgeInsets.all(50),
                      child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: SizedBox(
                            height: 50,
                            width: 100,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'login_page');
                                },
                                child: Text("Teacher",
                                    style: TextStyle(fontSize: 15)),
                                style: ElevatedButton.styleFrom(
                                    elevation: 5, primary: Colors.red)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: SizedBox(
                            height: 50,
                            width: 100,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'grades');
                                },
                                child: Text("Student",
                                    style: TextStyle(fontSize: 15)),
                                style: ElevatedButton.styleFrom(
                                    elevation: 5, primary: Colors.blue)),
                          ),
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            )),
      ),
    );
  }
}
