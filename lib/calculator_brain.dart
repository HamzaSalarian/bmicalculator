import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final double weight;
  double _bmi = 0.0;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);

    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5 && _bmi < 25) {
      return 'Normal';
    } else
      return 'UnderWeight';
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a Higher BMI. Exercise more.';
    } else if (_bmi >= 18.5 && _bmi < 25) {
      return 'You have a Normal BMI. Maintain this.';
    } else
      return 'You have a Lower BMI. Eat more.';
  }
}
