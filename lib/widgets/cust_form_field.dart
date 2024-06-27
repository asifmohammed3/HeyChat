import 'package:flutter/material.dart';

class CustFormField extends StatelessWidget {
  final String hintText;
  final double height;
  final RegExp validationRegEx;
  final bool obscureText;
  final void Function(String?) onSaved;


  const CustFormField({super.key,required this.hintText, required this.height, required this.validationRegEx,this.obscureText=false, required this.onSaved});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextFormField(
        onSaved: onSaved,
        obscureText: obscureText,
        validator: (value){
          if(value != null &&  validationRegEx.hasMatch(value)){
            return null;
          }
          return "Enter a valid ${hintText.toLowerCase()}";
        },

        decoration: InputDecoration(
            hintText: hintText,
            border:const OutlineInputBorder() ),
      ),
    );
  }
}
