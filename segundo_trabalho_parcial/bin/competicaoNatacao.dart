import 'dart:io';

void main() {
  double premio = 0;
  stdout.write('\nDigite a distância percorrida pelo nadador: ');
  double? distancia = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  if (distancia < 800) {
    premio = 5000.00;
  } else if (distancia >= 800 && distancia <= 1500) {
    premio = 10000.00;
  } else if (distancia > 1500) {
    premio = 15000.00;
  }

  stdout.write('O valor da premiação será de: $premio\n');
  return;
}
