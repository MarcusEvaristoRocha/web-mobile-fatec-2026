import 'dart:io';

void main() {
  String resposta;

  do {
    print('Deseja continuar? (s/n)');
    resposta = stdin.readLineSync()!.toLowerCase();

    if (resposta == 's') {
      print('Continuando...');
    } else if (resposta == 'n') {
      print('Encerrando...');
    } else {
      print('Opção inválida!');
    }

  } while (resposta != 'n');
}