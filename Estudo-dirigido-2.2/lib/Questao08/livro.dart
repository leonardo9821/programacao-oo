//Crie uma classe Livro com os atributos titulo e autor.
class Livro {
  String Titulo;
  String Autor;

  Livro(this.Titulo, this.Autor);

  void exibirInformacoes() {
    print('Nome do livro: $Titulo');
    print('Nome do Autor: $Autor');
  }
}

//Depois, crie uma interface chamada Informativo, com o método exibirInformacoes().
abstract class Informativo {
  void exibirInformacoes();
}

//Crie a classe LivroDigital, que herda de Livro, adiciona o atributo tamanhoArquivo e implementa Informativo.V
//No método exibirInformacoes(), mostre o título, o autor e o tamanho do arquivo.V
class LivroDigital extends Livro implements Informativo {
  int tamanho_do_arquivo;

  LivroDigital(String Titulo, String Autor, this.tamanho_do_arquivo)
    : super(Titulo, Autor);

  @override
  void exibirInformacoes() {
    super.exibirInformacoes();
    print('Tamanho do Arquivo: $tamanho_do_arquivo');
  }
}
//Crie também a classe LivroFisico, que herda de Livro e implementa Informativo.
//Essa classe deve possuir o atributo quantidadePaginas.

class LivroFisico extends Livro implements Informativo {
  int QTD_Paginas;

  LivroFisico(String Titulo, String Autor, this.QTD_Paginas)
    : super(Titulo, Autor);

  @override
  void exibirInformacoes() {
    super.exibirInformacoes();
    print('Quantidades de Paginas: $QTD_Paginas paginas');
  }
}
