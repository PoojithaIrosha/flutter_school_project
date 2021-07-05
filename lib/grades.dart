import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GradesPage extends StatefulWidget {
  GradesPage({Key? key}) : super(key: key);

  @override
  _GradesPageState createState() => _GradesPageState();
}

class _GradesPageState extends State<GradesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Select Your Grade"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'timetable');
                },
                icon: Icon(Icons.calendar_today),
                tooltip: "Time Table",
              ),
            )
          ],
          // leading: Icon(Icons.arrow_back_ios_new),
        ),
        body: Center(
          child: Container(
              // alignment: Alignment.center,
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(15),
              child: ListView(
                children: [
                  //TODO: Grade 06
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: FaIcon(
                          FontAwesomeIcons.handPointRight,
                        ),
                      ),
                      Text(
                        "Grade 06 Classes",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 80,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.all(5),
                              width: 200,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, 'subjects/6a/login');
                                  },
                                  child: Text("Grade 6-A",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                  style:
                                      ElevatedButton.styleFrom(elevation: 5))),
                          Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.all(5),
                              width: 200,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, 'subjects/6b/login');
                                  },
                                  child: Text("Grade 6-B",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                  style:
                                      ElevatedButton.styleFrom(elevation: 5))),
                          Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.all(5),
                              width: 200,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, 'subjects/6c/login');
                                  },
                                  child: Text("Grade 6-C",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                  style:
                                      ElevatedButton.styleFrom(elevation: 5))),
                        ],
                      ),
                    ),
                  ),

                  // TODO: Grade 07
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 20),
                        child: FaIcon(
                          FontAwesomeIcons.handPointRight,
                        ),
                      ),
                      Text(
                        "Grade 07 Classes",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 80,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.all(5),
                              width: 200,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'subjects/7a');
                                  },
                                  child: Text("Grade 7-A",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                  style: ElevatedButton.styleFrom(
                                      elevation: 5, primary: Colors.red))),
                          Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.all(5),
                              width: 200,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'subjects/7b');
                                  },
                                  child: Text("Grade 7-B",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                  style: ElevatedButton.styleFrom(
                                      elevation: 5, primary: Colors.red))),
                          Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.all(5),
                              width: 200,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'subjects/7c');
                                  },
                                  child: Text("Grade 7-C",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                  style: ElevatedButton.styleFrom(
                                      elevation: 5, primary: Colors.red))),
                        ],
                      ),
                    ),
                  ),

                  // TODO: Grade 08
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 20),
                        child: FaIcon(
                          FontAwesomeIcons.handPointRight,
                        ),
                      ),
                      Text(
                        "Grade 08 Classes",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 80,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.all(5),
                              width: 200,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'subjects/8a');
                                  },
                                  child: Text("Grade 8-A",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                  style: ElevatedButton.styleFrom(
                                      elevation: 5,
                                      primary: Colors.deepPurple))),
                          Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.all(5),
                              width: 200,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'subjects/8b');
                                  },
                                  child: Text("Grade 8-B",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                  style: ElevatedButton.styleFrom(
                                      elevation: 5,
                                      primary: Colors.deepPurple))),
                          Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.all(5),
                              width: 200,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'subjects/8c');
                                  },
                                  child: Text("Grade 8-C",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                  style: ElevatedButton.styleFrom(
                                      elevation: 5,
                                      primary: Colors.deepPurple))),
                        ],
                      ),
                    ),
                  ),

                  // TODO: Grade 09
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 20),
                        child: FaIcon(
                          FontAwesomeIcons.handPointRight,
                        ),
                      ),
                      Text(
                        "Grade 09 Classes",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 80,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.all(5),
                              width: 200,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'subjects/9a');
                                  },
                                  child: Text("Grade 9-A",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                  style: ElevatedButton.styleFrom(
                                      elevation: 5, primary: Colors.green))),
                          Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.all(5),
                              width: 200,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'subjects/9b');
                                },
                                child: Text("Grade 9-B",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                                style: ElevatedButton.styleFrom(
                                    elevation: 5, primary: Colors.green),
                              )),
                          Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.all(5),
                              width: 200,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'subjects/9c');
                                  },
                                  child: Text("Grade 9-C",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                  style: ElevatedButton.styleFrom(
                                      elevation: 5, primary: Colors.green))),
                        ],
                      ),
                    ),
                  ),

                  // TODO: Grade 10
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 20),
                        child: FaIcon(
                          FontAwesomeIcons.handPointRight,
                        ),
                      ),
                      Text(
                        "Grade 10 Classes",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                        height: 80,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(5),
                                width: 200,
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, 'subjects/10a');
                                    },
                                    child: Text("Grade 10-A",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
                                    style: ElevatedButton.styleFrom(
                                        elevation: 5,
                                        primary: Colors.deepOrange))),
                            Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(5),
                                width: 200,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, 'subjects/10b');
                                  },
                                  child: Text("Grade 10-B",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                  style: ElevatedButton.styleFrom(
                                      elevation: 5, primary: Colors.deepOrange),
                                )),
                            Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(5),
                                width: 200,
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, 'subjects/10c');
                                    },
                                    child: Text("Grade 10-C",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
                                    style: ElevatedButton.styleFrom(
                                        elevation: 5,
                                        primary: Colors.deepOrange))),
                          ],
                        )),
                  ),

                  // TODO: Grade 11
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 20),
                        child: FaIcon(
                          FontAwesomeIcons.handPointRight,
                        ),
                      ),
                      Text(
                        "Grade 11 Classes",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                        height: 80,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(5),
                                width: 200,
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, 'subjects/11a');
                                    },
                                    child: Text("Grade 11-A",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
                                    style: ElevatedButton.styleFrom(
                                        elevation: 5, primary: Colors.amber))),
                            Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(5),
                                width: 200,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, 'subjects/11b');
                                  },
                                  child: Text("Grade 11-B",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                  style: ElevatedButton.styleFrom(
                                      elevation: 5, primary: Colors.amber),
                                )),
                            Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(5),
                                width: 200,
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, 'subjects/11c');
                                    },
                                    child: Text("Grade 11-C",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
                                    style: ElevatedButton.styleFrom(
                                        elevation: 5, primary: Colors.amber))),
                          ],
                        )),
                  ),

                  // TODO: Grade 12
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 20),
                        child: FaIcon(
                          FontAwesomeIcons.handPointRight,
                        ),
                      ),
                      Text(
                        "Grade 12 Classes",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                        height: 80,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(5),
                                width: 200,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text("Grade 12-A",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
                                    style: ElevatedButton.styleFrom(
                                        elevation: 5, primary: Colors.cyan))),
                            Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(5),
                                width: 200,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text("Grade 12-B",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                  style: ElevatedButton.styleFrom(
                                      elevation: 5, primary: Colors.cyan),
                                )),
                            Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(5),
                                width: 200,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text("Grade 12-C",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
                                    style: ElevatedButton.styleFrom(
                                        elevation: 5, primary: Colors.cyan))),
                          ],
                        )),
                  ),
                ],
              )),
        ));
  }
}
