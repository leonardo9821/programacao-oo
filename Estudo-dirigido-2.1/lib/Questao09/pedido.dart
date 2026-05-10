//Crie uma classe Pedido com codigo, valorTotal e método exibirPedido().
//Depois, crie uma classe PedidoDelivery que herda de Pedido e adiciona enderecoEntrega e taxaEntrega.
//Crie um método calcularValorFinal().

class Pedido {
  int codigo;
  double valorTotal;

  Pedido(this.codigo, this.valorTotal);

  void exibirPedido() {
    print('Exibir seu codigo, $codigo');
    print('Valor Total, R\$ ${valorTotal.toStringAsFixed(2)}');
  }
}

//Depois, crie uma classe PedidoDelivery que herda de Pedido e adiciona enderecoEntrega e taxaEntrega.
//Crie um método calcularValorFinal().

class PedidoDelivery extends Pedido {
  String enderecoEntrega;
  double taxaEntrega;

  PedidoDelivery(
    int codigo,double valorTotal,this.enderecoEntrega,this.taxaEntrega,):super(codigo, valorTotal);

  double calcularValorFinal() {
    return valorTotal + taxaEntrega;
  }

  @override
  void exibirPedido() {
    super.exibirPedido();
    print('Valor Final: R\$ ${calcularValorFinal().toStringAsFixed(2)}');
  }
}
