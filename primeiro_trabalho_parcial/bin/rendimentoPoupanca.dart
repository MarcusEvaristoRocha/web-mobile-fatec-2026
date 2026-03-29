import 'dart:io';

void main() {
  stdout.write('Digite o valor inserido na poupança: ');
  double? capital = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  double? valorPosJuros = capital * 0.005 * 1;
  double? valorFinal = capital + valorPosJuros;

  stdout.write(
    '\nO valor final, após um mês de'
    '\njuros com 0,5% de rendimento'
    '\nao mês é de: $valorFinal\n',
  );
}
