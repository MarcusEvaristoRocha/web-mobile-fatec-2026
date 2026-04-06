import 'dart:io';

void main() {
  double salarioFinal = 0;
  double valorDesconto = 0;
  stdout.write('Informe o salário recebido: \n');
  double? salarioInicial = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  if (salarioInicial <= 2000.00) {
    salarioFinal = salarioInicial;
    stdout.write(
      'Isento.\n'
      'Salário bruto: $salarioInicial\n'
      'Valor do Imposto: $valorDesconto\n'
      'Salário líquido (pós desconto): $salarioFinal\n',
    );
    return;
  } else if (salarioInicial > 2000.00 && salarioInicial < 5000.01) {
    valorDesconto = salarioInicial * 0.10;
    salarioFinal = salarioInicial - valorDesconto;
    stdout.write(
      'Imposto de 10%.\n'
      'Salário bruto: $salarioInicial\n'
      'Valor do Imposto: $valorDesconto\n'
      'Salário líquido (pós desconto): $salarioFinal\n',
    );
    return;
  } else if (salarioInicial >= 5000.01 && salarioInicial < 10000.01) {
    valorDesconto = salarioInicial * 0.15;
    salarioFinal = salarioInicial - valorDesconto;
    stdout.write(
      'Isento.\n'
      'Salário bruto: $salarioInicial\n'
      'Valor do Imposto: $valorDesconto\n'
      'Salário líquido (pós desconto): $salarioFinal\n',
    );
    return;
  } else if (salarioInicial > 10000.00) {
    valorDesconto = salarioInicial * 0.20;
    salarioFinal = salarioInicial - valorDesconto;
    stdout.write(
      'Isento.\n'
      'Salário bruto: $salarioInicial\n'
      'Valor do Imposto: $valorDesconto\n'
      'Salário líquido (pós desconto): $salarioFinal\n',
    );
    return;
  } else {
    stdout.write('ERRO DESCONHECIDO\n');
    return;
  }
}
