import 'package:flutter/material.dart';
import 'package:quizapp/app/views/child_module/childpage.dart';
import 'package:quizapp/app/views/parent_module/parentpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("Home"))),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ParentHome(),
                  ));
                },
                child: const Text("Parent Mode")),
            const SizedBox(
              width: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ChildHome(),
                  ));
                },
                child: const Text("Child Mode"))
          ],
        ),
      ),
    );
  }
}
