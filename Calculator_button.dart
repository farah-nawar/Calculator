
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget{
  String text;
  Function onButtonClicked;
  CalculatorButton({required this.text, required this.onButtonClicked});
  @override
  Widget build(BuildContext context) {
    return Expanded(child: ElevatedButton(

      onPressed: () {
       /// call back function
        onButtonClicked(text);
      },
      child: Text(text, style: TextStyle(fontSize: 24),),




    ),
    );
  }




}