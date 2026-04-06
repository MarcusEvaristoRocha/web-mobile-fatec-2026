import 'dart:io';

void main() {
  int valor3 = 0;
  int valor2 = 0;
  stdout.write('Digite um número inteiro maior que 0: \n');
  int valor = int.tryParse(stdin.readLineSync()!) ?? 0;

  if (valor <= 0 || (valor / valor) != 1) {
    stdout.write('\nERRO: Digite um número INTEIRO e MAIOR que 0 !\n');
  }

  for (int i = valor; i > 0; i--) {
      valor2 = valor - 1;
  }
  
  valor3 = valor + valor2;
}