import 'CalculatorModel.dart';

class CalculatorController {
  final CalculatorModel model = CalculatorModel();
  String output = "0";

  void buttonPressed(String buttonText) {
    if (buttonText == 'CLEAR') {
      output = "0";
      model.setOperandOne(0);
      model.setOperandTwo(0);
      model.setOperation("");
    } else if ('+-*/'.contains(buttonText)) {
      model.setOperandOne(double.parse(output));
      model.setOperation(buttonText);
      output = "0";
    } else if (buttonText == '=') {
      model.setOperandTwo(double.parse(output));
      output = model.calculate();
      model.setOperandOne(double.parse(output));
    } else {
      if (output == "0") {
        output = buttonText;
      } else {
        output += buttonText;
      }
    }
  }
}