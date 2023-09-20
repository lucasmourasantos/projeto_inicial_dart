void main() {
//Variáveis
/**
 * int: Representa números inteiros (Ex: 1, -20, 3000, -400);
 * double: Representa números de ponto flutuante/decimais (Ex: 1.2, -34.1, 4054,3);
 * string: Representa sequência de caracteres (Ex: "Oi", "Olá mundo!", "DIO");
 * bool: Representa valores booleanos - true ou false;
 * ? - Null Safaty - permite que uma variável seja nula. O compilador aceita essa condição.
 */
  int idade = 26;
  double altura = 1.73;
  String nome = 'Lucas';
  String nomeCompleto = 'Lucas Santos';
  bool? isGeek;
  bool teste = (idade == altura);
  int energia = 100;

  print("Idade: $idade Altura: $altura");

  print(isGeek);

  print('Retorna o valor da comparação'
      'booleana: $teste');

  print('Nome: $nome\n'
      'Sobrenome: $nomeCompleto');

  print(
      '\n<---------- Listas ---------------------------------------------> \n');

  //Listas
  List<String> listanomes = ['Paulo', 'Ana', 'Pedro', 'Alex', 'João'];

  print(listanomes);

  //Acessar um valor específico
  print('Terceiro item da lista: ' + listanomes[2]);

  //Acessar funções de uma lista
  print(listanomes.length);

  //Lista com tipos diferentes de objetos
  List<dynamic> lucca = [31, 1.73, 'Lucas Santos', 'Lucas'];

  List<dynamic> lucca2 = [idade, altura, nomeCompleto, nome];

  String frase = 'Me chamo: ${lucca2[3]}, \n'
      'mas meu nome completo é: ${lucca[2]}. \n'
      'Tenho ${lucca[1]} de altura e \n'
      'minha idade é: ${lucca[0]} anos.';

  print(frase);

  print(
      '\n<---------- Var, Const e Final ---------------------------------------------> \n');

  //Impedem que os valores das variáveis sejam alterados
  /** 
   * CONST vs FINAL
   * #Const não aceita mudar o valor atribuído à variável no momento da declaração;
   * #Final, a variável pode ser declarada vazia e receber o valor posteriormente, daí em diante não pode mais ser aterada.
  */

  //O Dart entende qual o tipo da variável pelo valor atribuído à ela
  var diaDaSemana = 'Segunda';
  var peso = 20;
  print(diaDaSemana);
  print(peso);

  print('\n<---------- LAÇOS --------------------------------------------->');
  print(
      '<---------- IF/ELSE, FOR e WHILE ---------------------------------------------> \n');

  bool maiorDeIdade;

  if (idade >= 18) {
    maiorDeIdade = true;
  } else {
    maiorDeIdade = false;
  }

  print(maiorDeIdade);

  for (var i = 0; i < 5; i++) {
    print('Concluí $i voltas');
  }

  print('\n');

  while (energia > 0) {
    print('Mais uma repetição');
    energia = energia - 20;
  }

  do {
    print("Mais uma repetição");
    energia = energia - 20;
  } while (energia > 0);

  print('\n<---------- COMENTÁRIOS ------'
      '--------------------------->\n');

  //Comentário simples

  /**
   * Comentário de várias linhas.
   * 
   */
}
