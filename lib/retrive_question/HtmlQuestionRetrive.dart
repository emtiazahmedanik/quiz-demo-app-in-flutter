import 'package:hive_ce/hive.dart';

import '../models/QuizQuestion.dart';

class HtmlQuestionRetrive{
  static final Box<QuizQuestion> box = Hive.box<QuizQuestion>("htmlQuestion");
  static List<dynamic> keys = box.keys.toList();
}