import 'package:flutter/material.dart';
import 'package:todo/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancle;
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancle,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue[300],
      content: Container(
        height: 120,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              // hintStyle:" Add a new task" ,
            ),
          ),
          // button to save and cancel
          Row(
            children: [
              //save button
              myButton(text: "Save", onPressed: onSave),
              const SizedBox(
                width: 4,
              ),
              //cancle button
              myButton(text: "Cancle", onPressed: onCancle)
            ],
          )
        ]),
      ),
    );
  }
}
