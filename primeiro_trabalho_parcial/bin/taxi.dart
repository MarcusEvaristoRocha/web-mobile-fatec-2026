import 'dart:io';

void main() {
  stdout.write('Digite o valor inicial do hodômetro: ');
  double? hodometroInicial = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  stdout.write('\nDigite o valor final do hodômetro: ');
  double? hodometroFinal = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  stdout.write('\nDigite a quantidade, em litros, de combustível consumido: ');
  double? combustivelUsado = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  stdout.write('\nDigite o valor total recebido dos passageiros: ');
  double? totalRecebido = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  double? distanciaPercorrida = hodometroFinal - hodometroInicial;
  double? mediaConsumoCombustivel = distanciaPercorrida / combustivelUsado;
  double? valorGastoCombustivel = combustivelUsado * 6.50;
  double? lucroLiquidoDia = totalRecebido - valorGastoCombustivel;

  stdout.write(
    '\nA média de consumo de combustível é de: $mediaConsumoCombustivel',
  );
  stdout.write('\nEnquanto o lucro líquido do dia é de: $lucroLiquidoDia\n');
}
