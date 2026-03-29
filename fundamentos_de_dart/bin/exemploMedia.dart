/*Importação da biblioteca Dart que permite
a exibição, leitura e armazenamento de dados*/
import 'dart:io';

void main(){

  //código de exibição de mensagem no Dart
  stdout.write('Valor 1: ');

  //código de recebimento de dado String no Dart

  //A ? indica ao sistema que o usuário talvez 
  //insira valores nulos
  String? valor1 = stdin.readLineSync();

  //Declara uma variável double, onde o
  //tryParse realiza uma tentativa de converter
  //um valor de um tipo diferente em double,
  //mas caso falhe, retorna um valor que foi previamente
  //definido
  double? v1 = double.tryParse(valor1!) ?? 0.0; //A ! indica ao sistema que será inserida uma
  //verificação, ou seja, "aceita aí temporariamente, que depois eu arrumo",
  //enquanto o ?? define um valor definido, igual a um else if

  stdout.write('\nValor 2: \n');
  //Como realizar a leitura e conversão em apenas uma linha;
  //(Não recomendado dependendo da situação)
  double? v2 = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  double? media = (v1 + v2)/2; //cálculo de média

  //Como imprimir variável:
  stdout.write('Média: $media\n'); //basta usar o $ junto
  //do nome da variável
}