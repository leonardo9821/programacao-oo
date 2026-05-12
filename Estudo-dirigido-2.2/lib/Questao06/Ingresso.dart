//Crie uma classe Ingresso com os atributos evento e valor. V
class Ingresso {
  String evento;
  double valor;

  Ingresso(this.evento, this.valor);

  void exibirResumo() {
    print('Evento,$evento');
    print('Valor do ingresso,$valor');
  }
}

//Depois, crie uma interface chamada Calculavel, com o método double valorFinal().
abstract class Calculavel {
  double valorFinal();
}

//Crie a classe IngressoVip, que herda de Ingresso, adiciona o atributo valorAdicional e implementa Calculavel.v
//O método valorFinal() deve retornar o valor do ingresso somado ao valor adicional.V
class IngressoVip extends Ingresso implements Calculavel {
  double valorAdicional;

  IngressoVip(String evento, double valor, this.valorAdicional)
    : super(evento, valor);

  double valorFinal() {
    return valor + valorAdicional;
  }

  @override
  void exibirResumo() {
    super.exibirResumo();
    print('Valor adicional: $valorAdicional');
    print('Valor Final: ${valorFinal()}');
  }
}

//Crie também a classe IngressoPromocional, que herda de Ingresso e implementa Calculavel.
//Essa classe deve possuir o atributo desconto.
//O método valorFinal() deve retornar o valor do ingresso com o desconto aplicado.

class IngressoPromocional extends Ingresso implements Calculavel {
  double desconto;

  IngressoPromocional(String evento, double valor, this.desconto)
    : super(evento, valor);

  @override
  double valorFinal() {
    return valor - desconto;
  }

  @override
  void exibirResumo() {
    super.exibirResumo();
    print('Desconto: R\$ ${desconto.toStringAsFixed(2)}');
    print('Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}');
  }
}
