class CalculatorModel {
  double? _operandTwo;
  double? _operandOne;
  String? _operation;

  void setOperation(String operation) {
    _operation = operation;
  }

  void setOperandOne(double num) {
    _operandOne = num;
  }

  void setOperandTwo(double num) {
    _operandTwo = num;
  }

  String calculate() {
    double result = 0;
    switch (_operation) {
      case '+':
        result = _operandOne! + _operandTwo!;
        break;
      case '-':
        result = _operandOne! - _operandTwo!;
        break;
      case '*':
        result = _operandOne! * _operandTwo!;
        break;
      case '/':
        if (_operandTwo != 0) {
          result = _operandOne! / _operandTwo!;
        } else {
          return "Error";
        }
        break;
      default:
        return "Invalid operation";
    }
    return result.toStringAsFixed(2);
  }
}