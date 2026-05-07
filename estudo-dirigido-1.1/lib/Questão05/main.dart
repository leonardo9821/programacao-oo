
import 'Aluno.dart'; 

void main() {
  // Criando uma lista com 10 instâncias de Aluno
  List<Aluno> alunos = [
    Aluno("Leonardo", 8.5, 7.0),
    Aluno("Ana", 5.0, 6.0),
    Aluno("Carlos", 9.0, 10.0),
    Aluno("Bia", 4.5, 5.5),
    Aluno("Ricardo", 7.0, 6.5),
    Aluno("Julia", 3.0, 8.0),
    Aluno("Bruno", 6.0, 6.0),
    Aluno("Sophia", 10.0, 9.5),
    Aluno("Diego", 2.0, 4.0),
    Aluno("Elena", 7.5, 8.5),
  ];

  print("=== BOLETIM DA TURMA - UNIVERSIDADE TUIUTI ===");
  
  // Percorre a lista e chama o método de exibir para cada um
  for (var aluno in alunos) {
    aluno.exibirBoletim();
  }
}