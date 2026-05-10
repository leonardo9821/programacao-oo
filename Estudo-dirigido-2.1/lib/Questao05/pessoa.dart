//Questão 5
//Crie uma classe Pessoa
//crir nome e idade. 
//Depois, crie uma classe Aluno que herda de Pessoa
//e adiciona matricula e curso. 
//O método exibirDados() deve ser sobrescrito em Aluno.


class Pessoa{

String nome;
int idade;


 //contrutor do veiculo

Pessoa(this.nome,this.idade);
void exibirDados(){

print('Nome,$nome');
print('Idade,$idade');

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


