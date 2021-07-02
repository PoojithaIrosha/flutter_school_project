import 'package:flutter/material.dart';

class Grade9CSubjects extends StatelessWidget {
  const Grade9CSubjects({Key? key}) : super(key: key);

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
                            Navigator.pushNamed(context, 'subjects/9c/maths');
                          },
                          child: Text("Maths",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          style: ElevatedButton.styleFrom(
                              elevation: 5, primary: Colors.blue))),
                  Container(
                      margin: EdgeInsets.all(10),
                      height: 70,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'subjects/9c/science');
                          },
                          child: Text("Science",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          style: ElevatedButton.styleFrom(
                              elevation: 5, primary: Colors.deepPurple))),
                  Container(
                      margin: EdgeInsets.all(10),
                      height: 70,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'subjects/9c/sinhala');
                          },
                          child: Text("Sinhala",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          style: ElevatedButton.styleFrom(
                              elevation: 5, primary: Colors.red))),
                  Container(
                      margin: EdgeInsets.all(10),
                      height: 70,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, 'subjects/9c/buddhism');
                          },
                          child: Text("Buddhism",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          style: ElevatedButton.styleFrom(
                              elevation: 5, primary: Colors.amber))),
                  Container(
                      margin: EdgeInsets.all(10),
                      height: 70,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, 'subjects/9c/geography');
                          },
                          child: Text("Geography",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          style: ElevatedButton.styleFrom(
                              elevation: 5, primary: Colors.green))),
                  Container(
                      margin: EdgeInsets.all(10),
                      height: 70,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'subjects/9c/civic');
                          },
                          child: Text("Civic Education",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          style: ElevatedButton.styleFrom(
                              elevation: 5, primary: Colors.deepOrangeAccent))),
                  Container(
                      margin: EdgeInsets.all(10),
                      height: 70,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'subjects/9c/tamil');
                          },
                          child: Text("Tamil",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          style: ElevatedButton.styleFrom(
                              elevation: 5, primary: Colors.indigo))),
                  Container(
                      margin: EdgeInsets.all(10),
                      height: 70,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'subjects/9c/english');
                          },
                          child: Text("English",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          style: ElevatedButton.styleFrom(
                              elevation: 5, primary: Colors.pink))),
                  Container(
                      margin: EdgeInsets.all(10),
                      height: 70,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'subjects/9c/health');
                          },
                          child: Text("Health",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          style: ElevatedButton.styleFrom(
                              elevation: 5, primary: Colors.blueGrey))),
                  Container(
                      margin: EdgeInsets.all(10),
                      height: 70,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'subjects/9c/history');
                          },
                          child: Text("History",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          style: ElevatedButton.styleFrom(
                              elevation: 5, primary: Colors.brown))),
                  Container(
                      margin: EdgeInsets.all(10),
                      height: 70,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, 'subjects/9/aesthetics');
                          },
                          child: Text("Aesthetics",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          style: ElevatedButton.styleFrom(
                              elevation: 5, primary: Colors.lime))),
                  Container(
                      margin: EdgeInsets.all(10),
                      height: 70,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'subjects/9c/pts');
                          },
                          child: Text("PTS",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          style: ElevatedButton.styleFrom(
                              elevation: 5, primary: Colors.black54))),
                ],
              ),
            ),
          ),
        ));
  }
}
