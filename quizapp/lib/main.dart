import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/app/views/addquestion_module/addquestionsviewmodel.dart';
import 'package:quizapp/app/views/home_module/homepage.dart';
import 'package:quizapp/app/views/parent_module/parentviewmodel.dart';
import 'package:quizapp/app/views/signup_module/signupviewmodel.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ParentViewModel>(
          create: (_) => ParentViewModel(),
        ),
        ChangeNotifierProvider<SignupViewModel>(
          create: (_) => SignupViewModel(),
        ),
        ChangeNotifierProvider<AddQuestionsViewModel>(
          create: (_) => AddQuestionsViewModel(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
