import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizapp/app/views/parent_module/parentpage.dart';
import 'package:quizapp/app/views/signup_module/signupviewmodel.dart';
import 'package:quizapp/app/widgets/textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Sign Up")),
      ),
      body: Consumer<SignupViewModel>(builder: (context, signupmodel, _) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFields(
                controller: signupmodel.namecontroller,
                name: "Name",
                color: Colors.black,
              ),
              TextFields(
                  controller: signupmodel.passwordcontroller,
                  name: "Password",
                  color: Colors.black),
              TextFields(
                  controller: signupmodel.reenterpwdcontroller,
                  name: "Re-Enter password",
                  color: Colors.black),
              ElevatedButton(
                  onPressed: () {
                    signupmodel.saveData();
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ParentHome(),
                    ));
                  },
                  child: const Text("SignUp"))
            ],
          ),
        );
      }),
    );
  }
}
