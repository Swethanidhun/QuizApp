import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  const TextFields({
    super.key,
    required this.controller,
    required this.name,
    required this.color,
     this.maxLines,
  });
  final TextEditingController? controller;
  final String name;
  final Color? color;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 14, color: color),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: TextFormField(
                maxLines:maxLines ,
                controller: controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
