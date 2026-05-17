import 'carro.dart';
import 'moto.dart';
import 'caminhao.dart';
import 'Fichavel.dart';
import 'listaGenerica.dart';

void main() {
  var carro01 = Carro('Toyota', 'Corolla', 2022, 'Carro', '4 portas');
  var carro02 = Carro('Honda', 'Civic', 2021, 'Carro', '4 portas');
  var moto01 = Moto('Yamaha', 'Fazer', 2020, 'Moto', '250 Cilindradas');
  var moto02 = Moto('Honda', 'Biz', 2020, 'Moto', '125 Cilindraqdas ');
  var caminhao = Caminhao('Volvo', 'FH', 2019, 'Caminhão ', '12 Toneladas');

  var veiculo = ListaGenerica<Fichavel>();
  veiculo.adicionar(carro01);
  veiculo.adicionar(carro02);
  veiculo.adicionar(moto01);
  veiculo.adicionar(moto02);
  veiculo.adicionar(caminhao);

  //veiculo.imprimirItens(); -> porque precisso colocar ele se vai repetir duas vezes 

  for (var veiculo in veiculo.itens) {
    veiculo.exibirFicha();
  }
}
