import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class GeoLink9c extends StatefulWidget {
  const GeoLink9c({Key? key}) : super(key: key);

  @override
  _GeoLink9cState createState() => _GeoLink9cState();
}

class _GeoLink9cState extends State<GeoLink9c> {
  late String link;
  late String id;
  late String pass;

  String zoomId = '';
  String passcode = '';
  String finalLink = '#';

  void getLink() async {
    DocumentSnapshot variable = await FirebaseFirestore.instance
        .collection('grade9c') // Change here..
        .doc('geography') // Change here..
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
                      "Grade 9C - Geography", // Change Here..
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
                    padding:
                        const EdgeInsets.only(bottom: 30, left: 20, right: 20),
                    child: Text(
                      // Change Here
                      "You have class on every Wednesday from 6.00AM to 7.30AM",
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Caveat',
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
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
