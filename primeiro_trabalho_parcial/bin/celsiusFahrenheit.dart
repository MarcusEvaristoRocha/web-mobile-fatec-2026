import 'dart:io';

void main() {
  stdout.write('Digite a temperatura em Celsius: ');
  double? celsius = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  double? fahrenheit = (celsius * 1.8) + 32;

  stdout.write('\nA temperatura em Fahrenheit é: $fahrenheit\n');
}
