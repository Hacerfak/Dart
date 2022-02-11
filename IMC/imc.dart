void main(List<String> args) {
  if (args.isEmpty) {
    print(
        'Informe nos argumentos sua altura em centímetros e peso em quilos. \n\nEx: dart imc.dart 186 79.7');
    return;
  }
  for (var i = 0; i < args.length; i++) {
    var value = double.tryParse(args[i]);
    if (value == null || args.length < 2) {
      print(
          'Você não inseriu um valor válido para o cálculo. \n\nEx: dart imc.dart 186 79.7');
      return;
    }
  }

  double altura = double.parse(args[0]);
  double peso = double.parse(args[1]);

  double IMC = (peso / ((altura * altura) / 10000));

  print('Seu IMC é: $IMC\n');

  if (IMC >= 40) {
    print('Vocẽ está com obessidade grau III');
  } else if (IMC >= 35) {
    print('Vocẽ está com obessidade grau II');
  } else if (IMC >= 30) {
    print('Vocẽ está com obessidade grau I');
  } else if (IMC >= 25) {
    print('Vocẽ está com Sobrepeso.');
  } else if (IMC >= 18.5) {
    print('Vocẽ está com peso normal.');
  } else {
    print('Vocẽ está com o peso abaixo do normal.');
  }
}
