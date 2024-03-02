import 'package:flutter/material.dart';
import 'package:quizapp/app/views/createquestion_module/createquestion.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignupViewModel extends ChangeNotifier {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController reenterpwdcontroller = TextEditingController();
  TextEditingController usercontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  String name = "";
  String pwd = "";
  String entername = "";
  String enterpwd = "";
  Future<void> saveData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', namecontroller.text);
    await prefs.setString('password', passwordcontroller.text);
    await prefs.setString('repassword', reenterpwdcontroller.text);
    namecontroller.clear();
    passwordcontroller.clear();
    reenterpwdcontroller.clear();
    name = prefs.getString('name').toString();
    pwd = prefs.getString('password').toString();
    final String repwd = prefs.getString('repassword').toString();
    notifyListeners();
  }

  Future<void> checkLogin(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('entername', usercontroller.text);
    await prefs.setString('enterpassword', passcontroller.text);
    usercontroller.clear();
    passcontroller.clear();
    entername = prefs.getString('entername').toString();
    enterpwd = prefs.getString('enterpassword').toString();
    if (name == entername && pwd == enterpwd) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const CreateQuestion(),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Invalid username and password'),
        ),
      );
    }
  }
}
