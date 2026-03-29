import 'dart:io';

void main() {
  stdout.write('Digite a distância em metros: ');
  int? metros = int.tryParse(stdin.readLineSync()!) ?? 0;

  int? centimetros = metros * 100;

  stdout.write('\nA distância em centímetros é: $centimetros\n');
}
