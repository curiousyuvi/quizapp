import 'package:quizapp/Questions.dart';
import 'Questions.dart';

class QuestionBank {
  List<Questions> _questions = [
    Questions(q: 'A human has two dicks.', a: false),
    Questions(q: 'Java and Java Script are exactly the same thing.', a: false),
    Questions(
        q: 'C++ is the best language for Competitive Programming.', a: true),
    Questions(q: 'Linux is an Operating System.', a: false),
    Questions(
        q: 'VLC Media Player is not an Open Source Organisation.', a: false),
    Questions(q: 'Array can have elements of different data types', a: false),
    Questions(q: 'Git and Github are used for Version  Control', a: true ),
    Questions(q: ' \'break;\' statement in C++ terminate the loop.',a: true)
  ];

  String giveQuestion(int quesno) {
    return _questions[quesno].question;
  }

  bool giveAnswer(int quesno) {
    return _questions[quesno].answer;
  }
}
