import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DataInputPage extends StatefulWidget {
  const DataInputPage({Key? key}) : super(key: key);

  @override
  _DataInputPageState createState() => _DataInputPageState();
}

class _DataInputPageState extends State<DataInputPage> {
  // Grades
  List<String> grades = [
    'Select the grade',
    'grade6',
    'grade7',
    'grade8',
    'grade9',
    'grade10',
    'grade11',
    'grade12',
  ];
  String gradeSelected = "Select the grade";

  // Classes
  List<String> classes = [
    'Select the class',
    'a',
    'b',
    'c',
  ];
  String classSelected = 'Select the class';

  // Subjects
  List<String> subjects = ["Select the subject"];

  String subjectSelected = 'Select the subject';

  final linkController = TextEditingController();
  final idController = TextEditingController();
  final passcodeController = TextEditingController();

  Widget buildId() => Padding(
        padding: const EdgeInsets.all(10),
        child: TextField(
          controller: idController,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.verified_user,
              color: Colors.black,
            ),
            suffixIcon: idController.text.isEmpty
                ? Container(width: 0)
                : IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => idController.clear(),
                  ),
            hintText: "Enter Zoom ID",
            labelText: "Zoom ID",
            border: OutlineInputBorder(),
          ),
        ),
      );

  Widget buildPassword() => Padding(
        padding: const EdgeInsets.all(10),
        child: TextField(
          controller: passcodeController,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.password,
              color: Colors.black,
            ),
            suffixIcon: passcodeController.text.isEmpty
                ? Container(width: 0)
                : IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => passcodeController.clear(),
                  ),
            hintText: "Enter Zoom Passcode",
            labelText: "Zoom Passcode",
            border: OutlineInputBorder(),
          ),
        ),
      );

  Widget buildLink() => Padding(
        padding: const EdgeInsets.all(10),
        child: TextField(
          controller: linkController,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.link,
              color: Colors.black,
            ),
            suffixIcon: linkController.text.isEmpty
                ? Container(width: 0)
                : IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => linkController.clear(),
                  ),
            hintText: "Enter Class Link",
            labelText: "Link",
            border: OutlineInputBorder(),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Enter Data"),
        ),
        body: Center(
          child: Container(
            child: ListView(children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Input Data",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: DropdownButton(
                      items: grades.map((String dropDownGradeItem) {
                        return DropdownMenuItem(
                          child: Text(dropDownGradeItem),
                          value: dropDownGradeItem,
                        );
                      }).toList(),
                      onChanged: (newGradeSelected) {
                        setState(() {
                          this.gradeSelected = newGradeSelected.toString();
                        });
                      },
                      value: gradeSelected,
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: DropdownButton(
                      items: classes.map((String dropDownClassItem) {
                        return DropdownMenuItem(
                          child: Text(dropDownClassItem),
                          value: dropDownClassItem,
                        );
                      }).toList(),
                      onChanged: (newClassSelected) {
                        setState(() {
                          this.classSelected = newClassSelected.toString();
                        });
                      },
                      value: classSelected,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      width: 150,
                      height: 50,
                      child: TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red)),
                          onPressed: () {
                            if (gradeSelected == "grade6" ||
                                gradeSelected == 'grade7' ||
                                gradeSelected == 'grade8' ||
                                gradeSelected == 'grade9') {
                              setState(() {
                                subjects = [
                                  "Select the subject",
                                  'sinhala',
                                  'science',
                                  'english',
                                  "maths",
                                  'buddhism',
                                  'history',
                                  'geography',
                                  'civic',
                                  'health',
                                  'tamil',
                                  'pts',
                                  'art',
                                  'music',
                                  'drama',
                                  'dancing',
                                ];
                              });

                              print(subjects);
                            } else if (gradeSelected == 'grade10' ||
                                gradeSelected == 'grade11') {
                              setState(() {
                                subjects = [
                                  "Select the subject",
                                  'maths',
                                  'science',
                                  "sinhala",
                                  'english',
                                  'buddhism',
                                  'history',
                                  'art',
                                  'music',
                                  'drama',
                                  'dancing',
                                  'commerce',
                                  'geography',
                                  'civic',
                                  'tamil',
                                  'ict',
                                  'homescience',
                                  'electronics',
                                  'health'
                                ];
                              });
                            } else if (gradeSelected == 'grade12') {
                              setState(() {
                                subjects = [
                                  'Select the subject',
                                  'biology',
                                  'english',
                                  'ict',
                                  'physics',
                                  'accounts',
                                  'commerce',
                                  'economics',
                                  'sinhala',
                                  'dancing',
                                  'music',
                                ];
                              });
                            }
                          },
                          child: Text(
                            "Generate Subjects",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: DropdownButton(
                      items: subjects.map((String dropDownSubjectItem) {
                        return DropdownMenuItem(
                          child: Text(dropDownSubjectItem),
                          value: dropDownSubjectItem,
                        );
                      }).toList(),
                      onChanged: (newSubjectSelected) {
                        setState(() {
                          this.subjectSelected = newSubjectSelected.toString();
                        });
                      },
                      value: subjectSelected,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                          "** For bucket subjects, only upload the link for class 'A' ** \n --> Not For Grade 12 <--",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                              fontWeight: FontWeight.w900)),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: buildId(),
                  ), // Zoom ID Input
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: buildPassword(),
                  ), // Password Input
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: buildLink(),
                  ), // Link Input
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: SizedBox(
                      width: 100,
                      height: 50,
                      child: TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.green)),
                          onPressed: () {
                            Map<String, dynamic> data = {
                              'link': linkController.text.toString(),
                              'id': idController.text.toString(),
                              'passcode': passcodeController.text.toString(),
                            };

                            String grade = "$gradeSelected$classSelected";

                            if (gradeSelected != 'Select the grade' &&
                                classSelected != 'Select the class' &&
                                subjectSelected != "Select the subject" &&
                                linkController.text != '' &&
                                idController.text != '' &&
                                passcodeController.text != '') {
                              FirebaseFirestore.instance
                                  .collection(grade)
                                  .doc(subjectSelected)
                                  .set(data);

                              passcodeController.clear();
                              idController.clear();
                              linkController.clear();
                              subjects = ["Select the subject"];

                              setState(() {
                                gradeSelected = 'Select the grade';
                                classSelected = 'Select the class';
                                subjectSelected = 'Select the subject';
                              });
                            } else {
                              Fluttertoast.showToast(
                                  msg:
                                      "Please select the grade, the class and the subject",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM);
                            }
                          },
                          child: Text(
                            "Submit",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  )
                ],
              ),
            ]),
          ),
        ));
  }
}
