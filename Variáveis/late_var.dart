import 'dart:ffi';

/** o modificador 'late" é usado para inidicar um variaável que será inicializada após a declaração ou então para inicializar ela lentamente
   * Isso ocorre por que o Dart as vees não consegue detectar quando uma variável não nulla é setada antes de ser usada. Dois casos comuns são com variáveis de altonível ou variáveis de instância.
   */
late String descricao;

double temperaturaAtual() {
  return 37.5;
}

void main(List<String> args) {
  descricao = 'teste';
  print('A descrição é: $descricao');

  late double temperatura = temperaturaAtual();
  print('A temperatura atual é: $temperatura');
}
