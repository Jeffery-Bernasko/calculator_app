import 'package:calculator_app/widgets/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  double? firstNum;
  double? secondNum;
  String? history;
 String? textToDisplay;
  String? tempRes;
  String? operation;

 void btnOnclick(String btnVal){
  if(btnVal == 'C'){
    textToDisplay = '';
    firstNum = 0;
    secondNum = 0;
    tempRes = '';
  } else if(btnVal == 'AC'){
    textToDisplay = '';
    firstNum = 0;
    secondNum = 0;
    tempRes = '';
    history = '';
  }else if(btnVal == '+' || btnVal=='-'|| btnVal=='X'|| btnVal=='/'){
    firstNum = double.parse(textToDisplay!);
    tempRes = '';
    operation = btnVal;
  } else if(btnVal == '='){
    secondNum = double.parse(textToDisplay!);
    if(operation == '+'){
      tempRes = (firstNum! + secondNum!).toString();
      history = firstNum.toString() + operation.toString() +secondNum.toString();
    }
    if(operation == '-'){
      tempRes = (firstNum! - secondNum!).toString();
      history = firstNum.toString() + operation.toString() +secondNum.toString();
    }if(operation == '*'){
      tempRes = (firstNum! * secondNum!).toString();
      history = firstNum.toString() + operation.toString() +secondNum.toString();
    }if(operation == '/'){
      tempRes = (firstNum! / secondNum!).toString();
      history = firstNum.toString() + operation.toString() +secondNum.toString();
    }
  }else{
    tempRes = double.parse(textToDisplay! + btnVal).toString();
  }
  setState(() {
    textToDisplay = tempRes;
  });
 }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:  'Calculator App',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        backgroundColor: Color(0xFF28527a),
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Calculator App"),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    history!,
                    style: GoogleFonts.rubik(
                      fontSize: 25,
                      color: Color(0x66FFFFFF)
                    ),
                  ),
                ),
                alignment: Alignment(1,1),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    textToDisplay!,
                    style: GoogleFonts.rubik(
                      fontSize: 50,
                      color: Colors.white
                    ),
                  ),
                ),
                alignment: Alignment(1.0,1.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: 'AC',
                    fillColor:  0xFFFAFAFA,
                    textColor:   0xFF000000,
                    textSize: 30,
                    callback: btnOnclick,
                    ),
                    CalculatorButton(
                    text: 'C',
                    fillColor:  0xFFFAFAFA,
                    textColor:   0xFF000000,
                    textSize: 30,
                    callback: btnOnclick,),
                    CalculatorButton(
                    text: '<',
                    fillColor:  0xFFfd4160,
                    textColor:   0xFF000000,
                    textSize: 30,),
                    CalculatorButton(
                    text: '/',
                    fillColor:  0xFFfd4160,
                    textColor:   0xFF000000,
                    textSize: 30,
                    callback: btnOnclick)
                ],
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '9',
                     fillColor:  0xFFFAFAFA,
                    textColor:   0xFF000000,
                    textSize: 30,
                    callback: btnOnclick
                    ),
                  CalculatorButton(
                    text: '8',
                     fillColor:  0xFFFAFAFA,
                    textColor:   0xFF000000,
                    textSize: 30,
                    callback: btnOnclick
                    ),
                  CalculatorButton(
                    text: '7',
                     fillColor:  0xFFFAFAFA,
                    textColor:   0xFF000000,
                    textSize: 30,
                    callback: btnOnclick),
                  CalculatorButton(
                    text: 'X',
                    fillColor:  0xFFfd4160,
                    textColor:   0xFF000000,
                    textSize: 30,
                    callback: btnOnclick)
                ],
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '6',
                    fillColor:  0xFFFAFAFA,
                    textColor:   0xFF000000,
                    textSize: 30,
                    callback: btnOnclick),
                  CalculatorButton(
                    text: '5',
                    fillColor:  0xFFFAFAFA,
                    textColor:   0xFF000000,
                    textSize: 30,
                    callback: btnOnclick),
                  CalculatorButton(
                    text: '4',
                    fillColor:  0xFFFAFAFA,
                    textColor:   0xFF000000,
                    textSize: 30,
                    callback: btnOnclick),
                  CalculatorButton(
                    text: '-',
                    fillColor:  0xFFfd4160,
                    textColor:   0xFF000000,
                    textSize: 30,
                    callback: btnOnclick)
                ],
              ) ,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '3',
                     fillColor:  0xFFFAFAFA,
                    textColor:   0xFF000000,
                    textSize: 30,
                    callback: btnOnclick),
                  CalculatorButton(
                    text: '2',
                     fillColor:  0xFFFAFAFA,
                    textColor:   0xFF000000,
                    textSize: 30,
                    callback: btnOnclick),
                  CalculatorButton(
                    text: '1',
                     fillColor:  0xFFFAFAFA,
                    textColor:   0xFF000000,
                    textSize: 30,
                    callback: btnOnclick),
                  CalculatorButton(
                    text: '+',
                    fillColor:  0xFFfd4160,
                    textColor:   0xFF000000,
                    textSize: 30,
                    callback: btnOnclick)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '+/-',
                    fillColor:  0xFFfd4160,
                    textColor:   0xFF000000,
                    textSize: 30,
                    callback: btnOnclick),
                  CalculatorButton(
                    text: '0',
                     fillColor:  0xFFFAFAFA,
                    textColor:   0xFF000000,
                    textSize: 30,
                    callback: btnOnclick),
                  CalculatorButton(
                    text: '.', 
                    fillColor:  0xFFFAFAFA,
                    textColor:   0xFF000000,
                    textSize: 30,
                    callback: btnOnclick),
                  CalculatorButton(
                    text: '=',
                    fillColor:  0xFFfd4160,
                    textColor:   0xFF000000,
                    textSize: 30,
                    callback: btnOnclick)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}