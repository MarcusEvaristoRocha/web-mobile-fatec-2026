import 'dart:io';

void main() {
  double nota;

  do {
    print('Digite uma nota entre 0 e 10:');
    nota = double.tryParse(stdin.readLineSync()!) ?? 0.0;
  } while (nota < 0 || nota > 10);

  print('Nota válida: $nota');
}