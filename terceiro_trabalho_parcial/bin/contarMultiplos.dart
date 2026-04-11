import 'dart:io';

void main() {
  print('Digite o valor N:');
  int n = int.tryParse(stdin.readLineSync()!) ?? 0;

  print('Digite k:');
  int k = int.tryParse(stdin.readLineSync()!) ?? 0;

  int contador = 0;

  for (int i = 1; i <= n; i++) {
    if (i % k == 0) {
      contador++;
    }
  }

  print('A quantidade de múltiplos de $k entre 1 e $n é: $contador');
}