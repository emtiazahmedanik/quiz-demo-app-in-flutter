

import 'package:hive_ce/hive.dart';

part 'QuizQuestion.g.dart'; // This must match the generated file name

@HiveType(typeId: 0) // Ensure typeId is unique across models
class QuizQuestion {
  @HiveField(0)
  final String question;

  @HiveField(1)
  final List<String> options;

  @HiveField(2)
  final int correctAnswerIndex;

  QuizQuestion({
    required this.question,
    required this.options,
    required this.correctAnswerIndex,
  });
}
