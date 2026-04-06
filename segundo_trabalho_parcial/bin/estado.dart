import 'dart:io';

void main() {
  stdout.write('Digite o nome de um estado brasileiro' 
  '(sem apontuação e minúsculo):');
  String? estado = stdin.readLineSync();

  if (estado == null) {
    stdout.write('Estado não reconhecido.\n');
    return;
  }

  if (
      estado == 'acre' ||
      estado == 'amapa' ||
      estado == 'Amazonas' ||
      estado == 'para' ||
      estado == 'rondonia' ||
      estado == 'roraima' ||
      estado == 'tocantins') {
    stdout.write('Região Norte\n');
  } else if (
      estado == 'alagoas' ||
      estado == 'bahia' ||
      estado == 'ceara' ||
      estado == 'maranhao' ||
      estado == 'paraiba' ||
      estado == 'pernambuco' ||
      estado == 'piaui' ||
      estado == 'rio grande do norte' ||
      estado == 'sergipe') {
    stdout.write('Região Nordeste\n');
  } else if (
      estado == 'goias' ||
      estado == 'mato grosso' ||
      estado == 'mato grosso do sul' ||
      estado == 'distrito federal') {
    stdout.write('Região Centro-Oeste\n');
  } else if (
      estado == 'espirito santo' ||
      estado == 'minas gerais' ||
      estado == 'rio de janeiro' ||
      estado == 'sao paulo') {
    stdout.write('Região Sudeste\n');
  } else if (
      estado == 'parana' ||
      estado == 'rio grande do sul' ||
      estado == 'santa catarina') {
    stdout.write('Região Sul\n');
  } else {
    stdout.write('Estado não reconhecido.\n');
    return;
  }
  return;
}
