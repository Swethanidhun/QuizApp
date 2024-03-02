import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/app/views/addquestion_module/addquestionsviewmodel.dart';
import 'package:quizapp/app/views/createquestion_module/createquestion.dart';
import 'package:quizapp/app/widgets/textfield.dart';

class AddQuestion extends StatefulWidget {
  const AddQuestion({super.key});

  @override
  State<AddQuestion> createState() => _AddQuestionState();
}

class _AddQuestionState extends State<AddQuestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      body: Consumer<AddQuestionsViewModel>(
          builder: (context, addquestionmodel, _) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFields(
                controller: addquestionmodel.questioncontroller,
                name: "Question",
                color: Colors.black,
              ),
              TextFields(
                controller: addquestionmodel.answercontroller,
                name: "Answer",
                color: Colors.black,
                maxLines: 8,
              ),
              ElevatedButton(
                  onPressed: () {
                    addquestionmodel.storeData();
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CreateQuestion(),
                    ));
                  },
                  child: const Text("Add"))
            ],
          ),
        );
      }),
    );
  }
}
