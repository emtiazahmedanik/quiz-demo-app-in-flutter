import 'package:hive_ce/hive.dart';
import 'package:quiz_app_demo/models/QuizQuestion.dart';

class HtmlQuestionInsert{
  static late final Box<QuizQuestion> _box;
  static Future<void> hiveInitialize()async {
    if(!Hive.isBoxOpen('htmlQuestion')){
      _box = await Hive.openBox<QuizQuestion>('htmlQuestion');
    }else{
      _box = Hive.box<QuizQuestion>("htmlQuestion");
    }
  }

  static void storeQuestions() async {
    hiveInitialize();

    // Check if the box is empty
    if (_box.isEmpty) {
      // Add the questions only if the box is empty
      List<QuizQuestion> questions = [
        QuizQuestion(
          question: "What does HTML stand for?",
          options: [
            "Hyperlinks and Text Markup Language",
            "Hyper Text Markup Language",
            "Home Tool Markup Language",
            "Hyper Transfer Markup Language"
          ],
          correctAnswerIndex: 1,
        ),
        QuizQuestion(
          question: "Which HTML tag is used to create a hyperlink?",
          options: ["<link>", "<a>", "<href>", "<hyperlink>"],
          correctAnswerIndex: 1,
        ),
        QuizQuestion(
          question: "What does CSS stand for?",
          options: [
            "Cascading Style Sheets",
            "Computer Style Sheets",
            "Creative Style Systems",
            "Colorful Style Sheets"
          ],
          correctAnswerIndex: 0,
        ),
        QuizQuestion(
          question: "Which tag is used to display images in HTML?",
          options: ["<img>", "<image>", "<picture>", "<src>"],
          correctAnswerIndex: 0,
        ),
        QuizQuestion(
          question: "What is the correct HTML element for inserting a line break?",
          options: ["<break>", "<br>", "<lb>", "<hr>"],
          correctAnswerIndex: 1,
        ),
        QuizQuestion(
          question: "Which HTML attribute is used to define the background color of a page?",
          options: ["bgcolor", "color", "background", "style"],
          correctAnswerIndex: 0,
        ),
        QuizQuestion(
          question: "How can you make a list that is numbered?",
          options: ["<list>", "<ol>", "<ul>", "<dl>"],
          correctAnswerIndex: 1,
        ),
        QuizQuestion(
          question: "Which HTML element is used to display the title of a document?",
          options: ["<head>", "<title>", "<meta>", "<body>"],
          correctAnswerIndex: 1,
        ),
        QuizQuestion(
          question: "Which HTML element is used to define a paragraph?",
          options: ["<p>", "<para>", "<text>", "<pr>"],
          correctAnswerIndex: 0,
        ),
        QuizQuestion(
          question: "What is the correct HTML tag for a dropdown list?",
          options: ["<select>", "<dropdown>", "<list>", "<menu>"],
          correctAnswerIndex: 0,
        ),
      ];

      // Add questions to the database
      for (var question in questions) {
        await _box.add(question);
      }
    }
  }

}