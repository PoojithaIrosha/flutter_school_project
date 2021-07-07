import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('About'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text("A Class Manager App For WCC"),
                ),
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text('Manage Your Classes!'),
                ),
                Divider(),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text("Developer: Poojitha Irosha"),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text("Email: poojithairosha9311@gmail.com"),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text("Contact: 0762873649"),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                child: const Text(
                  'Close',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Class Manager"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
                onPressed: () {
                  _showMyDialog();
                },
                icon: Icon(Icons.info),
                iconSize: 27),
          )
        ],
      ),
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
                          padding: const EdgeInsets.only(top: 20, right: 10),
                          child: SizedBox(
                            height: 50,
                            width: 120,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'login_page');
                                },
                                child: Text("Teacher",
                                    style: TextStyle(fontSize: 15)),
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.red),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                            side: BorderSide(
                                                color: Colors.red))))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 10),
                          child: SizedBox(
                            height: 50,
                            width: 120,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'grades');
                                },
                                child: Text("Student",
                                    style: TextStyle(fontSize: 15)),
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                            side: BorderSide(
                                                color: Colors.blue))))),
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
