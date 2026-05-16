class ContaBancaria{
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

  double get saldo => _saldo;

  // Setter protegido
  set saldo(double novoSaldo) {
    if (novoSaldo >= 0) {
      _saldo = novoSaldo;
    }
  }

  @override
  String toString() {
    return 'Titular: $titular | Saldo: R\$ ${saldo.toStringAsFixed(2)}';
  }
}

abstract class Rentavel {
  void aplicarRendimento();
}









class ContaInvestimento extends ContaBancaria implements Rentavel{
  double taxaRendimento = 0.08;

  ContaInvestimento(String titular) : super(titular);

  void aplicarRendimento() {
    saldo += saldo * taxaRendimento;

    print("Rendimento de 8% aplicado.");
  }
}