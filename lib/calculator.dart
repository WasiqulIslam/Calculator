//Development started by Wasiqul Islam at 27/05/2023

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Calculator {
  TextEditingController textEditingController;
  var currentText = "";
  double? lastResult;
  bool resultMode = false;
  String? operator;

  Calculator(this.textEditingController);

  calculate(String character) {
    double? parsedNumber = double.tryParse(character);
    if (parsedNumber != null) {
      if (resultMode) {
        currentText = "";
        currentText += character;
        resultMode = false;
      } else {
        currentText += character;
      }
    } else {
      if (character == "+/-") {
        calculatePlusMinus();
      } else if (character == "%") {
        calculatePercent(character);
      } else if (character == "+") {
        calculateResult(character, "+");
      } else if (character == "-") {
        calculateResult(character, "-");
      } else if (character == "\u00F7") {
        calculateResult(character, "/");
      } else if (character == "\u00D7") {
        calculateResult(character, "*");
      } else if (character == "C") {
        lastResult = null;
        currentText = "";
      } else if (character == "=") {
        calculateEquals();
      } else if (character == ".") {
        addDot();
      }
    }

    textEditingController.text = currentText;
  }

  void calculatePlusMinus() {
    double? parsedNumber = double.tryParse(currentText);
    if (parsedNumber != null) {
      parsedNumber *= -1;
      currentText = parsedNumber.toString();
    }
  }

  void calculatePercent(String character) {
    double? parsedNumber = double.tryParse(currentText);
    if (parsedNumber != null) {
      parsedNumber = parsedNumber / 100.0;
      currentText = parsedNumber.toString();
    }
  }

  void calculateResult(String character, String operatorSign) {
    if (lastResult == null) {
      lastResult = double.tryParse(currentText);
      operator = operatorSign;
      resultMode = true;
    } else if (resultMode == true) {
      operator = operatorSign;
    } else {
      double? currentResult = double.tryParse(currentText);
      if (currentResult != null) {
        double result = 0.0;
        if (operatorSign == "+") {
          result = (lastResult! + currentResult);
        } else if (operatorSign == "-") {
          result = (lastResult! - currentResult);
        } else if (operatorSign == "*") {
          result = (lastResult! * currentResult);
        } else if (operatorSign == "/") {
          result = (lastResult! / currentResult);
        }
        currentText = result.toString();
        lastResult = result;
        resultMode = true;
      } else {
        //CurrentResult cannot be null
        throw Exception("Unexpected scenario.");
      }
    }
  }

  void calculateEquals() {
    if (resultMode == true) {
      return;
    }
    if (operator == null) {
      return;
    }
    if (operator == "+") {
      calculateResult("+", operator!);
      lastResult = null;
    } else if (operator == "-") {
      calculateResult("-", operator!);
      lastResult = null;
    } else if (operator == "/") {
      calculateResult("\u00F7", operator!);
      lastResult = null;
    } else if (operator == "*") {
      calculateResult("\u00D7", operator!);
      lastResult = null;
    }
    //else do nothing
  }

  void addDot() {
    var character = ".";
    if (resultMode == true) {
      currentText = character;
      resultMode = false;
    } else {
      if (!currentText.contains(character)) {
        currentText += character;
      }
      //else do nothing
    }
  }
}
