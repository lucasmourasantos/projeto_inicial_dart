void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e cítrica";
  int diasDesdeColheita = 40;
  bool? isMadura = funcEstaMadura(diasDesdeColheita);

  mostrarMadura(nome, sabor, diasDesdeColheita, cor: '$cor');
  int quantosDias = funcQuantosDiasMadura(diasDesdeColheita);
  print('Faltam $quantosDias para a colheita.');

  Fruta fruta02 = Fruta('Uva', 40, "Roxa", "Doce", 20);
  print('Fruta: ${fruta02.nome}');
}

/**
 * TIPOS DE PARÂMETROS
 * 1 - Posicionais Obrigatórios;
 *     - Parâmetro na mesma ordem dos argumentos 
 * 
 * 2 - Nomeados Opcionais;
 *     - Parâmetro cor: "Roxo";
 *     - Argumento {String? cor}
 *     - O parâmetro é recebido direto no argumento cor;
 *     - mostrarMadura({String? nome, int? dias, String? cor}) {
 * 
 * 3 - Parâmetros com "Padrão";
 *     - {String cor = "Sem cor"} 
 * 
 * 4 - Modificador "required".
 *     - Parâmetro obrigatório;
 *     - {required String cor}
 */

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

//função void
mostrarMadura(String? nome, String? sabor, int dias, {required String cor}) {
  if (dias >= 30) {
    print("A $nome é $sabor e está madura.");
  } else {
    print("A $nome é $sabor e não está madura.");
  }

  //print("A $nome é $cor.");
}

int funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = diasParaMadura - dias;
  return quantosDiasFaltam;
}

class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura});

  void estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print('A sua $nome foi colhida a $diasDesdeColheita dias e precisa de'
        ' $diasParaMadura dias para poder comer!'
        'Ela está Madura? $isMadura');
  }

  void fazerSuco() {
    print("Você fez um ótimo suco de $nome");
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print("Este/a $nome pesa $peso gramas e é $cor.");
  }
}

class Legume {
  String nome;
  double peso;
  String cor;
  bool isPrecisaCozinhar;

  Legume(this.nome, this.peso, this.cor, this.isPrecisaCozinhar);

  cozinhar() {
    if (isPrecisaCozinhar) {
      print("Pronto, o $nome está cozinhado!");
    } else {
      print("Nem precisou cozinhar");
    }
  }
}

class Citricas {
  String nome;
  double peso;
  String cor;
  int diasDesdeColheita;
  bool? isMadura;
  double nivelAzedo;

  Citricas(this.nome, this.peso, this.cor, this.diasDesdeColheita,
      this.isMadura, this.nivelAzedo);

  void existeRefri(bool existe) {
    if (existe) {
      print("Existe refri de $nome");
    } else {
      print("Não existe refri de $nome");
    }
  }
}

class Nozes {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diaDesdeColheita;
  bool? isMadura;
  double porcentagemOleoNatural;

  Nozes(this.nome, this.peso, this.cor, this.sabor, this.diaDesdeColheita,
      this.porcentagemOleoNatural);
}
