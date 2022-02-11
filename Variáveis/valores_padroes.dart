import 'dart:typed_data';

int contarLinha() {
  int linhaAtual = 0;
  return ++linhaAtual;
}

void main(List<String> args) {
  //variável criada sem inicializar, quando a opção de NullSafety esta habilitada.
  int? linhas;

  /*A função assert() apenas é utilizada para o desenvolvimento, na build de produção ela não é executada.
  essa função lança uma exceção duranti a execução. */
  assert(linhas == null);
  print('Valor atual da variável linhas: $linhas');

  //Se usar Nullsafety, devemos inicializar as variáveis.
  int numLinhas = 7;
  print('Quantidade de linhas: $numLinhas');

  //Não é necessário inicializar uma variável local ao criá-la, mas ela deve ser inicializada antes de usá-la.
  int qtdLinhas;
  qtdLinhas = contarLinha();
  print('Linhas contadas: $qtdLinhas');
}
