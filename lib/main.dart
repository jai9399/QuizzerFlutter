import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> score =[];
  int qno = 0;
  bool check=false;
  List<String> qs =['You can lead a cow down stairs but not up stairs.',
  'Approximately one quarter of human bones are in the feet.',
  'A slug\'s blood is green.',
  'The capital of Libya is Benghazi.',
  'Albert Einstein was awarded the Nobel Prize in Physics.',
  'Baby koalas are called joeys.',
  'Gone with the Wind takes place in Savannah, Georgia.',
  'Brazil is the only country in the Americas whose official language is Portuguese.',
  'The first name of Kramer in Seinfeld is Cosmo.',
  'The American Civil War ended in 1776.',
  'A right triangle can never be equilateral.',
  'The Ford Edsel was named after Henry Ford’s father.',
  'The Dickens novel Oliver Twist begins with the well-known phrase: “It was the best of times, it was the worst of times.”',
  '“Paprika” is the Hungarian word for “pepper.”',
  'The Bill of Rights contains 10 amendments to the Constitution.'
  ];
  List<bool> ans = [false,true,true,false,true,true,false,true,true,false,true,false,false,true,true];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                qs[qno],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(() {
                  if(qno>qs.length-1 || check){

               }  else{
                   if(ans[qno]==true){
                  score.add(
                    Icon(
                      Icons.check,
                      color:Colors.green
                    )
                  );
                }
                else{
                  score.add(
                    Icon(
                      Icons.close,
                      color:Colors.red
                    )
                  );
                }
                qno++;
                if(qno==qs.length){
                  qno=qs.length-1;
                  check=true;
                }
               }
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  if(qno>qs.length-1|| check){
                    
                  }
                else{
                if(ans[qno]==false){
                  score.add(
                    Icon(
                      Icons.check,
                      color:Colors.green
                    )
                  );
                }
                else{
                  score.add(
                    Icon(
                      Icons.close,
                      color:Colors.red
                    )
                  );
                }
                qno++;
                if(qno==qs.length){
                     qno=qs.length-1;
                     check = true;
                }
                }
                });
              },
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: score,
        ),
      SizedBox(
        height: 20,
      )
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
