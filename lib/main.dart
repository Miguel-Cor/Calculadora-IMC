import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Calculadora de IMC'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  String imageUrlScales ='https://cdn-icons-png.flaticon.com/512/1668/1668541.png';
 
  @override
  Widget build(BuildContext context) {
        
    return Scaffold(
      appBar: AppBar(
        
      automaticallyImplyLeading:false,
        
        backgroundColor: Theme.of(context).colorScheme.secondary,
        
        
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:  60.0, horizontal: 20),
          child: Column(
            crossAxisAlignment : CrossAxisAlignment.end,
            children: [
              Image.network(
              imageUrlScales, // URL da imagem
               width: 150, // Largura da imagem
               height: 150, // Altura da imagem
                      ),
             const SizedBox(height: 150,),
             SizedBox(
              width:150,
              height: 150,
               child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Altura:',
                      labelStyle: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
             ),        
                          
               
              SizedBox(
                width: 150,
                height: 150,
                child: TextField(
                  decoration:InputDecoration(labelText: 'Peso:',
                  labelStyle: Theme.of(context).textTheme.headlineMedium, )
                ),
              ),
          
              ElevatedButton(
              onPressed: () {
                // Ação do botão
              },
              style: ElevatedButton.styleFrom(
               
                elevation: 20.0, // Propriedade para definir o elevation
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), // Borda arredondada
                ),
               ),
            
              child: const Text('Carregar'),
            ),
          
            ],
          ),
        ),
      ),
      
    );
  }
}
