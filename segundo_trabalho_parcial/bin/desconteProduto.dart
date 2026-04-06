import 'dart:io';

void main() {
  double precoFinal = 0;

  stdout.write('Informe o valor do produto: \n');
  double? precoProduto = double.tryParse(stdin.readLineSync()!) ?? 0.0;
  stdout.write(
    'Informe o código de origem:\n'
    '1- Região Norte: 5% de desconto.\n'
    '2- Região Sul: 15% de desconto.\n'
    '3- Região Sudeste: 7% de desconto.\n'
    '4- Região Nordeste: 12% de desconto.\n'
    '5- Região Centro-Oeste: 20% de desconto.\n',
  );
  int? codigoOrigem = int.tryParse(stdin.readLineSync()!) ?? 0;

  if (codigoOrigem == 1) {
    precoFinal = (precoProduto * 0.05) + precoProduto;
  } else if (codigoOrigem == 2) {
    precoFinal = (precoProduto * 0.15) + precoProduto;
  } else if (codigoOrigem == 3) {
    precoFinal = (precoProduto * 0.07) + precoProduto;
  } else if (codigoOrigem == 4) {
    precoFinal = (precoProduto * 0.12) + precoProduto;
  } else if (codigoOrigem == 5) {
    precoFinal = (precoProduto * 0.2) + precoProduto;
  } else {
    stdout.write(
      'Código inválido.\n'
      'Produto importado.\n'
      'Não aplicando nenhum desconto.\n',
    );
    precoFinal = precoProduto;
  }

  stdout.write('O valor final do produto será de: $precoFinal\n');
  return;
}
