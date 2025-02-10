import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:quiz_app_demo/insert_question_in_db/HtmlQuestionInsert.dart';
import 'package:quiz_app_demo/screens/HomePage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:hive_ce/hive.dart';

import 'models/QuizQuestion.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(QuizQuestionAdapter());
  await Hive.openBox<QuizQuestion>("htmlQuestion");
  HtmlQuestionInsert.storeQuestions();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context,orientaion,deviceType){
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              textTheme:TextTheme(
                  headlineLarge: GoogleFonts.kufam(textStyle: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.w500)),
                  headlineMedium: GoogleFonts.kufam(textStyle: TextStyle(fontSize: 10,color: Colors.black,fontWeight: FontWeight.w500)),
                  headlineSmall: GoogleFonts.kufam(textStyle: TextStyle(fontSize: 8,color: Colors.black,fontWeight: FontWeight.w500)),
                  bodySmall: GoogleFonts.kufam(textStyle: TextStyle(fontSize: 8,color: Color.fromRGBO(34, 33, 33, 1),fontWeight: FontWeight.w500)),
                  labelSmall: GoogleFonts.playfairDisplay(textStyle: TextStyle(fontSize: 10,color: Colors.white,fontWeight: FontWeight.w600)),
                  labelLarge: GoogleFonts.playfairDisplay(textStyle: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w600)),
                  labelMedium: GoogleFonts.playfairDisplay(textStyle: TextStyle(fontSize: 10,color: Color.fromRGBO(9, 66, 152,1),fontWeight: FontWeight.w600)),
                  bodyLarge: GoogleFonts.kufam(textStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.black))

              )
          ),
          home:  MyHomePage(),
        );
      },

    );
  }
}


