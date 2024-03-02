import 'package:flutter/material.dart';
import 'package:quizapp/app/views/addquestion_module/addquestion.dart';

class CreateQuestion extends StatefulWidget {
  const CreateQuestion({super.key});

  @override
  State<CreateQuestion> createState() => _CreateQuestionState();
}

class _CreateQuestionState extends State<CreateQuestion> {
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
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Center(child: Text("Add Questions")),
      ),
    );
  }
}
