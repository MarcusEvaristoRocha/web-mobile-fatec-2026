import 'dart:io';

void main() {
  stdout.write('Escolha o tipo de combustível:\n'
  '1 - Gasolina comum\n'
  '2 - Gasolina premium\n'
  '3 - Diesel\n'
  '4 - Álcool\n');

  int? tipo = int.tryParse(stdin.readLineSync()!) ?? 0;

  stdout.write('Digite a quantidade de litros: ');
  double? litros = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  String nomeCombustivel = '';
  double preco = 0.0;

  if (tipo == 1) {
    nomeCombustivel = 'Gasolina comum';
    preco = 6.50;
  } else if (tipo == 2) {
    nomeCombustivel = 'Gasolina premium';
    preco = 7.80;
  } else if (tipo == 3) {
    nomeCombustivel = 'Diesel';
    preco = 5.90;
  } else if (tipo == 4) {
    nomeCombustivel = 'Álcool';
    preco = 4.20;
  } else {
    stdout.write('Combustível inválido.\n');
    return;
  }

  double total = litros * preco;

  stdout.write('Tipo de combustível: $nomeCombustivel\n');
  stdout.write('Quantidade de litros: $litros\n');
  stdout.write('Preço unitário: $preco\n');
  stdout.write('Valor total a pagar: $total\n');
}