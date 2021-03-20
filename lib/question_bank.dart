import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizapp/Questions.dart';
import 'Questions.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:quizapp/main.dart';

int _qno = 0;
quizscreen  quizcreenobj= quizscreen();

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

  void incrementqno(BuildContext context){
    if((_qno+1)< _questions.length)
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

  int giveqno()
  {
    return _qno;
  }

  String giveQuestion(int quesno) {
    return _questions[quesno].question;
  }

  bool giveAnswer(int quesno) {
    return _questions[quesno].answer;
  }
}
