import 'personagem.dart';
import 'Guerreiro.dart';
import 'arqueiro.dart';
import 'mago.dart';
import 'globin.dart';
import 'dragao.dart';
import 'listaGenerica.dart';

void main() {
  var guerreiro = Guerreiro('Thoran', 120, 5, 20, 'Armadura 15');
  var arqueiro = Arqueiro('Lia ', 80, 4, 15, 10);
  var mago = Mago('Merlin', 70, 6, 10, 50);
  var goblin = Globin('Gob', 40, 2, 100, 25);
  var dragao = Dragao('Ignis', 200, 10, 1000, 35);

  var combatentes = ListaGenerica<Atacavel>();

  combatentes.adicionar(guerreiro);
  combatentes.adicionar(arqueiro);

  var magos = ListaGenerica<Magico>();

  magos.adicionar(mago);

  var flamejante = ListaGenerica<Flamejante>();

  flamejante.adicionar(dragao);
  flamejante.imprimirItens();

  var personagem = ListaGenerica<Personagem>();

  personagem.adicionar(guerreiro);
  personagem.adicionar(arqueiro);
  personagem.adicionar(mago);
  personagem.adicionar(goblin);
  personagem.adicionar(dragao);

  personagem.imprimirItens();

  print('\n=== Atacando ===');
  for (var c in combatentes.obterItens()) {
    c.atacar(goblin);
  }

  print('\n=== Magia ===');
  for (var m in magos.obterItens()) {
    m.magia(dragao);
  }

  print('\n=== Fogo ===');
  for (var f in flamejante.obterItens()) {
    f.chamas(guerreiro);
  }

  // Estado final
  print('\n=== Estado final ===');
  personagem.imprimirItens(); // toString() de cada um atualizado
}
