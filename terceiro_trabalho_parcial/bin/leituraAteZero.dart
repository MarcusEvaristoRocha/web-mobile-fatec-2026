import 'dart:io';

void main() {
  String palavra = '';
  int contador = 0;

  while (palavra != 'sair') {
    print('Digite uma palavra ("sair" para parar):');
    palavra = stdin.readLineSync()!;

    if (palavra != 'sair') {
      contador++;
    }
  }

  print('Quantidade de palavras digitadas: $contador');
}