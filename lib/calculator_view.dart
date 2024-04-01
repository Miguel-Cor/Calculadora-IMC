import 'package:calculadora_imc/imc_view.dart';
import 'package:calculadora_imc/user.dart';
import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {



  const CalculatorView({super.key, required this.title,required this.user});

  final User user;

  final String title;

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
final TextEditingController weightController = TextEditingController();
final TextEditingController heightController = TextEditingController();

String imageUrlScales ='https://cdn-icons-png.flaticon.com/512/1668/1668541.png';
 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:  60.0, horizontal: 20),
          child: Column(
            crossAxisAlignment : CrossAxisAlignment.end,
            children: [
              Image.network(
              imageUrlScales, // URL da imagem
               width: 180, // Largura da imagem
               height: 180, // Altura da imagem
                      ),
             const SizedBox(height: 180,),
             SizedBox(
              width:180,
              height: 100,
               child: TextField(
                controller: heightController,
                    decoration: InputDecoration(
                      labelText: 'Altura:',
                      labelStyle: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
             ),        
                          
               
              SizedBox(
                width: 180,
                height: 100,
                child: TextField(
                  controller: weightController,
                  decoration:InputDecoration(labelText: 'Peso:',
                  labelStyle: Theme.of(context).textTheme.headlineMedium, )
                ),
              ),
              const SizedBox(height: 94,),
          
              ElevatedButton(
              onPressed: () {

                 double weight = double.parse(weightController.text);
                  double height = double.parse(heightController.text);
                  double imc = weight / (height * height);

              print('seu imc=$imc');

                      Navigator.push(
                context,
                  MaterialPageRoute(builder: (context) =>  ImcView(user: User(idade: widget.user.idade,altura:height,peso: weight,imc: imc.round().toDouble() ),),
                ),);
                

               
              },
              style: ElevatedButton.styleFrom(
               backgroundColor: Color.fromARGB(255, 182, 0, 0),
               padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                elevation: 10.0, // Propriedade para definir o elevation
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), 
                  // Borda arredondada
                ),
               ),
            
              child: const Text('Carregar',style: TextStyle(fontSize:20,color: Colors.white),),
            ),

            IconButton(onPressed: (){
  Navigator.pop(
   context 
  );
}, 
icon: Icon(Icons.arrow_back)
),
          
            ],
          ),
        ),
      ),
      
    );
  }
}