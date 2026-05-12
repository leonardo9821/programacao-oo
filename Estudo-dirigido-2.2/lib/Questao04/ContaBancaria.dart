//Crie uma classe ContaBancaria com os atributos titular e saldo, além dos métodos depositar(double valor), sacar(double valor) e exibirSaldo().

class ContaBancaria {
  String titular;
  double _saldo = 0.0;

  ContaBancaria(this.titular);

  void depositar(double valor) {
    if (valor > 0) {
      _saldo += valor;
      print("Depósito de R\$ $valor realizado com sucesso!");
    } else {
      print("Valor inválido para depósito.");
    }
  }

  void sacar(double valor) {
    if (valor > 0 && valor <= _saldo) {
      _saldo -= valor;
      print("Saque de R\$ $valor realizado.");
    } else {
      print("Saldo insuficiente ou valor inválido.");
    }
  }

  void exibirSaldo() {
    print("Titular: $titular | Saldo Atual: R\$ ${_saldo.toStringAsFixed(2)}");
  }

  // Getter
  double get saldo => _saldo;

  // Setter protegido
  set saldo(double novoSaldo) {
    if (novoSaldo >= 0) {
      _saldo = novoSaldo;
    }
  }
}

//Depois, crie uma interface chamada Rentavel, com o método aplicarRendimento().
abstract class Rentavel {
  void aplicarRendimento();
}

//Crie a classe ContaPoupanca, que herda de ContaBancaria e implementa Rentavel.
//A conta poupança deve possuir taxa de rendimento de 1%.
class ContaPoupanca extends ContaBancaria  implements Rentavel{
  double taxaRendimento = 0.01;

  ContaPoupanca(String titular) : super(titular);

  void aplicarRendimento() {
    saldo += saldo * taxaRendimento;

    print("Rendimento de 1% aplicado.");
  }
}
//Crie também a classe ContaCorrente, que herda de ContaBancaria e implementa Rentavel.
//A conta corrente deve possuir taxa de rendimento de 5%. No método aplicarRendimento(), aumente o saldo conforme a taxa da conta.

class ContaCorrente extends ContaBancaria implements Rentavel{
  double taxaRendimento = 0.05;

  ContaCorrente(String titular) : super(titular);

  void aplicarRendimento() {
    saldo += saldo * taxaRendimento;

    print("Rendimento de 5% aplicado.");
  }
}
