// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../constants.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key, required this.hintText, required this.inputType,
  });
  final String hintText;
  final TextInputType inputType;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextField(
        style: kBodyText.copyWith(color:Colors.white ),
        keyboardType: inputType,
        textInputAction:TextInputAction.next,
        decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(20),  
        hintText: hintText,
        hintStyle: kBodyText,
        enabledBorder:OutlineInputBorder(borderSide: const BorderSide(color: Colors.grey, width: 1), borderRadius: BorderRadius.circular(18)),
        focusedBorder:OutlineInputBorder(borderSide: const BorderSide(color: Colors.grey, width: 1,), borderRadius: BorderRadius.circular(18)),
        )),
    );
  }
}