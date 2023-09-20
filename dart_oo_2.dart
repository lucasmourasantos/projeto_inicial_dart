void main() {
  Fruta melancia = Fruta('Melancia', 1500.0, 'Verde', 'Doce', 40); // Aula 3.4
  melancia.estaMadura(43);

  Legume legume1 = Legume("Macaxeira", 1200, "Marrom", true);
  Fruta fruta1 = Fruta("Banana", 75, "Amarelo", "Doce", 12);
  Nozes noz1 = Nozes("Amendoim", 3.5, "Marrom", "Doce", 130, 17);
  Citricas citrica1 = Citricas("Laranja", 200, "Laranja", "Azedo", 20, 7);

  legume1.printAlimento();

  fruta1.printAlimento();

  noz1.printAlimento();

  citrica1.printAlimento();

  legume1.cozinhar(); // Funciona

  //fruta1.cozinhar(); // Erro!

  //legume1.fazerSuco(); // Erro!

  fruta1.fazerSuco(); // Funciona!
}

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

class Fruta extends Alimento {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

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

class Legume extends Alimento {
  bool isPrecisaCozinhar;

  Legume(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  cozinhar() {
    if (isPrecisaCozinhar) {
      print("Pronto, o $nome está cozinhado!");
    } else {
      print("Nem precisou cozinhar");
    }
  }
}

class Citricas extends Fruta {
  double nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.nivelAzedo)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  void existeRefri(bool existe) {
    if (existe) {
      print("Existe refri de $nome");
    } else {
      print("Não existe refri de $nome");
    }
  }
}

class Nozes extends Fruta {
  double porcentagemOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.porcentagemOleoNatural)
      : super(nome, peso, cor, sabor, diasDesdeColheita);
}
