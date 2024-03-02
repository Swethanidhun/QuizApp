import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/app/views/createquestion_module/createquestion.dart';
import 'package:quizapp/app/views/parent_module/parentviewmodel.dart';
import 'package:quizapp/app/views/signup_module/signup.dart';
import 'package:quizapp/app/widgets/textfield.dart';

class ParentHome extends StatefulWidget {
  const ParentHome({super.key});

  @override
  State<ParentHome> createState() => _ParentHomeState();
}

class _ParentHomeState extends State<ParentHome> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Parents")),
      ),
      body: Consumer<ParentViewModel>(builder: (context, parentmodel, _) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFields(
                controller: parentmodel.usernamecontroller,
                name: "Username",
                color: Colors.black,
              ),
              TextFields(
                controller: parentmodel.passwordcontroller,
                name: "Password",
                color: Colors.black,
                
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CreateQuestion(),
                  ));
                },
                child: const Text("Login"),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SignUp(),
                    ));
                  },
                  child: const Text("Sign Up"))
            ],
          ),
        );
      }),
    );
  }
}
