import 'dart:io';

void main() {
  double valorFinal = 0;
  double valorInicial = 0;
  stdout.write(
    'Informe o código do alimento/bebida desejado(a): \n'
    'Cachorro Quente - 101 | Preço: 14,20 reais\n'
    'Bauru Simples - 102 | Preço: 12,30 reais\n'
    'Bauru com Ovo - 103 | Preço: 13,50 reais\n'
    'Hambúrguer - 104 | Preço: 10,20 reais\n'
    'Cheeseburguer - 105 | Preço: 15,30 reais\n'
    'Refrigerante - 106 | Preço: 10,00 reais\n',
  );
  int? codLanche = int.tryParse(stdin.readLineSync()!) ?? 0;

  if (codLanche == 101) {
    valorInicial = 14.20;
  } else if (codLanche == 102) {
    valorInicial = 12.30;
  } else if (codLanche == 103) {
    valorInicial = 13.50;
  } else if (codLanche == 104) {
    valorInicial = 10.20;
  } else if (codLanche == 105) {
    valorInicial = 15.30;
  } else if (codLanche == 106) {
    valorInicial = 10.00;
  }
  if (codLanche > 100 && codLanche < 107) {
    stdout.write('Informe a quantidade do alimento desejado: \n');
    int? quantAlimento = int.tryParse(stdin.readLineSync()!) ?? 0;

    valorFinal = valorInicial * quantAlimento;

    stdout.write('O valor a ser pago é de: $valorFinal\n');
    return;
  } else {
    stdout.write('Código do lanche inválido\n\n');
    return;
  }
}
