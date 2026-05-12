//Crie uma classe abstrata Pedido com os atributos codigo e valorTotal. V
//A classe deve possuir construtor e declarar o método abstrato exibirPedido().V

abstract class Pedido {
  final int codigo;
  final double valorTotal;

  Pedido(this.codigo, this.valorTotal);

  void exibirPedido();
}

//Depois, crie a classe PedidoDelivery, que herda de Pedido e adiciona os atributos enderecoEntrega e taxaEntrega.
//Sobrescreva exibirPedido() para mostrar código, valor total, endereço de entrega, taxa de entrega e valor final.

class PedidoDelivery extends Pedido {
  final String enderecoEntrega;
  final double taxaEntrega;

  PedidoDelivery(
    int codigo,
    double valorTotal,
    this.enderecoEntrega,
    this.taxaEntrega,
  ) : super(codigo, valorTotal);

  double calcularValorFinal() {
    return valorTotal + taxaEntrega;
  }

  @override
  void exibirPedido() {
    print('Código: $codigo');
    print('Valor Total: R\$ ${valorTotal.toStringAsFixed(2)}');
    print('Endereço: $enderecoEntrega');
    print('Taxa de Entrega: R\$ ${taxaEntrega.toStringAsFixed(2)}');
    print('Valor Final: R\$ ${calcularValorFinal().toStringAsFixed(2)}');
  }
}

//Crie também uma nova classe filha chamada PedidoRetirada, que herda de Pedido e adiciona o atributo nomeCliente.
//Sobrescreva exibirPedido() para mostrar código, valor total e nome do cliente que fará a retirada.
class PedidoRetirada extends Pedido {
  final String nomeCliente;

  PedidoRetirada(int codigo, double valorTotal, this.nomeCliente)
    : super(codigo, valorTotal);

  @override
  void exibirPedido() {
    print('Código: $codigo');
    print('Valor Total: R\$ ${valorTotal.toStringAsFixed(2)}');
    print('Responsavel pela retirada $nomeCliente');
  }
}
