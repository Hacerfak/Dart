void main(List<String> args) {
  /**
   * Instance variables can be final but not const.
   * Utilize "final" ou "const" para determinar que uma variável num mudará seu valor definido. Uma variável final pode ser setada uma única vez. A variável const é constante durante o tempo de compilação. (Toda variável "const" é implicitamente um variável "final")
   * */

  final name = 'Eder';
  final String apelido = 'Fuinha';
  print('Nome: $name, apelido: $apelido\n');

  const bar = 1000000; // Pressão (dynes/cm2)
  const double atm = 1.01325 * bar; // Atmosfera
  print('Atomosfera: $atm\n');

/** A palavra-chave const não serve apenas para declarar variáveis constantes. 
 * Você também pode usá-lo para criar valores constantes, bem como para declarar construtores que criam valores constantes. 
 * Qualquer variável pode ter um valor constante. */
  var foo = const [];
  final bare = const [];
  const ebom = []; // Equivalente a `const []`

  foo = [1, 2, 3];
  for (var i = 0; i < foo.length; i++) {
    print(foo[i]);
  }

  /** Você pode definir constantes que usam verificações e conversões de tipo (is e as), coleção if e operadores de propagação (... e ...?):  */
  const Object i =
      3; // Onde i é uma variável const do tipo Object com um valor inteiro...
  print('\nObjeto é: $i');
  const list = [i as int]; // Usando um typecast.
  print('A lista é: $list');
  const map = {if (i is int) i: 'int'}; // Usando is e a coleção if.
  print('O map é: $map');
  const set = {if (list is List<int>) ...list};
  print('O set é: $set');
}
