import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';

class TimeTable extends StatefulWidget {
  const TimeTable({Key? key}) : super(key: key);

  @override
  _TimeTableState createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  String _downloadUrl = "";

  Future downloadImage() async {
    Reference _reference =
        FirebaseStorage.instance.ref().child('timetable.jpg');

    String downloadAddress = await _reference.getDownloadURL();
    setState(() {
      _downloadUrl = downloadAddress;
    });
  }

  late bool isConnectedToInternet;
  late String connectivity = "Please Wait";

  void checkInternet() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        isConnectedToInternet = true;
      }
    } on SocketException catch (_) {
      isConnectedToInternet = false;
    }

    setState(() {
      if (isConnectedToInternet == false) {
        connectivity = "Please Check Your Internet Connection";
      } else {
        connectivity = "Please Wait...";
      }
    });
  }

  @override
  void initState() {
    super.initState();
    downloadImage();
    checkInternet();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "TIME TABLE",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
              ),
            ),
            _downloadUrl == ""
                ? Container(
                    child: Text(
                    connectivity,
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        fontFamily: 'Caveat'),
                  ))
                : Image.network(_downloadUrl),
          ],
        ),
      ),
    ));
  }
}
