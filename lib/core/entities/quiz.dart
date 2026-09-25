import 'package:devquiz/core/entities/question.dart';

enum Level { easy, medium, hard, expert }

class Quiz {
  final String title;
  final List<Question> questions;
  final int questionAnswered;
  final String image;
  final Level level;

  Quiz({
    required this.title,
    required this.questions,
    this.questionAnswered = 0,
    required this.image,
    required this.level,
  });
}
