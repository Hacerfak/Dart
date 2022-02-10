void printArgs(Object numberToPrint) {
  print('O número é $numberToPrint.');
}

void main(List<String> args) {
  //Preencher o argumento de execução com um inteiro ou float.
  printArgs(args[0]);
}
