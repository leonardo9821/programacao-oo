//Crie uma classe Dispositivo com marca, modelo e método ligar().

class Dispositivo {
  String marca;
  String modelo;

  Dispositivo(this.marca, this.modelo);

  void metodoLigar() {
    print('Marca do Smartphone, $marca');
    print('Modelo do Smartphone, $modelo');
  }
}
//Depois, crie uma classe Smartphone que herda de Dispositivo e adiciona sistemaOperacional. 
//Sobrescreva o método  ligar() para mostrar uma mensagem específica.

class Smartphone extends Dispositivo {
  
  String sistemaOperacional;

  Smartphone(String marca, String modelo, this.sistemaOperacional):super(marca,modelo);

   

  @override
  void metodoLigar() {
  super.metodoLigar();
  print('Meu Iphone é melhor que seu android');

}
}