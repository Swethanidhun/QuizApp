import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/app/views/addquestion_module/addquestion.dart';
import 'package:quizapp/app/views/addquestion_module/addquestionsviewmodel.dart';

class CreateQuestion extends StatefulWidget {
  const CreateQuestion({super.key});

  @override
  State<CreateQuestion> createState() => _CreateQuestionState();
}

class _CreateQuestionState extends State<CreateQuestion> {
  // @override
  // void initState() {
  //   super.initState();
  //   Provider.of<AddQuestionsViewModel>(context).storeData();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: const Color.fromARGB(255, 193, 245, 195),
        child: const Icon(Icons.add, size: 25),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const AddQuestion(),
          ));
        },
      ),
      appBar: AppBar(
        title: const Center(child: Text("Add Questions")),
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
