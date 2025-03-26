import 'package:flutter/material.dart'; 
import 'package:quiz_app1/result_screen.dart';
void main() {
runApp(const MyApp()); 
}
class MyApp extends StatelessWidget {
const MyApp({super.key});
@override
Widget build(BuildContext context) {
return MaterialApp(
home: QuizApp(),
);
} 
}
class QuizApp extends StatefulWidget {
const QuizApp({super.key});
@override
State createState(){
return _QuizAppState();
} 
}
class _QuizAppState extends State {
List<Map> allQuestions = [
{
"question": "Who is the founder of Microsoft?",
"options": ["Steve Jobs", "Bill Gates", "Elon Musk", "Jeff Bezos"],
"correctAnswer": 1,
},
{
"question": "Who is the founder of Google?",
"options": ["Steve Jobs", "Bill Gates", "Lary Page", "Elon musk"],
"correctAnswer": 2
},
{
"question": "Who is the founder of SpaceX?",
"options": ["Steve Jobs", "Bill Gates", "Lary Page", "Elon musk"],
"correctAnswer": 3
},
{
"question": "Who is the founder of Apple?",
"options": ["Steve Jobs", "Bill Gates", "Lary Page", "Elon musk"],
"correctAnswer": 0
},
{
"question": "Who is the founder of Meta?",
"options": ["Steve Jobs", "Mark Zuckerberg", "Lary Page", "Elon musk"],
"correctAnswer": 1
},
];
int currentQuestIndex = 0;
int correctAnsCount = 0;
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text(
"Quiz App",
style: TextStyle(
fontSize: 30,
fontWeight: FontWeight.w700,
color: Colors.orange,
),
),
centerTitle: true,
backgroundColor: Colors.blue,
),
body: Column(
children: [
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text(
"Question:",
style: TextStyle(
fontSize: 25,
fontWeight: FontWeight.w500,
),
),
SizedBox(
width: 5,
),
Text(
"${currentQuestIndex + 1} /${allQuestions.length}",
style: TextStyle(
fontSize: 25,
fontWeight: FontWeight.w500,
),
)
],
),
SizedBox(
height: 20,
),
Text(
allQuestions[currentQuestIndex]['question'],
style: TextStyle(
fontSize: 25,
fontWeight: FontWeight.w600,
color: Colors.purple,
),
),
SizedBox(
height: 70,
),
SizedBox(
width: 350,
height: 50,
child: ElevatedButton(
onPressed: () {
if (allQuestions[currentQuestIndex]['correctAnswer'] == 0) {
ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(
content: Text("Correct Answer"),
backgroundColor: Colors.green,
duration: Duration(seconds: 3),
),
);
correctAnsCount++;
} else {
ScaffoldMessenger.of(context).showSnackBar(
SnackBar(
content: Text("Incorrect Answer"),
backgroundColor: Colors.red,
duration: Duration(seconds: 3),
),
);
}
setState(() {});
},
child: Text(
allQuestions[currentQuestIndex]['options'][0],
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.w400,
),
),
),
),
SizedBox(
height: 20,
),
SizedBox(
width: 350,
height: 50,
child: ElevatedButton(
onPressed: () {
if (allQuestions[currentQuestIndex]['correctAnswer'] == 1) {
ScaffoldMessenger.of(context).showSnackBar(
SnackBar(
content: Text("Correct Answer"),
backgroundColor: Colors.green,
duration: Duration(seconds: 3),
),
);
correctAnsCount++;
} else {
ScaffoldMessenger.of(context).showSnackBar(
SnackBar (
  content: Text("Incorrect Answer"),
backgroundColor: Colors.red,
duration: Duration(seconds: 3),
),
);
}
setState(() {});
},
child: Text(
allQuestions[currentQuestIndex]['options'][1],
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.w400,
),
),
),
),
SizedBox(
height: 20,
),
SizedBox(
width: 350,
height: 50,
child: ElevatedButton(
  onPressed: () {
if (allQuestions[currentQuestIndex]['correctAnswer'] == 2) {
ScaffoldMessenger.of(context).showSnackBar(
SnackBar(
content: Text("Correct Answer"),
backgroundColor: Colors.green,
duration: Duration(seconds: 3),
),
);
correctAnsCount++;
} else {
ScaffoldMessenger.of(context).showSnackBar(
SnackBar(
content: Text("Incorrect Answer"),
backgroundColor: Colors.red,
duration: Duration(seconds: 3),
),
);
}
setState(() {});
},
child: Text(
allQuestions[currentQuestIndex]['options'][2],
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.w400,
),
),
),
),
SizedBox(
height: 20,
),
SizedBox(
width: 350,
height: 50,
child: ElevatedButton(
onPressed: () {
if (allQuestions[currentQuestIndex]['correctAnswer'] == 3) {
ScaffoldMessenger.of(context).showSnackBar(
SnackBar(
content: Text("Correct Answer"),
backgroundColor: Colors.green,
duration: Duration(seconds: 3),
),
);
correctAnsCount++;
} else {
ScaffoldMessenger.of(context).showSnackBar(
SnackBar(
content: Text("Incorrect Answer"),
backgroundColor: Colors.red,
duration: Duration(seconds: 3),
),
);
}
setState(() {});
},
child: Text(
allQuestions[currentQuestIndex]['options'][3],
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.w400,
),
),
),
),
],
),
floatingActionButton: FloatingActionButton(
  onPressed: () {
if (allQuestions.length != (currentQuestIndex + 1)) {
currentQuestIndex++;
setState(() {});
} else {
Navigator.of(context).pushReplacement(
MaterialPageRoute(
builder: (context) {
return ResultScreen(
correctAnswers: correctAnsCount,
noOfQuestions: allQuestions.length,
);
},
),
);
}
},
backgroundColor: Colors.blue,
child: Icon(
Icons.forward,
color: Colors.orange,
),
),
);
}
}