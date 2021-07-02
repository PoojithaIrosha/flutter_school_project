import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_school_project/grades.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_school_project/home.dart';
import 'package:flutter_school_project/links/grade_6/6a/buddhism_link_6a.dart';
import 'package:flutter_school_project/links/grade_6/6a/english_link_6a.dart';
import 'package:flutter_school_project/links/grade_6/6a/maths_link_6a.dart';
import 'package:flutter_school_project/links/grade_6/6a/science_link_6a.dart';
import 'package:flutter_school_project/subjects/grade_6/aesthetic_subjects_grade6.dart';
import 'package:flutter_school_project/subjects/grade_6/subjects_6a.dart';
import 'package:flutter_school_project/subjects/grade_6/subjects_6b.dart';
import 'package:flutter_school_project/subjects/grade_6/subjects_6c.dart';
import 'package:flutter_school_project/subjects/grade_7/aesthetic_subjects_grade7.dart';
import 'package:flutter_school_project/subjects/grade_7/subjects_7a.dart';
import 'package:flutter_school_project/subjects/grade_7/subjects_7b.dart';
import 'package:flutter_school_project/subjects/grade_7/subjects_7c.dart';
import 'package:flutter_school_project/subjects/grade_8/subjects_8a.dart';
import 'package:flutter_school_project/subjects/grade_8/subjects_8b.dart';
import 'package:flutter_school_project/subjects/grade_8/subjects_8c.dart';
import 'package:flutter_school_project/subjects/grade_8/aesthetic_subjects_grade8.dart';
import 'package:flutter_school_project/teacher_panel/data_input_page.dart';
import 'package:flutter_school_project/teacher_panel/login_page.dart';
import 'links/grade_6/6a/civic_link_6a.dart';
import 'links/grade_6/6a/geo_link_6a.dart';
import 'links/grade_6/6a/health_link_6a.dart';
import 'links/grade_6/6a/history_link_6a.dart';
import 'links/grade_6/6a/pts_link_6a.dart';
import 'links/grade_6/6a/sinhala_link_6a.dart';
import 'links/grade_6/6a/tamil_link_6a.dart';
import 'links/grade_6/6b/buddhism_link_6b.dart';
import 'links/grade_6/6b/civic_link_6b.dart';
import 'links/grade_6/6b/english_link_6b.dart';
import 'links/grade_6/6b/geo_link_6b.dart';
import 'links/grade_6/6b/health_link_6b.dart';
import 'links/grade_6/6b/history_link_6b.dart';
import 'links/grade_6/6b/maths_link_6b.dart';
import 'links/grade_6/6b/pts_link_6b.dart';
import 'links/grade_6/6b/science_link_6b.dart';
import 'links/grade_6/6b/sinhala_link_6b.dart';
import 'links/grade_6/6b/tamil_link_6b.dart';
import 'links/grade_6/6c/buddhism_link_6c.dart';
import 'links/grade_6/6c/civic_link_6c.dart';
import 'links/grade_6/6c/english_link_6c.dart';
import 'links/grade_6/6c/geo_link_6c.dart';
import 'links/grade_6/6c/health_link_6c.dart';
import 'links/grade_6/6c/history_link_6c.dart';
import 'links/grade_6/6c/maths_link_6c.dart';
import 'links/grade_6/6c/pts_link_6c.dart';
import 'links/grade_6/6c/science_link_6c.dart';
import 'links/grade_6/6c/sinhala_link_6c.dart';
import 'links/grade_6/6c/tamil_link_6c.dart';
import 'links/grade_6/aesthetic_subjects/art_link_6.dart';
import 'links/grade_6/aesthetic_subjects/dancing_link_6.dart';
import 'links/grade_6/aesthetic_subjects/drama_link_6.dart';
import 'links/grade_6/aesthetic_subjects/music_link_6.dart';
import 'links/grade_7/7a/buddhism_link_7a.dart';
import 'links/grade_7/7a/civic_link_7a.dart';
import 'links/grade_7/7a/english_link_7a.dart';
import 'links/grade_7/7a/geo_link_7a.dart';
import 'links/grade_7/7a/health_link_7a.dart';
import 'links/grade_7/7a/history_link_7a.dart';
import 'links/grade_7/7a/maths_link_7a.dart';
import 'links/grade_7/7a/pts_link_7a.dart';
import 'links/grade_7/7a/science_link_7a.dart';
import 'links/grade_7/7a/sinhala_link_7a.dart';
import 'links/grade_7/7a/tamil_link_7a.dart';
import 'links/grade_7/7b/buddhism_link_7b.dart';
import 'links/grade_7/7b/civic_link_7b.dart';
import 'links/grade_7/7b/english_link_7b.dart';
import 'links/grade_7/7b/geo_link_7b.dart';
import 'links/grade_7/7b/health_link_7b.dart';
import 'links/grade_7/7b/history_link_7b.dart';
import 'links/grade_7/7b/maths_link_7b.dart';
import 'links/grade_7/7b/pts_link_7b.dart';
import 'links/grade_7/7b/science_link_7b.dart';
import 'links/grade_7/7b/sinhala_link_7b.dart';
import 'links/grade_7/7b/tamil_link_7b.dart';
import 'links/grade_7/7c/buddhism_link_7c.dart';
import 'links/grade_7/7c/civic_link_7c.dart';
import 'links/grade_7/7c/english_link_7c.dart';
import 'links/grade_7/7c/geo_link_7c.dart';
import 'links/grade_7/7c/health_link_7c.dart';
import 'links/grade_7/7c/history_link_7c.dart';
import 'links/grade_7/7c/maths_link_7c.dart';
import 'links/grade_7/7c/pts_link_7c.dart';
import 'links/grade_7/7c/science_link_7c.dart';
import 'links/grade_7/7c/sinhala_link_7c.dart';
import 'links/grade_7/7c/tamil_link_7c.dart';
import 'links/grade_7/aesthetic_subjects/art_link_7.dart';
import 'links/grade_7/aesthetic_subjects/dancing_link_7.dart';
import 'links/grade_7/aesthetic_subjects/drama_link_7.dart';
import 'links/grade_7/aesthetic_subjects/music_link_7.dart';
import 'links/grade_8/8a/buddhism_link_8a.dart';
import 'links/grade_8/8a/civic_link_8a.dart';
import 'links/grade_8/8a/english_link_8a.dart';
import 'links/grade_8/8a/geo_link_8a.dart';
import 'links/grade_8/8a/health_link_8a.dart';
import 'links/grade_8/8a/history_link_8a.dart';
import 'links/grade_8/8a/maths_link_8a.dart';
import 'links/grade_8/8a/pts_link_8a.dart';
import 'links/grade_8/8a/science_link_8a.dart';
import 'links/grade_8/8a/sinhala_link_8a.dart';
import 'links/grade_8/8a/tamil_link_8a.dart';
import 'links/grade_8/8b/buddhism_link_8b.dart';
import 'links/grade_8/8b/civic_link_8b.dart';
import 'links/grade_8/8b/english_link_8b.dart';
import 'links/grade_8/8b/geo_link_8b.dart';
import 'links/grade_8/8b/health_link_8b.dart';
import 'links/grade_8/8b/history_link_8b.dart';
import 'links/grade_8/8b/maths_link_8b.dart';
import 'links/grade_8/8b/pts_link_8b.dart';
import 'links/grade_8/8b/science_link_8b.dart';
import 'links/grade_8/8b/sinhala_link_8b.dart';
import 'links/grade_8/8b/tamil_link_8b.dart';
import 'links/grade_8/8c/buddhism_link_8c.dart';
import 'links/grade_8/8c/civic_link_8c.dart';
import 'links/grade_8/8c/english_link_8c.dart';
import 'links/grade_8/8c/geo_link_8c.dart';
import 'links/grade_8/8c/health_link_8c.dart';
import 'links/grade_8/8c/history_link_8c.dart';
import 'links/grade_8/8c/maths_link_8c.dart';
import 'links/grade_8/8c/pts_link_8c.dart';
import 'links/grade_8/8c/science_link_8c.dart';
import 'links/grade_8/8c/sinhala_link_8c.dart';
import 'links/grade_8/8c/tamil_link_8c.dart';
import 'links/grade_8/aesthetic_subjects/art_link_8.dart';
import 'links/grade_8/aesthetic_subjects/dancing_link_8.dart';
import 'links/grade_8/aesthetic_subjects/drama_link_8.dart';
import 'links/grade_8/aesthetic_subjects/music_link_8.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
  // runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Online Education',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Online Education'),
      routes: {
        // Navigare to Grades Page
        'grades': (context) => GradesPage(),
        'login_page': (context) => TeacherPanelLogin(),
        'data_input_page': (context) => DataInputPage(),

        // Navigate to 6 ABC
        'subjects/6a': (context) => Grade6ASubjects(),
        'subjects/6b': (context) => Grade6BSubjects(),
        'subjects/6c': (context) => Grade6CSubjects(),

        // Grade 6A Subjects
        'subjects/6a/maths': (context) => MathsLink6a(),
        'subjects/6a/science': (context) => ScienceLink6a(),
        'subjects/6a/english': (context) => EnglishLink6a(),
        'subjects/6a/sinhala': (context) => SinhalaLink6a(),
        'subjects/6a/buddhism': (context) => BuddhismLink6a(),
        'subjects/6a/geography': (context) => GeoLink6a(),
        'subjects/6a/history': (context) => HistoryLink6a(),
        'subjects/6a/civic': (context) => CivicLink6a(),
        'subjects/6a/health': (context) => HealthLink6a(),
        'subjects/6a/pts': (context) => PtsLink6a(),
        'subjects/6a/tamil': (context) => TamilLink6a(),

        // Grade 6B Subjects
        'subjects/6b/science': (context) => ScienceLink6b(),
        'subjects/6b/maths': (context) => MathsLink6b(),
        'subjects/6b/english': (context) => EnglishLink6b(),
        'subjects/6b/sinhala': (context) => SinhalaLink6b(),
        'subjects/6b/buddhism': (context) => BuddhismLink6b(),
        'subjects/6b/geography': (context) => GeoLink6b(),
        'subjects/6b/history': (context) => HistoryLink6b(),
        'subjects/6b/civic': (context) => CivicLink6b(),
        'subjects/6b/health': (context) => HealthLink6b(),
        'subjects/6b/pts': (context) => PtsLink6b(),
        'subjects/6b/tamil': (context) => TamilLink6b(),

        // Grade 6C Subjects
        'subjects/6c/maths': (context) => MathsLink6c(),
        'subjects/6c/science': (context) => ScienceLink6c(),
        'subjects/6c/english': (context) => EnglishLink6c(),
        'subjects/6c/sinhala': (context) => SinhalaLink6c(),
        'subjects/6c/buddhism': (context) => BuddhismLink6c(),
        'subjects/6c/geography': (context) => GeoLink6c(),
        'subjects/6c/history': (context) => HistoryLink6c(),
        'subjects/6c/civic': (context) => CivicLink6c(),
        'subjects/6c/health': (context) => HealthLink6c(),
        'subjects/6c/pts': (context) => PtsLink6c(),
        'subjects/6c/tamil': (context) => TamilLink6c(),

        // Grade 6 Aesthetics
        'subjects/6/aesthetics': (context) => Grade6AestheticSubjects(),
        'subjects/6/art': (context) => ArtLink6(),
        'subjects/6/music': (context) => MusicLink6(),
        'subjects/6/dancing': (context) => DancingLink6(),
        'subjects/6/drama': (context) => DramaLink6(),

        // Navigate to 7 ABC
        'subjects/7a': (context) => Grade7ASubjects(),
        'subjects/7b': (context) => Grade7BSubjects(),
        'subjects/7c': (context) => Grade7CSubjects(),

        // Grade 7A Subjects
        'subjects/7a/maths': (context) => MathsLink7a(),
        'subjects/7a/science': (context) => ScienceLink7a(),
        'subjects/7a/english': (context) => EnglishLink7a(),
        'subjects/7a/sinhala': (context) => SinhalaLink7a(),
        'subjects/7a/buddhism': (context) => BuddhismLink7a(),
        'subjects/7a/geography': (context) => GeoLink7a(),
        'subjects/7a/history': (context) => HistoryLink7a(),
        'subjects/7a/civic': (context) => CivicLink7a(),
        'subjects/7a/health': (context) => HealthLink7a(),
        'subjects/7a/pts': (context) => PtsLink7a(),
        'subjects/7a/tamil': (context) => TamilLink7a(),

        // Grade 7B Subjects
        'subjects/7b/science': (context) => ScienceLink7b(),
        'subjects/7b/maths': (context) => MathsLink7b(),
        'subjects/7b/english': (context) => EnglishLink7b(),
        'subjects/7b/sinhala': (context) => SinhalaLink7b(),
        'subjects/7b/buddhism': (context) => BuddhismLink7b(),
        'subjects/7b/geography': (context) => GeoLink7b(),
        'subjects/7b/history': (context) => HistoryLink7b(),
        'subjects/7b/civic': (context) => CivicLink7b(),
        'subjects/7b/health': (context) => HealthLink7b(),
        'subjects/7b/pts': (context) => PtsLink7b(),
        'subjects/7b/tamil': (context) => TamilLink7b(),

        // Grade 7C Subjects
        'subjects/7c/maths': (context) => MathsLink7c(),
        'subjects/7c/science': (context) => ScienceLink7c(),
        'subjects/7c/english': (context) => EnglishLink7c(),
        'subjects/7c/sinhala': (context) => SinhalaLink7c(),
        'subjects/7c/buddhism': (context) => BuddhismLink7c(),
        'subjects/7c/geography': (context) => GeoLink7c(),
        'subjects/7c/history': (context) => HistoryLink7c(),
        'subjects/7c/civic': (context) => CivicLink7c(),
        'subjects/7c/health': (context) => HealthLink7c(),
        'subjects/7c/pts': (context) => PtsLink7c(),
        'subjects/7c/tamil': (context) => TamilLink7c(),

        // Grade 7 Aesthetics
        'subjects/7/aesthetics': (context) => Grade7AestheticSubjects(),
        'subjects/7/art': (context) => ArtLink7(),
        'subjects/7/music': (context) => MusicLink7(),
        'subjects/7/dancing': (context) => DancingLink7(),
        'subjects/7/drama': (context) => DramaLink7(),

        // Navigate to 8 ABC
        'subjects/8a': (context) => Grade8ASubjects(),
        'subjects/8b': (context) => Grade8BSubjects(),
        'subjects/8c': (context) => Grade8CSubjects(),

        // Grade 8A Subjects
        'subjects/8a/maths': (context) => MathsLink8a(),
        'subjects/8a/science': (context) => ScienceLink8a(),
        'subjects/8a/english': (context) => EnglishLink8a(),
        'subjects/8a/sinhala': (context) => SinhalaLink8a(),
        'subjects/8a/buddhism': (context) => BuddhismLink8a(),
        'subjects/8a/geography': (context) => GeoLink8a(),
        'subjects/8a/history': (context) => HistoryLink8a(),
        'subjects/8a/civic': (context) => CivicLink8a(),
        'subjects/8a/health': (context) => HealthLink8a(),
        'subjects/8a/pts': (context) => PtsLink8a(),
        'subjects/8a/tamil': (context) => TamilLink8a(),

        // Grade 7B Subjects
        'subjects/8b/science': (context) => ScienceLink8b(),
        'subjects/8b/maths': (context) => MathsLink8b(),
        'subjects/8b/english': (context) => EnglishLink8b(),
        'subjects/8b/sinhala': (context) => SinhalaLink8b(),
        'subjects/8b/buddhism': (context) => BuddhismLink8b(),
        'subjects/8b/geography': (context) => GeoLink8b(),
        'subjects/8b/history': (context) => HistoryLink8b(),
        'subjects/8b/civic': (context) => CivicLink8b(),
        'subjects/8b/health': (context) => HealthLink8b(),
        'subjects/8b/pts': (context) => PtsLink8b(),
        'subjects/8b/tamil': (context) => TamilLink8b(),

        // Grade 7C Subjects
        'subjects/8c/maths': (context) => MathsLink8c(),
        'subjects/8c/science': (context) => ScienceLink8c(),
        'subjects/8c/english': (context) => EnglishLink8c(),
        'subjects/8c/sinhala': (context) => SinhalaLink8c(),
        'subjects/8c/buddhism': (context) => BuddhismLink8c(),
        'subjects/8c/geography': (context) => GeoLink8c(),
        'subjects/8c/history': (context) => HistoryLink8c(),
        'subjects/8c/civic': (context) => CivicLink8c(),
        'subjects/8c/health': (context) => HealthLink8c(),
        'subjects/8c/pts': (context) => PtsLink8c(),
        'subjects/8c/tamil': (context) => TamilLink8c(),

        // Grade 7 Aesthetics
        'subjects/8/aesthetics': (context) => G8AestheticSubjects(),
        'subjects/8/art': (context) => ArtLink8(),
        'subjects/8/music': (context) => MusicLink8(),
        'subjects/8/dancing': (context) => DancingLink8(),
        'subjects/8/drama': (context) => DramaLink8(),
      },
    );
  }
}
