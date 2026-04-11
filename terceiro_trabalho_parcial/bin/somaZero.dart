import 'dart:io';

void main() {
  int numero = -1;
  int soma = 0;
  int contador = 0;

  while (numero != 0) {
    print('Digite um número (0 para parar):');
    numero = int.tryParse(stdin.readLineSync()!) ?? 0;

    if (numero != 0) {
      soma += numero;
      contador++;
    }
  }

  print('Soma: $soma');
  print('Quantidade: $contador');
}