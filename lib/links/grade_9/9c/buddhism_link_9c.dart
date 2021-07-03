import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class BuddhismLink9c extends StatefulWidget {
  const BuddhismLink9c({Key? key}) : super(key: key);

  @override
  _BuddhismLink9cState createState() => _BuddhismLink9cState();
}

class _BuddhismLink9cState extends State<BuddhismLink9c> {
  late String link;
  late String id;
  late String pass;

  String zoomId = '';
  String passcode = '';
  String finalLink = '#';

  void getLink() async {
    DocumentSnapshot variable = await FirebaseFirestore.instance
        .collection('grade9c') // Change here..
        .doc('buddhism') // Change here..
        .get();
    link = variable['link'];
    id = variable['id'];
    pass = variable['passcode'];

    setState(() {
      if (id != '') {
        zoomId = id;
      }

      if (pass != '') {
        passcode = pass;
      }

      if (link != '#') {
        finalLink = link;
      }
    });

    print(link);
  }

  @override
  void initState() {
    super.initState();
    getLink();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "Grade 9C - Buddhism", // Change Here..
                      style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'AmaticSC'),
                    ),
                  ),
                  SizedBox(
                      width: 300,
                      height: 300,
                      child: Lottie.asset("assets/study.json")),
                 Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(elevation: 3),
                        onPressed: () {
                          launch(finalLink);
                        },
                        child: Text(
                          "Zoom Link",
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 30),
                    child: Text(
                      "Meeting ID: $zoomId \n Passcode: $passcode",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, fontFamily: 'Caveat'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: SpeedDial(
          overlayOpacity: 0.5,
          animatedIcon: AnimatedIcons.menu_close,
          children: [
            SpeedDialChild(
                child: Icon(Icons.paste),
                label: "Copy to Clipboard",
                onTap: () {
                  if (finalLink != "#") {
                    Fluttertoast.showToast(
                        msg: "Link Copied To Clipboard",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM);
                    final data = ClipboardData(text: link);
                    Clipboard.setData(data);
                  } else {
                    Fluttertoast.showToast(
                        msg: "There's no link to copy",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM);
                    final noData = ClipboardData(text: '');
                    Clipboard.setData(noData);
                  }
                }),
            SpeedDialChild(
                child: Icon(Icons.refresh),
                label: "Refresh",
                onTap: () async {
                  getLink();
                  Fluttertoast.showToast(
                      msg: "Loading...",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM);
                }),
          ],
        ));
  }
}

@override
Widget build(BuildContext context) {
  // ignore: todo
  // TODO: implement build
  throw UnimplementedError();
}
