import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddQuestionsViewModel extends ChangeNotifier {
  TextEditingController questioncontroller = TextEditingController();
  TextEditingController answercontroller = TextEditingController();
  List<Map<String, String>> questionAnswerList = [];
  Future<void> storeData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('question', questioncontroller.text);
    await prefs.setString('answer', answercontroller.text);
    questioncontroller.clear();
    answercontroller.clear();
    final String ques = prefs.getString('question').toString();
    final String ans = prefs.getString('answer').toString();
    questionAnswerList.add({'question': ques, 'answer': ans});
    log(ques);
    log(ans);
    notifyListeners();
  }
}
