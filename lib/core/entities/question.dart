import 'package:devquiz/features/challenge/presentation/widgets/answer/answer.dart';

class Question {
  final String title;
  final List<Answer> answers;

  Question({required this.title, required this.answers})
    : assert(answers.length == 4, 'A question must have exactly 4 answers.');
}
