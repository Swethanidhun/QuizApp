import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/app/views/addquestion_module/addquestionsviewmodel.dart';

class ComputerPage extends StatefulWidget {
  const ComputerPage({super.key});

  @override
  State<ComputerPage> createState() => _ComputerPageState();
}

class _ComputerPageState extends State<ComputerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Computer")),
      ),
      body: Consumer<AddQuestionsViewModel>(builder: (context, addmodule, _) {
        return ListView.builder(
          itemCount: addmodule.questionAnswerList.length,
          itemBuilder: (context, index) {
            final question = addmodule.questionAnswerList[index]['question'];
            final answer = addmodule.questionAnswerList[index]['answer'];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Question ${index + 1}: $question'),
                  Text('Answer: $answer'),
                ],
              ),
            );
          },
        );
      }),
    );
  }
}
