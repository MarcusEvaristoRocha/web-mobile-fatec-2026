import 'dart:io';

void main() {
  stdout.write('Insira um número inteiro: \n');
  int? valor = int.tryParse(stdin.readLineSync()!) ?? 0;

  if (valor > 0){
    for (int i = valor; i >= 0; i--) {
      stdout.write('$i\n');
    } 
  } else {
    stdout.write('Insira um valor maior que 0');
  }
}