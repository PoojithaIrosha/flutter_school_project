import 'package:flutter/material.dart';

class Grade11GroupIISubjects extends StatelessWidget {
  const Grade11GroupIISubjects({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Select the subject"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 20),
            child: Container(
              width: 300,
              child: ListView(
                children: [
                  Container(
                      margin: EdgeInsets.all(10),
                      height: 70,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'subjects/11/ICT');
                          },
                          child: Text("ICT",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          style: ElevatedButton.styleFrom(
                              elevation: 5, primary: Colors.blue))),
                  Container(
                      margin: EdgeInsets.all(10),
                      height: 70,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, 'subjects/11/hscience');
                          },
                          child: Text("Home Science",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          style: ElevatedButton.styleFrom(
                              elevation: 5, primary: Colors.deepPurple))),
                  Container(
                      margin: EdgeInsets.all(10),
                      height: 70,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, 'subjects/11/electronics');
                          },
                          child: Text("Electronics",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          style: ElevatedButton.styleFrom(
                              elevation: 5, primary: Colors.red))),
                  Container(
                      margin: EdgeInsets.all(10),
                      height: 70,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'subjects/11/health');
                          },
                          child: Text("Health",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          style: ElevatedButton.styleFrom(
                              elevation: 5, primary: Colors.brown))),
                ],
              ),
            ),
          ),
        ));
  }
}
