import 'question_bank.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: quizscreen(),
      ),
    ),
  );
}

QuestionBank questionBankobj = QuestionBank();

class quizscreen extends StatefulWidget {
  @override
  _quizscreenState createState() => _quizscreenState();
}

class _quizscreenState extends State<quizscreen> {
  List<Icon> scorekeeper = [];

  int qno = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Expanded(child: SizedBox()),
              Expanded(
                child: Center(
                  child: Text(
                    questionBankobj.giveQuestion(qno),
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: FlatButton(
                  onPressed: () {
                    if (qno < 7) {
                      setState(() {
                        if (questionBankobj.giveAnswer(qno)) {
                          scorekeeper.add(
                            Icon(Icons.check, color: Colors.green),
                          );
                        } else {
                          scorekeeper.add(
                            Icon(Icons.close, color: Colors.red),
                          );
                        }
                        qno++;
                      });
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'TRUE',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  color: Colors.green,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: FlatButton(
                  onPressed: () {
                    if (qno < 7) {
                      setState(() {
                        if (!(questionBankobj.giveAnswer(qno))) {
                          scorekeeper.add(
                            Icon(Icons.check, color: Colors.green),
                          );
                        } else {
                          scorekeeper.add(
                            Icon(Icons.close, color: Colors.red),
                          );
                        }
                        qno++;
                      });
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'FALSE',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  color: Colors.red,
                ),
              ),
              Row(children: scorekeeper)
            ],
          ),
        ),
      ),
    );
  }
}
