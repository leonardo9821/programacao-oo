class Aluno {
  String nome;
  double nota1;
  double nota2;

  // Construtor: recebe os valores e já atribui às variáveis
  // Adicionei uma validação simples para a restrição de notas entre 0 e 10
  Aluno(this.nome, this.nota1, this.nota2);

  // Método para calcular a média
  double calcularMedia() {
    return (nota1 + nota2) / 2;
  }

  // Método para verificar aprovação
  String verificarAprovacao() {
    return calcularMedia() >= 6 ? "Aprovado" : "Reprovado";
  }

  // Método para exibir o boletim completo
  void exibirBoletim() {
    print("------------------------------");
    print("Nome: $nome");
    print("Nota 1: ${nota1.toStringAsFixed(1)}");
    print("Nota 2: ${nota2.toStringAsFixed(1)}");
    print("Média: ${calcularMedia().toStringAsFixed(1)}");
    print("Situação: ${verificarAprovacao()}");
  }
}