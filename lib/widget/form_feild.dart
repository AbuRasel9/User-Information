import 'package:flutter/material.dart';

class FormFeild extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String errorText;


  FormFeild({
    super.key,
    required this.controller, required this.hintText, required this.errorText,

  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (String? value){
        if(value?.isEmpty  ??true){
          return "Enter $errorText";

        }
        return null;
      },
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText,
          fillColor: Colors.greenAccent,
          filled: true,

          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
          )
      ),
    );
  }
}
