//Crie uma classe abstrata Pessoa com os atributos nome e idade. V
//A classe deve possuir construtor e declarar o método abstrato exibirDados(). V
//Depois, crie a classe Aluno, que herda de Pessoa e adiciona os atributos matricula e curso.V 
//Sobrescreva exibirDados() para mostrar todos os dados do aluno. V


abstract  class Pessoa{

String nome;
int idade;


 //contrutor do veiculo

Pessoa(this.nome,this.idade);
void exibirDados(){

print('Nome:$nome');
print('Idade:$idade');

}
}

class Aluno extends Pessoa {
 double matricula;
 String curso; 


 Aluno(String nome, int idade, this.matricula, this.curso) : super(nome, idade );

@override
void exibirDados() {
  
super.exibirDados();
print('Numero da matricula: $matricula');
print('Seu Curso: $curso');
}
}
//Crie também uma nova classe filha chamada Professor, que herda de Pessoa e adiciona os atributos disciplina e salario. 
//Sobrescreva exibirDados() para mostrar todos os dados do professor.

class Professor extends Pessoa{
  
  String diciplina;
  double salario;

  Professor(String nome, int idade, this.diciplina, this.salario) : super(nome, idade );

@override
void exibirDados() {
  
super.exibirDados();
print('Diciplina Ministrada: $diciplina');
print('Salário do Professor: R\$ ${salario.toStringAsFixed(2)}');}
}


