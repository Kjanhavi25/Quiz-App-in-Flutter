import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget{
  final int noOfQuestions;
  final int correctAnswers;
  const ResultScreen(
    {super.key, required this.correctAnswers, required this.noOfQuestions}
  );

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Result",
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Image.network(
            "https://media.istockphoto.com/id/655254230/vector/trophy-cup-icon.jpg?s=612x612&w=0&k=20&c=ScSSWWysiBHe85N0deb42VG_y5it-GTBDfMP36UiuBI=",
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "SCORE:$correctAnswers/$noOfQuestions",
            style: TextStyle(
              fontSize: 30,
            ),
          )
        ],
      )
    );
  }
}