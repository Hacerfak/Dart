void printArgs(int numberToPrint, int position) {
  print('O número do argumento $position é $numberToPrint.');
}

void main(List<String> args) {
  //Preencher o argumento de execução com um inteiro.
  if (args.isEmpty) {
    print(
        'Preencha ao menos um valor númerico valido como argumento. Ex: dart second.dart 5 10 20');
  }

  for (var i = 0; i < args.length; i++) {
    var value = int.tryParse(args[i]);
    if (value == null) {
      print('Nenhum valor númerico válido para o argumento $i.');
    } else {
      printArgs(int.parse(args[i]), i);
    }
  }
}
