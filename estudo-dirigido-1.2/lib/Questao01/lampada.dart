class Lampada {
  //lampada ligada é true  desligada é false 

  bool _ligada = false ; 

  int _intensidade =50;
  
  Lampada (){
    _ligada = false;
    _intensidade = 50;
  }

//a lampada começa desligada , tenho que fazer ela passar para ligada , conseguir alterar a intencidade e exbir estes resultados 
  void ligar() {
    _ligada = true;
  }
  void desligar(){
    _ligada = false;
  }
  void aumentar() {
     if(_intensidade >=0) {
      _intensidade --;
    }

  }
  void diminuir() {
    if(_intensidade >0) {
      _intensidade++;
    }

  }
    void exibirEstado() {
    print("Ligada: $_ligada");
    print("Intensidade: $_intensidade");
  }

}