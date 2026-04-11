import 'dart:io';

void main() {
  int opcao;

  do {
    print('\nMenu:');
    print('1 - Somar');
    print('2 - Subtrair');
    print('0 - Sair');

    opcao = int.tryParse(stdin.readLineSync()!) ?? 0;

    if (opcao == 1) {
      print('Você escolheu Somar');
    } else if (opcao == 2) {
      print('Você escolheu Subtrair');
    }

  } while (opcao != 0);

  print('Programa encerrado.');
}