import 'dart:io';

void main() {
  stdout.write(
    'Escolha o alimento desejado: \n'
    '1- Bauru.\n'
    '2- X-Frango.\n'
    '3- Pizza.\n',
  );
  int? alimento = int.tryParse(stdin.readLineSync()!) ?? 0;

  stdout.write(
    'Escolha a bebida desejada: \n'
    '1- Guaraná.\n'
    '2- Água.\n'
    '3- Vinho.\n',
  );
  int? bebida = int.tryParse(stdin.readLineSync()!) ?? 0;

  if (alimento == 1 && bebida != 1) {
    stdout.write('Pedido realizado com sucesso.\n');
    return;
  } else if (alimento == 1 && bebida == 1) {
    stdout.write(
      'O lanche Bauru não pode ser acompanhado de '
      'refrigerantes.\n',
    );
    return;
  }
  if (alimento == 2 && bebida != 2) {
    stdout.write('Pedido realizado com sucesso.\n');
    return;
  } else if (alimento == 2 && bebida == 2) {
    stdout.write(
      'O lanche X-Frango não pode ser acompanhado de '
      'água .\n',
    );
    return;
  }
  if (alimento == 3 && bebida != 1) {
    stdout.write('Pedido realizado com sucesso.\n');
    return;
  } else if(alimento == 3 && bebida == 1){
    stdout.write(
      'A pizza só pode ser acompanhada de vinho '
      'ou água.\n',
    );
    return;
  }
}
