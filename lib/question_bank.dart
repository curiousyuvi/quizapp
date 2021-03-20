import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizapp/Questions.dart';
import 'Questions.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:quizapp/main.dart';

int _qno = 0;
quizscreen quizcreenobj = quizscreen();

class QuestionBank {
  List<Questions> _questions = [
    Questions('Ubuntu is a kernel.', false),
    Questions('Java and Java Script are exactly the same thing.', false),
    Questions('C++ is the best language for Competitive Programming.', true),
    Questions('Linux is an Operating System.', false),
    Questions('VLC Media Player is not an Open Source Organisation.', false),
    Questions('Array can have elements of different data types', false),
    Questions('Git and Github are used for Version  Control', true),
    Questions(' \'break;\' statement in C++ terminate the loop.', true),
    Questions('Is C++ a procedural language.', false),
    Questions('Vim is an IDE.', false),
    Questions('OOP stands for Object Online Programing.', false),
    Questions('Uburetntu is based on Arch', false),
    Questions('Kotlin is supported by Google for App Development.', true),
    Questions('ReactJS has been created by Facebook.', true),
    Questions('Flutter is used for native development.', false)
  ];

  void incrementqno(BuildContext context) {
    if ((_qno + 1) < _questions.length)
      _qno++;
    else
      Alert(
        context: context,
        type: AlertType.success,
        title: "GOOD JOB!!",
        desc: "You have completed the quiz.",
        buttons: [
          DialogButton(
            child: Text(
              "RETAKE QUIZ",
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
            onPressed: () => Navigator.pop(context),
            width: 120,
          )
        ],
      ).show();
  }

  int giveqno() {
    return _qno;
  }

  String giveQuestion(int quesno) {
    return _questions[quesno].question;
  }

  bool giveAnswer(int quesno) {
    return _questions[quesno].answer;
  }
}
