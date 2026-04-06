import 'dart:io';

void main() {
  stdout.write('Digite o consumo mensal em kWh: \n');
  double? consumo = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  double preco = 0.0;

  if (consumo <= 100) {
    preco = 0.80;
  } else if (consumo <= 300) {
    preco = 1.10;
  } else if (consumo <= 500) {
    preco = 1.40;
  } else {
    preco = 1.80;
  }

  double valorBase = consumo * preco;
  double taxaExtra = 0.0;

  if (consumo > 400) {
    taxaExtra = valorBase * 0.10;
  } else {
    taxaExtra = 0.0;
  }

  double valorTotal = valorBase + taxaExtra;

  stdout.write('Consumo mensal: $consumo kWh\n');
  stdout.write('Valor base da conta: $valorBase\n');
  stdout.write('Taxa extra: $taxaExtra\n');
  stdout.write('Valor total da conta: $valorTotal\n');
}