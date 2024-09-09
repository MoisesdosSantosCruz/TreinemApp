import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar( 
            toolbarHeight: 50, //Altura da Bar
            centerTitle: true, //Centralizar o título
          title:  const Text('Editais'),
          foregroundColor: Colors.white, //Fonte branca
          backgroundColor: const Color.fromARGB(255, 255, 8, 0), //AppBar vermelha
           shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                   ),
                    ),
      //No body será colocado as imagens das editais
        body: Center( 
                  child: Column( 
                   mainAxisAlignment: MainAxisAlignment.center, //Alinhamento centralizado
                    children: <Widget>[
                     const SizedBox(height: 16), //Espaço entre a Container da AppBar 
            Container(                        
                clipBehavior: Clip.antiAlias, //Aplica bordas mais suaves a BoxDecoration
                  decoration:  BoxDecoration( //Decoração da "Caixa"
                    borderRadius: BorderRadius.circular(50) // Ajustar o tamanho radial do circulo
                  ),
                    child: Image.asset('img/Enem.jpeg',
                    width: 300,
                    height: 200,
                    
                    fit: BoxFit.cover, //Envolver a caixa
                  ),
                  
            ), 
            const SizedBox(height:16),
                Container( 
                  clipBehavior: Clip.antiAlias,
                  decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(50) //Espaço entre a Container da AppBar 
               ),
                child: Image.asset('img/Fuvest.jpeg',
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
              ),
            ),
              const SizedBox(height: 16), //Espaço entre a container e o botão
               SizedBox(height: 50, //Altura e largura do botão
                        width: 150,
                      child: ElevatedButton(
                  // Define o estilo do ElevatedButton
                  style: ElevatedButton.styleFrom( //Estilo do botão
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 255, 8, 0), // Cor do texto
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30), // Bordas arredondadas
                      ),
                      textStyle: const TextStyle(fontSize: 15)), // Tamanho da fonte
                  // Define a ação ao pressionar o botão
                  onPressed: () {
                    // Navega para a página MainApp
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MainApp()),
                    );
                  },
                  // Texto do botão
                  child: const Text("Voltar"),
                ),
         ),
            ],
          ),
        ),
      ),
    );
  }
}
