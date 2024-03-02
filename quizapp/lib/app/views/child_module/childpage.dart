import 'package:flutter/material.dart';
import 'package:quizapp/app/views/computer_module/computer.dart';

class ChildHome extends StatefulWidget {
  const ChildHome({super.key});

  @override
  State<ChildHome> createState() => _ChildHomeState();
}

class _ChildHomeState extends State<ChildHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Lessons")),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ComputerPage(),
                ));
              },
              child: const Text("English"))
        ],
      ),
    );
  }
}
