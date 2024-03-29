import 'package:final_project/styles/colors.dart';
import 'package:flutter/material.dart';

import '../styles/colors.dart';

Widget customTextField(
    {String? title,
    String? hint,
    String? value,
    String? lable,
    TextInputType? textType,
    TextEditingController? controller,
    int? maxLines = 1,
    bool? obscureText}) {
  return Column(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: lightGrey,
        ),
        child: TextFormField(
          initialValue: value,
          keyboardType: textType,
          controller: controller,
          maxLines: maxLines,
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
            hintText: hint,
            labelText: lable,

            //border: InputBorder.none
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 1.0),
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                )),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.deepPurple, width: 1.0),
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                )),
          ),
        ),
      )
    ],
  );
}
