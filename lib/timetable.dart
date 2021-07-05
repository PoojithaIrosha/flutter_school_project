import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';

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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    downloadImage();
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
                ? Container(child: Text("Please Wait..."))
                : Image.network(_downloadUrl),
          ],
        ),
      ),
    ));
  }
}
