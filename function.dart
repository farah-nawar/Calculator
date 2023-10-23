import 'package:flutter/material.dart';
import 'package:untitled9/Calculator_button.dart';

class CalculatorScreen extends StatefulWidget {
  static const String routeName= 'calculator';

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String resText='';

  @override
  Widget build(BuildContext context){
    return  Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
          centerTitle: true
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Row(
              children: [Text('$resText', style: TextStyle(
                fontSize: 24,
              ),
              ),
              ]
            )),
            Expanded(child: Container(

               child:  Row(

                 crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                 CalculatorButton(text: '7',onButtonClicked:(text){
                    resText+=text;
                    setState(() {
                    });
                 },),
                  CalculatorButton(text: '8',onButtonClicked:(text){
                    resText+=text;
                  },),
                  CalculatorButton(text: '9',onButtonClicked:(text){
                    resText+=text;
                    setState(() {
                    });
                  },),
                  CalculatorButton(text: '*',onButtonClicked:onOperatorClick),
                ],
              ),

            )),
            Expanded(child: Container(
              //color: Colors.pink,
              child:  Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalculatorButton(text: '4',onButtonClicked:(text){
                    resText+=text;
                    setState(() {
                    });
                  },),
                  CalculatorButton(text: '5',onButtonClicked:(text){
                    resText+=text;
                    setState(() {
                    });
                  },),
                  CalculatorButton(text: '6',onButtonClicked:(text){
                    resText+=text;
                    setState(() {
                    });
                  },),
                  CalculatorButton(text: '/',onButtonClicked:onOperatorClick),
                ],
              ),

            )),
            Expanded(child: Container(
              //color: Colors.pink,
              child:  Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  CalculatorButton(text: '1',onButtonClicked:(text){
                    resText+=text;
                    setState(() {
                    });
                  },),
                  CalculatorButton(text: '2',onButtonClicked:(text){
                    resText+=text;
                    setState(() {
                    });
                  },),
                  CalculatorButton(text: '3',onButtonClicked:(text){
                    resText+=text;
                    setState(() {
                    });
                  },),
                  CalculatorButton(text: '+',onButtonClicked:onOperatorClick),

                ],
              ),

            )),
            Expanded(child: Container(
              //color: Colors.pink,
              child:  Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CalculatorButton(text: '0',onButtonClicked:(text){
                    resText+=text;
                  },),
                  CalculatorButton(text: '=',onButtonClicked:onEqualClick),
                  CalculatorButton(text: '-',onButtonClicked:onOperatorClick),
                  CalculatorButton(text: '.',onButtonClicked:(text){
                    resText+=text;
                  },),

                ],
              ),

            )),

          ],
        )
      );

  }
  String res='';
  String operator='';
  void onOperatorClick(String clickedOperator){
    if(operator.isEmpty){
      res=resText;      //10

      //loop again
    }else { // enter here
      String rhs= resText;   //5
      res= Calculate(res,operator,rhs); /// 10+5

    }
    operator=clickedOperator; //+
    resText='';
    setState(() {

    });
  }


 String Calculate(String res, String operator, String rhs){
        double num1= double.parse(res);
        double num2=double.parse(rhs);
        double result=0;
        if(operator=='+'){
          result=num1 + num2;
        }else if(operator=='-'){
          result= num1 - num2;
        }else if(operator=='*'){
          result=num1 * num2;
        }else{
          result=num1 / num2;
        }
        return result.toString();
  }
 onEqualClick(String text){
    String rhs= resText;
    res=Calculate(res, operator, rhs);
    resText=res;
    res='';
    operator='';
    setState(() {

    });

  }
}